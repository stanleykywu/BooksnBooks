from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


authors = Blueprint("authors", __name__)

# Add author to DB
@authors.route("/new_author", methods=["POST"])
def add_author():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    username = request.form["username"]
    password = request.form["password"]
    first_name = request.form["first_name"]
    last_name = request.form["last_name"]
    query = f'INSERT INTO Author(username, password, first_name, last_name) VALUES("{username}", "{password}", "{first_name}", "{last_name}")'
    cursor.execute(query)
    db.get_db().commit()

    return "Success!"

# Get all books that particular author has written
@authors.route("/authors/<username>/<password>", methods=["GET"])
def get_author_books(username, password):
    cursor = db.get_db().cursor()
    cursor.execute(f'SELECT title AS "Your_Books" from Book NATURAL JOIN Author WHERE username = "{username}" AND password = "{password}"')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = "application/json"
    return the_response

