schema.sql
  '''sql
CREATE TABLE Bookings (
    book_ref VARCHAR(10) PRIMARY KEY,
    book_date TIMESTAMP NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL
);

CREATE TABLE Tickets (
    ticket_no VARCHAR(13) PRIMARY KEY,
    book_ref VARCHAR(10),
    passenger_id VARCHAR(20),
    passenger_name VARCHAR(100),
    contact_data TEXT,
    FOREIGN KEY (book_ref) REFERENCES Bookings(book_ref)
);

CREATE TABLE Airports_data (
    airport_code CHAR(3) PRIMARY KEY,
    airport_name VARCHAR(100),
    city VARCHAR(50),
    longitude DECIMAL(9,6),
    latitude DECIMAL(9,6),
    timezone VARCHAR(50)
);

CREATE TABLE Aircrafts_data (
    aircraft_code CHAR(3) PRIMARY KEY,
    model VARCHAR(50),
    range INTEGER
);

CREATE TABLE Flights (
    flight_id SERIAL PRIMARY KEY,
    flight_no VARCHAR(10),
    scheduled_departure TIMESTAMP,
    scheduled_arrival TIMESTAMP,
    departure_airport CHAR(3),
    arrival_airport CHAR(3),
    status VARCHAR(20),
    aircraft_code CHAR(3),
    actual_departure TIMESTAMP,
    actual_arrival TIMESTAMP,
    FOREIGN KEY (departure_airport) REFERENCES Airports_data(airport_code),
    FOREIGN KEY (arrival_airport) REFERENCES Airports_data(airport_code),
    FOREIGN KEY (aircraft_code) REFERENCES Aircrafts_data(aircraft_code)
);

CREATE TABLE Seats (
    aircraft_code CHAR(3),
    seat_no VARCHAR(5),
    fare_conditions VARCHAR(20),
    PRIMARY KEY (aircraft_code, seat_no),
    FOREIGN KEY (aircraft_code) REFERENCES Aircrafts_data(aircraft_code)
);

CREATE TABLE Ticket_flights (
    ticket_no VARCHAR(13),
    flight_id INTEGER,
    fare_conditions VARCHAR(20),
    amount DECIMAL(10,2),
    PRIMARY KEY (ticket_no, flight_id),
    FOREIGN KEY (ticket_no) REFERENCES Tickets(ticket_no),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);

CREATE TABLE Boarding_passes (
    ticket_no VARCHAR(13),
    flight_id INTEGER,
    boarding_no INTEGER,
    seat_no VARCHAR(5),
    PRIMARY KEY (ticket_no, flight_id),
    FOREIGN KEY (ticket_no, flight_id)
        REFERENCES Ticket_flights(ticket_no, flight_id)
);

Added database schema
