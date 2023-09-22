-- Create Movie table
CREATE TABLE Movie (
  movie_id SERIAL PRIMARY KEY,
  movie_title VARCHAR(255),
  movie_language VARCHAR(16),
  movie_description VARCHAR(255),  -- Fixed typo here
  movie_rating VARCHAR(5),  -- Adjusted data type to varchar(5)
  movie_duration_min integer,  -- Adjusted data type to integer
  movie_genre VARCHAR(200)
);

-- Create Concessions table
CREATE TABLE Concessions (
  concession_id SERIAL PRIMARY KEY,
  price numeric (8, 2),  -- Adjusted data type to numeric(8, 2)
  concession_name VARCHAR(255)
);

-- Create Customer table
CREATE TABLE Customer (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(64),
  last_name VARCHAR(64),
  email VARCHAR(64),
  phone_number VARCHAR(16)
);

-- Create Booking_Ticket table
CREATE TABLE Booking_Ticket (
  booking_ticket_id SERIAL PRIMARY KEY,
  ticket_number integer,
  movie_date date,  -- Adjusted data type to date
  movie_time time,  -- Adjusted data type to time
  reservation_id integer,
  seat_id integer,
  customer_id integer,
  movie_id integer
);

-- Create Payment_Receipt table
CREATE TABLE Payment_Receipt (
  payment_receipt_id SERIAL PRIMARY KEY,
  ticket_total numeric(8, 2),  -- Adjusted data type to numeric(8, 2)
  movie_date date,  -- Adjusted data type to date
  movie_time time,  -- Adjusted data type to time
  discount_coupon_id integer,
  payment_method VARCHAR(255),
  concession_amount numeric(8, 2),  -- Adjusted data type to numeric(8, 2)
  booking_ticket_id integer,
  customer_id integer,
  concession_id integer
);
