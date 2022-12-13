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
@customers.route("/customers/<customerUsername>", methods=["GET"])
def get_customer_books(customerUsername):
    cursor = db.get_db().cursor()
    cursor.execute(
        f"SELECT * from Invoice where username = {customerUsername} NATURAL JOIN InvoiceLine NATURAL JOIN Book"
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
