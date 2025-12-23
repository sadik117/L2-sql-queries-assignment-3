🚗 Vehicle Rental System – Database Design & SQL Queries
📌 Project Overview

This project demonstrates the database design and SQL querying for a simplified Vehicle Rental System.
The goal is to model real-world rental operations using proper Entity Relationship Diagram (ERD) design and to practice essential SQL queries.

The system manages:

Users (Admins & Customers)

Vehicles

Bookings

This assignment focuses on database structure, relationships, and querying, not frontend or backend development.

🎯 Objectives

By completing this project, the following concepts are demonstrated:

Designing ERD with 1-to-Many and Many-to-1 relationships

Understanding Primary Keys (PK) and Foreign Keys (FK)

Implementing business rules using constraints

Writing SQL queries using:

JOIN

WHERE

GROUP BY

HAVING

EXISTS

🧠 Business Logic & System Rules
👤 Users Table

Stores system users.

User roles: Admin or Customer

Stores: name, email, password, phone number

Email must be unique

One user can make multiple bookings

🚘 Vehicles Table

Stores rental vehicles.

Vehicle types: car / bike / truck

Stores: name, model, registration number, rental price

Registration number must be unique

Availability status:

available

rented

maintenance

📅 Bookings Table

Stores booking records.

Links one user to one vehicle

Stores start date and end date

Booking status:

pending

confirmed

completed

cancelled

Stores total booking cost

Each booking references:

One user (FK)

One vehicle (FK)

🗂 Database Tables
1️⃣ Users
Column	Description
user_id (PK)	Unique user identifier
name	User full name
email	Unique email
phone	Phone number
role	Admin / Customer
2️⃣ Vehicles
Column	Description
vehicle_id (PK)	Unique vehicle identifier
name	Vehicle name
type	car / bike / truck
model	Vehicle model
registration_number	Unique registration
rental_price	Price per day
status	available / rented / maintenance
3️⃣ Bookings
Column	Description
booking_id (PK)	Unique booking ID
user_id (FK)	References Users
vehicle_id (FK)	References Vehicles
start_date	Rental start
end_date	Rental end
status	Booking status
total_cost	Total rental cost
🔗 ERD Relationships

One-to-Many:

One User → Many Bookings

Many-to-One:

Many Bookings → One Vehicle

One-to-One (Logical):

Each booking connects one user and one vehicle

🧩 ERD Submission

The ERD for this project is created using Lucidchart and includes:

Primary Keys (PK)

Foreign Keys (FK)

Relationship cardinality

Status fields

🔗 ERD Link:
👉 https://drawsql.app/teams/sadik-2/diagrams/vehicle-rental-system

🧪 SQL Queries Implemented

Retrieve booking details with user and vehicle names (JOIN)

Find vehicles that were never booked (NOT EXISTS)

Filter available vehicles by type (WHERE)

Count total bookings per vehicle (GROUP BY & HAVING)

📚 Theory (Viva Preparation)

This project also includes conceptual understanding of:

Primary keys

Foreign keys

WHERE vs HAVING

INNER JOIN vs LEFT JOIN
