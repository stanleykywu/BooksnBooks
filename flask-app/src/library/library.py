from flask import Blueprint, request, jsonify, make_response
import json
from src import db


libraries = Blueprint("libraries", __name__)


# Get all books that particular author has written
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


# Get all books of a library
@libraries.route("/libraries/<libraryID>", methods=["GET"])
def get_inventory(libraryID):
    cursor = db.get_db().cursor()
    cursor.execute(
        f"SELECT * from BookInventory WHERE Library_ID = {libraryID} NATURAL JOIN Book"
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
