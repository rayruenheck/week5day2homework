
INSERT INTO concessions(
	total_sales,
	date_running,
	quantity_sales_per_hour,
	sales_per_hour
	
	
)VALUES(
	854,
	'2022-02-02',
	153.25,
	2000.01
),(
	934,
	'2022-02-03',
	170.34,
	2700.75
);
INSERT INTO movies (
	tickets_avail,
	showing_time,
	date_showing
)VALUES (
	35,
	730,
	'2022-02-02'
),(
	35,
	545,
	'2022-02-03'
);

INSERT INTO customers (
	payment_method,
	total_amount_spent
)VALUES(
	'4242 4242 4224 4444',
	66.46
),(
	'5353 2432 2345 6777',
	75.45
)
INSERT INTO tickets (
	cost_of_ticket,
	showing_time,
	date_showing,
	customer_id,
	movie_id
)VALUES (
	12.50,
	730,
	'2022-02-02',
	1,
	1
),(
	12.50,
	545,
	'2022-02-03',
	2,
	2
) 