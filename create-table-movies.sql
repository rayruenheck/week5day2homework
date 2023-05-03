DROP TABLE IF EXISTS movies;
CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY UNIQUE,
	tickets_avail INT,
	showing_time INT UNIQUE,
	date_showing DATE UNIQUE
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	customer_id SERIAL PRIMARY KEY UNIQUE,
	payment_method VARCHAR,
	total_amount_spent DECIMAL
);

CREATE TABLE concessions (
	concession_id SERIAL PRIMARY KEY,
	total_sales DECIMAL,
	date_running DATE,
	sales_per_hour DECIMAL,
	quantity_sales_per_hour DECIMAL
);

DROP TABLE IF EXISTS tickets;
CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	cost_of_ticket DECIMAL,
	showing_time INT,
	date_showing DATE,
	customer_id int,
	movie_id int,
	FOREIGN KEY(showing_time) REFERENCES movies(showing_time),
	FOREIGN KEY(date_showing) REFERENCES movies(date_showing),
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id),
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
)