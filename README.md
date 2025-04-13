# Database-Design-Groupwork-Assignment

## Bookstore Database Design & Programming with SQL

This project was developed as part of the course/workshop: "Database Design & Programming with SQL" with The Power Learn Project.

### Overview

In this project, we took on three roles.  

1. A database administrator responsible for designing and implementing a MySQL database for a bookstore.

2. A bookstore manager responsible inventory management.

3. A sales manager responsible for order processing and customer management. 

The objective is to build a structured, efficient, and scalable system to manage essential data such as books, authors, customers, orders, and shipping.


### Tools and Technologies Used:

1. MySQL – For designing, creating, and managing the relational database

2. Draw.io – For visualizing the database schema and entity-relationship diagrams (ERD)

### Prerequisites:

Before starting this project, we had a solid understanding of:

1. MySQL fundamentals in creating tables and defining relationships

2. Choosing appropriate data types

3. Writing SQL queries

4. Managing users and setting up roles and permissions in MySQL

### Project Objective:

Design and implement a relational database to support the full operations of a bookstore, covering:

1. Inventory (books, authors, languages, publishers)

2. Customers and their addresses

3. Orders and order processing

4. Shipping methods and order tracking

We created a schema that allows efficient data storage, quick retrieval, and meaningful analytics.


### User Management:

We created user groups and assigned roles with appropriate permissions for database access and security.

### Test the System:

Run SQL queries to test data insertion, retrieval, joins, and security rules.

### Tables We Created:

![Table Relationships](bookstore.png)

Table Name	Description
book: Stores details of all books available in the store
book_author:	Manages the many-to-many relationship between books and authors
author:	Contains author information
book_language:	Lists possible languages for books
publisher:	Contains publisher details
customer:	Stores customer information
customer_address:	Links customers to multiple addresses
address_status:	Defines address types (e.g., current, old)
address:	Contains physical address data
country:	Lists all countries tied to addresses
cust_order:	Stores customer order details
order_line:	Contains books associated with each order
shipping_method:	Lists available shipping methods
order_history:	Records order events and changes over time
order_status:	Defines different order statuses (e.g., pending, shipped, delivered)

Authors:
Lilian Igwegbe
Lucylle Makachia
Sharon Kipsang
