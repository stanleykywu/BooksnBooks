from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


customers = Blueprint("customers", __name__)

# Get all customers from the DB
@customers.route("/customers", methods=["GET"])
def get_customers():
    cursor = db.get_db().cursor()
    cursor.execute("SELECT * FROM Customer")
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = "application/json"
    return the_response


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
    query = f'SELECT invoice_id FROM Customer NATURAL JOIN Invoice WHERE date = "1001-01-01" AND username = "{username}"'
    cursor.execute(query)
    theData = cursor.fetchall()
    noCartExists = theData == ()
    print(f'CART EXISTS: {noCartExists}')
    if theData == ():
        invoice_query = f'INSERT INTO Invoice (date, total, customer_id) \
            VALUES("1001-01-01", 0, (SELECT customer_id FROM Customer WHERE username = "{username}" LIMIT 1))'
        cursor.execute(invoice_query)

    # TODO: add support for price_per_quantity, consider adding quantity field
    line_query = f'INSERT INTO InvoiceLine (invoice_id, price_per_unit, quantity, isbn) \
        VALUES((SELECT invoice_id FROM Customer NATURAL JOIN Invoice \
            WHERE date = "1001-01-01" AND username = "{username}" LIMIT 1), \
            1, {quantity}, "{isbn}")'
    cursor.execute(line_query)
    db.get_db().commit()
    return "Success!"
