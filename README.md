# Blood Donation Management System

## Description

The Blood Donation Management System is a database project developed using MySQL. It manages blood donors, donations, blood banks, blood inventory, patients, hospitals, blood requests, clinical analysts, registration teams, and managers.

## Database Tables

The database contains the following tables:

- Donor
- Blood_Bank
- Donation
- Clinical_Analyst
- Patient
- Registration_Team
- Hospital
- Manager
- Blood
- Blood_Request

## SQL Files

- `schema.sql` – Creates the database, tables, primary keys, and foreign keys.
- `data.sql` – Inserts sample data into the database.
- `triggers.sql` – Contains triggers for blood inventory updates and donation quantity validation.
- `procedures.sql` – Contains stored procedures for donor search, blood availability, and pending blood requests.
- `views.sql` – Contains views for donors, blood inventory, patients, and donations.
- `queries.sql` – Contains SQL queries using SELECT, JOIN, GROUP BY, HAVING, aggregate functions, subqueries, INSERT, UPDATE, and DELETE.

## Database Features

- Donor management
- Blood donation management
- Blood inventory management
- Hospital and patient management
- Blood request management
- Stored procedures
- Database triggers
- Database views
- SQL queries and data analysis

## How to Run

1. Open MySQL Workbench.
2. Run `schema.sql`.
3. Run `data.sql`.
4. Run `triggers.sql`.
5. Run `procedures.sql`.
6. Run `views.sql`.
7. Run `queries.sql`.

## Database Name

`BloodBankManagement`

## Tools Used

- MySQL
- MySQL Workbench
- SQL
- GitHub

## ER Diagram

The project includes a conceptual ER diagram and a relational schema diagram.

## Project Structure

```text
DBMS-SQL/
├── ER DIAGRAM.pdf
├── README.md
├── schema.sql
├── data.sql
├── triggers.sql
├── procedures.sql
├── views.sql
└── queries.sql
