from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


customers = Blueprint("customers", __name__)

# Add customer to DB
@customers.route("/new_customer", methods=["POST"])
def add_customer():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    username = request.form["username"]
    password = request.form["password"]
    dob = request.form["dob"]
    email = request.form["email"]
    phone = request.form["phone"]
    first_name = request.form["first_name"]
    last_name = request.form["last_name"]
    query = f'INSERT INTO Customer(username, password, dob, email, phone, first_name, last_name) VALUES("{username}", "{password}", "{dob}", "{email}", "{phone}", "{first_name}", "{last_name}")'
    cursor.execute(query)
    db.get_db().commit()

    return "Success!"


# Get all books that a customer has bought
@customers.route("/customers/<username>/<password>", methods=["GET"])
def get_customer_books(username, password):
    cursor = db.get_db().cursor()
    cursor.execute(
        f'SELECT title AS "Your Books" from Invoice \
            NATURAL JOIN Customer NATURAL JOIN InvoiceLine NATURAL JOIN Book \
            WHERE username = "{username}" AND password = "{password}"'
    )
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = "application/json"
    return the_response


# Add new book to cart
@customers.route("/new_book_to_cart", methods=["POST"])
def add_book_to_cart():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    username = request.form["username"]
    isbn = request.form["isbn"]
    library_name = request.form["library_name"]
    quantity = request.form["quantity"]
    # let "1001-01-01" be the "null" default date
    # date and total are populated once the customer checks out
    invoice_query = f'SELECT invoice_id FROM Customer NATURAL JOIN Invoice \
        WHERE date = "1001-01-01" AND username = "{username}"'
    cursor.execute(invoice_query)
    theData = cursor.fetchall()
    if theData == ():
        invoice_query = f'INSERT INTO Invoice (date, total, customer_id) \
            VALUES("1001-01-01", 0, (SELECT customer_id FROM Customer WHERE username = "{username}" LIMIT 1))'
        cursor.execute(invoice_query)

    discount_query = f'SELECT discount FROM AuthorPartner NATURAL JOIN Library \
        WHERE name = "{library_name}" LIMIT 1'
    cursor.execute(discount_query)
    discount_data = cursor.fetchall()
    print(f"DISCOUNT DATA: {discount_data}")
    discount = 0
    if discount_data != ():
        discount = discount_data[0][0]

    line_query = f'INSERT INTO InvoiceLine (invoice_id, price_per_unit, quantity, isbn) \
        VALUES((SELECT invoice_id FROM Customer NATURAL JOIN Invoice \
            WHERE date = "1001-01-01" AND username = "{username}" LIMIT 1), \
            (SELECT price FROM Book WHERE isbn = "{isbn}" LIMIT 1) * (1 - {discount}), \
            {quantity}, "{isbn}")'
    cursor.execute(line_query)
    db.get_db().commit()
    return "Success!"

@customers.route("/checkout", methods=["PATCH"])
def checkout_cart():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    username = request.form["username"]
    # date and total are populated once the customer checks out
    total_query = f'SELECT SUM(price_per_unit * quantity) FROM InvoiceLine \
        WHERE invoice_id = (SELECT invoice_id FROM Customer NATURAL JOIN Invoice \
            WHERE date = "1001-01-01" AND username = "{username}" LIMIT 1)'
    cursor.execute(total_query)
    theData = cursor.fetchall()
    print(theData)
    if theData != ():
        invoice_query = f'UPDATE Invoice \
            SET date = CURDATE(), total = {theData[0][0]}\
            WHERE date = "1001-01-01" AND \
                customer_id = (SELECT customer_id FROM Customer WHERE username = "{username}" LIMIT 1)'
        cursor.execute(invoice_query)
        db.get_db().commit()
        return "Success!"
    return "Failure"



@customers.route("/invoice/<invoice_id>", methods=["GET"])
def view_invoice(invoice_id):
    cursor = db.get_db().cursor()
    cursor.execute(
        f'SELECT price_per_unit AS "Price per Unit", quantity as "Quantity", isbn as "ISBN" FROM Invoice NATURAL JOIN InvoiceLine WHERE invoice_id = {invoice_id}'
    )
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = "application/json"
    return the_response
