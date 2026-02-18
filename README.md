 
# ✈️ Airline Database Management System

## 📌 Project Overview
This project represents a relational Airline Booking Database system.
It manages flight bookings, passengers, tickets, aircraft, airports, and boarding passes.

The database is designed using normalized relational tables with primary and foreign key constraints.

---

## 🗂 Database Entities

- Bookings
- Tickets
- Ticket_flights
- Flights
- Airports_data
- Aircrafts_data
- Seats
- Boarding_passes

---

## 🔗 Entity Relationships

- One booking → Multiple tickets
- One ticket → Multiple flight segments
- One flight → One aircraft
- One aircraft → Multiple seats
- Boarding pass links ticket + flight + seat

---

## 🛠 Technologies Used

- SQL (PostgreSQL / MySQL Compatible)
- Relational Database Design
- ER Modeling

---

## 📊 ER Diagram

See ER_Diagram.png

---

## 📂 Files Included

| File | Description |
|------|------------|
| schema.sql | Database table creation script |
| sample_data.sql | Insert sample data |
| queries.sql | Practice SQL queries |
| ER_Diagram.png | Entity Relationship Diagram |

---

## 🚀 How to Run

1. Create database:
```sql
CREATE DATABASE AirlineDB;

Updated README file
