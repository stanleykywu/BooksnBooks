from flask import Blueprint, request, jsonify, make_response
import json
from src import db


authors = Blueprint("authors", __name__)


# Get all books that particular author has written
@authors.route("/authors/<authorID>", methods=["GET"])
def get_author_books(authorID):
    cursor = db.get_db().cursor()
    cursor.execute(f"SELECT * from Book where author_id = {authorID} LIMIT 5")
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = "application/json"
    return the_response

