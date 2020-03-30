CREATE TABLE Customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(200)
);

CREATE TABLE Car(
	car_id SERIAL PRIMARY KEY,
	serial_number VARCHAR(50),
	make VARCHAR(20),
	model VARCHAR(20),
	year_ NUMERIC(4),
	color VARCHAR(20)
);

CREATE TABLE Sales(
	sales_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE Invoice(
	invoice_id SERIAL PRIMARY KEY,
	invoice_num NUMERIC(10),
	date_ DATE,
	car_id INTEGER NOT NULL,
	customer_id INTEGER NOT NULL,
	sales_id INTEGER NOT NULL,
	FOREIGN KEY(car_id) REFERENCES Car(car_id),
	FOREIGN KEY(customer_id) REFERENCES Customer(customer_id),
	FOREIGN KEY(sales_id) REFERENCES Sales(sales_id)

);


CREATE TABLE Service(
	service_id SERIAL PRIMARY KEY,
	ticket_num NUMERIC(10),
	date_recieved DATE,
	comments_ VARCHAR(300),
	date_returned DATE,
	car_id INTEGER NOT NULL,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(car_id) REFERENCES Car(car_id),
	FOREIGN KEY(customer_id) REFERENCES Customer(customer_id)
);


CREATE TABLE Mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	service_id INTEGER NOT NULL,
	FOREIGN KEY(service_id) REFERENCES Service(service_id)
);
	
CREATE TABLE Parts(
	parts_id SERIAL PRIMARY KEY,
	par_number VARCHAR(30),
	description VARCHAR(100),
	price NUMERIC(6,2),
	service_id INTEGER NOT NULL,
	FOREIGN KEY(service_id) REFERENCES Service(service_id)
);