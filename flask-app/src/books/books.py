from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


books = Blueprint("books", __name__)


# Get reviews of a particular book
@books.route("/book/<isbn>", methods=["GET"])
def get_book_reviews(isbn):
    cursor = db.get_db().cursor()
    cursor.execute(
        f"SELECT review_content AS 'Review Content', review_stars AS 'Stars' FROM BookReview WHERE isbn = {isbn}"
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


# Add new book reivew to DB
@books.route("/new_review", methods=["POST"])
def add_book_review():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    username = request.form["username"]
    isbn = request.form["isbn"]
    review_content = request.form["review_content"]
    review_stars = request.form["review_stars"]
    query = f'INSERT INTO BookReview (customer_id, isbn, review_content, review_stars) \
        VALUES((SELECT customer_id FROM Customer WHERE username = "{username}" LIMIT 1), \
            "{isbn}", "{review_content}", "{review_stars}")'
    cursor.execute(query)
    db.get_db().commit()

    return "Success!"
