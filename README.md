# BooksnBooks Database and REST api

This repository allows one to host their own REST api for an online library/bookstore management system locally. Examples of possible actions include customers buying books, and viewing available books in libraries. This project's goal is to develop a stronger connection between readers, authors, and libraries while maintaining a centralized location for book distribution.

A demonstration of this project running on AppSmith can be found here: https://drive.google.com/file/d/1syR69w59enBVpXAvNe561VRHgtfOYR5k/view?usp=sharing

This project is meant to support three personas:

1. Customer
This persona represents a user of this applciation who wants to read and review books. Our project allows these users to purchase books from libraries and write a review for any book. At any time, a customer can log in to view the books they own or enter an invoice to check the receipts they have accumulated.
2. Author
This persona represents an author who writes books. At any point, an author is able to log in and view the books that they have written. An author can also request a partnership with a library, which allows them to sell their books at a discounted price.
3. Library
This persona represents libraries where users purchase books from. Each library has a name, location (town and country), and inventory of books that they own. Users can look up libraries and view their book inventories.


# MySQL + Flask Boilerplate Project

This repo contains a boilerplate setup for spinning up 2 docker containers:

1. A MySQL 8 container for obvious reasons
1. A Python Flask container to implement a REST API

## How to setup and start the containers

**Important** - you need Docker Desktop installed

1. Clone this repository.
1. Create a file named `db_root_password.txt` in the `secrets/` folder and put inside of it the root password for MySQL.
1. Create a file named `db_password.txt` in the `secrets/` folder and put inside of it the password you want to use for the `webapp` user.
1. In a terminal or command prompt, navigate to the folder with the `docker-compose.yml` file.
1. Build the images with `docker compose build`
1. Start the containers with `docker compose up`. To run in detached mode, run `docker compose up -d`.

## Expose API Endpoints

Then to expose the API to the public using ngrok, run:
`ngrok http 8001`

## For setting up a Conda Web-Dev environment:

1. `conda create -n webdev python=3.9`
1. `conda activate webdev`
1. `pip install flask flask-mysql flask-restful cryptography flask-login`
