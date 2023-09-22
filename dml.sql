-- Create Reservation table 

SELECT * 
FROM Movie;

-- Insert data into Movie table
INSERT INTO Movie (
  movie_id,
  movie_title,
  movie_language,
  movie_description,
  movie_rating,
  movie_duration_min,
  movie_genre
) VALUES (
  '978596',
  'Titanic',
  'English',
  'Titanic is an epic, action-packed romance...',
  'PG-13',
  195,
  'History/Drama'
);
INSERT INTO Movie(
    movie_id,
    movie_title,
    movie_language,
    movie_description,
    movie_rating,
    movie_duration_min,
    movie_genre
) VALUES (

-- Inserting the second movie
    '554108',
    'Frozen',
    'English',
    'When their kingdom becomes trapped in perpetual winter...',
    'PG',
    102,
    'Kids/Family/Musical'
);
INSERT INTO Movie(
    movie_id,
    movie_title,
    movie_language,
    movie_description,
    movie_rating,
    movie_duration_min,
    movie_genre
) VALUES (

-- Inserting the third movie
    '224661',
    'Transformers: Dark Of The Moon',
    'English',
    'Sam and girlfriend, Carly, join the fray when the evil Decepticons...',
    'PG-13',
    154,
    'Action/Adventure'
);
INSERT INTO Movie(
    movie_id,
    movie_title,
    movie_language,
    movie_description,
    movie_rating,
    movie_duration_min,
    movie_genre
) VALUES (

-- Inserting the forth movie
    '956781',
    'The Hobbit: An Unexpected Journey',
    'English',
    'Bilbo Baggins lives a simple in the shire, until...',
    'PG-13',
    169,
    'Fantasy/Adventure'
);

SELECT * 
FROM Concessions;

-- Inserting first snack
INSERT INTO Concessions(
    concession_id,
    price,
    concession_name
)VALUES(
    500, 
    8.50, 
    'popcorn'
);

-- Inserting second snack
INSERT INTO Concessions(
    concession_id,
    price,
    concession_name
)VALUES(
    600, 
    6.49,
    'soda'
);

-- Inserting second snack
INSERT INTO Concessions(
    concession_id,
    price,
    concession_name
)VALUES(
    700,
    4.49, 
    'candy-sour patch kids'
);

-- Inserting forth snack
INSERT INTO Concessions(
    concession_id,
    price,
    concession_name
)VALUES(
    800, 
    6.50,
    'nachos'
);

-- Inserting fifth snack
INSERT INTO Concessions(
    concession_id,
    price,
    concession_name
)VALUES(
    900, 
    4.50,
    'pretzels'
);

SELECT *
FROM Customer;

-- Inserting the first customer
INSERT INTO Customer (
    customer_id,
    first_name,
    last_name,
    email,
    phone_number
) VALUES (
    1,
    'John',
    'Smith',
    'jsmith@gmail.com',
    '706-775-6000'
);

-- Inserting the second customer
INSERT INTO Customer (
    customer_id,
    first_name,
    last_name,
    email,
    phone_number
) VALUES (
    2,
    'Chase',
    'Newman',
    'puppy221@hotmail.com',
    '907-225-6162'
);
-- Inserting the third customer
INSERT INTO Customer (
    customer_id,
    first_name,
    last_name,
    email,
    phone_number
) VALUES (
    3,
    'Ashley',
    'Rainny',
    'rain_ash@yahoo.com',
    '807-951-6223'
);
-- Inserting the forth customer
INSERT INTO Customer (
    customer_id,
    first_name,
    last_name,
    email,
    phone_number
) VALUES (
    4,
    'Rich',
    'Pencil',
    'richpen51@aol.com',
    '261-997-3331'
);

SELECT * 
FROM Booking_Ticket;

-- Inserting the ticket 1 
INSERT INTO Booking_Ticket (
    booking_ticket_id,
    ticket_number,
    movie_date,
    movie_time,
    reservation_id,
    seat_id,
    customer_id,
    movie_id
) VALUES (
    978596,
    1000,
    '2023-10-01',
    '4:00 PM',
    19970,
    6,
    4,
    697004
);    
-- Inserting the ticket 2
INSERT INTO Booking_Ticket(
    booking_ticket_id,
    ticket_number,
    movie_date,
    movie_time,
    reservation_id,
    seat_id,
    customer_id,
    movie_id
) VALUES (
    956781,
    2000,
    '2023-10-06', 
    '1:00 PM',
    20120,
    8, 
    3,
    696003, 
);

-- Inserting the ticket 3
INSERT INTO Booking_Ticket(
    booking_ticket_id,
    ticket_number,
    movie_date,
    movie_time,
    reservation_id,
    seat_id,
    customer_id,
    movie_id
) VALUES ( 
    224661, 
    3000, 
    '2023-10-02', 
    '6:00 PM', 
    20110, 
    9, 
    2,
    695002, 
);   

-- Inserting the ticket 4
INSERT INTO Booking_Ticket(
    booking_ticket_id,
    ticket_number,
    movie_date,
    movie_time,
    reservation_id,
    seat_id,
    customer_id,
    movie_id
) VALUES (
    554108,
    4000,
    '2023-10-06',
    '2:00 PM', 
    20130, 
    7, 
    1,
    694001, 
);

SELECT * 
FROM Payment_Receipt;

-- Inserting the first customer payment reciept
INSERT INTO Payment_Receipt(
    payment_receipt_id,
    ticket_total,
    movie_date,
    movie_time,
    discount_coupon_id,
    payment_method,
    concession_amount,
    booking_ticket_id,
    customer_id,
    concession_id
)VALUES(
    '100',
    15.00,
    '2023-10-06',
    '2:00 PM', 
    '0',
    'Mastercard',
    14.99,
    554108,
    1,
    '500',
    '600'
); 

-- Inserting the second customer payment reciept
INSERT INTO Payment_Receipt(
    payment_receipt_id,
    ticket_total,
    movie_date,
    movie_time,
    discount_coupon_id,
    payment_method,
    concession_amount,
    booking_ticket_id,
    customer_id,
    concession_id
)VALUES(
    '200', 
    15.00,
    '2023-10-02',
    '6:00 PM',
    '0', 
    'Discover', 
    17.48, 
    224661,
    2,
    '800',
    '600',
    '700'
);

-- Inserting the third customer payment reciept
INSERT INTO Payment_Receipt (
  payment_receipt_id,
  ticket_total,
  movie_date,
  movie_time,
  discount_coupon_id,
  payment_method,
  concession_amount,
  booking_ticket_id,
  customer_id,
  concession_id
) VALUES (
    '300',
    15.00,
    '2023-10-06',
    '1:00 PM',
    0,
    'American Express',
    10.99,
    956781,
    '900'
);

-- Inserting the forth customer payment reciept
INSERT INTO Payment_Receipt(
    payment_receipt_id,
    ticket_total,
    movie_date,
    movie_time,
    discount_coupon_id,
    payment_method,
    concession_amount,
    booking_ticket_id,
    customer_id,
    concession_id
)VALUES(
    '400',
    15.00,
    '2023-10-01',
    '4:00 PM',
    '0',
    'Credit Card',
    19.49, 
    978596,
     4,
    '500',
    '600'
);
