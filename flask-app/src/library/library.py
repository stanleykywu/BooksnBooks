from flask import Blueprint, request, jsonify, make_response
import json
from src import db


libraries = Blueprint("libraries", __name__)


# Get all libraries in a country and town
@libraries.route("/library_search/<country>/<town>", methods=["GET"])
def get_libraries(country, town):
    cursor = db.get_db().cursor()
    cursor.execute(
        f'SELECT name AS "Results" from Library WHERE country = "{country}" AND town = "{town.replace("+", " ")}"'
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


# Get all libraries
@libraries.route("/libraries", methods=["GET"])
def get_bookstores():
    cursor = db.get_db().cursor()
    cursor.execute(f"SELECT * from Library")
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = "application/json"
    return the_response


# Search for books of a library
@libraries.route(
    "/book_catalog/<library_name>/<title>/<author_first>/<author_last>", methods=["GET"]
)
def get_inventory(library_name, title, author_first, author_last):
    title_filter = (
        f' AND title = "{title.replace("+", " ")}"' if title != "undefined" else ""
    )
    fname_filter = (
        f' AND first_name = "{author_first.replace("+", " ")}"'
        if author_first != "undefined"
        else ""
    )
    lname_filter = (
        f' AND last_name = "{author_last.replace("+", " ")}"'
        if author_last != "undefined"
        else ""
    )

    cursor = db.get_db().cursor()
    cursor.execute(
        f'SELECT isbn as "ISBN", title AS "Title", quantity AS "Number in Stock"  from BookInventory NATURAL JOIN Author NATURAL JOIN Book WHERE library_id = (SELECT library_id FROM Library WHERE name = "{library_name.replace("+", " ")}" LIMIT 1)'
        + title_filter
        + fname_filter
        + lname_filter
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
