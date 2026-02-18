-- Total revenue by flight
SELECT f.flight_no,
       SUM(tf.amount) AS total_revenue
FROM Flights f
JOIN Ticket_flights tf ON f.flight_id = tf.flight_id
GROUP BY f.flight_no
ORDER BY total_revenue DESC;

-- Total bookings per airport
SELECT a.city,
       COUNT(f.flight_id) AS total_flights
FROM Airports_data a
JOIN Flights f ON a.airport_code = f.departure_airport
GROUP BY a.city
ORDER BY total_flights DESC;

-- Available seats per aircraft
SELECT aircraft_code,
       COUNT(seat_no) AS total_seats
FROM Seats
GROUP BY aircraft_code;

Added SQL queries
