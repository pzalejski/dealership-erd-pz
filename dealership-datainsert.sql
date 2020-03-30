INSERT INTO Customer(
	customer_id, first_name, last_name, address
)
VALUES(
	1, 'John','Smith','222 Quincy Dr Chicago, IL 60606'
);

INSERT INTO Car(
	car_id, serial_number, make, model, year_, color
)
VALUES(
	1, 'AA58992FW231', 'Audi','A5','2017','Black'
);

INSERT INTO Sales(
	sales_id, first_name, last_name
)
VALUES(
	1, 'Max','Armstrong'
);

INSERT INTO Invoice(
	invoice_id,invoice_num,date_,car_id,customer_id,sales_id
)
VALUES(
	1, 1089,'10/12/2017',1,1,1
);

INSERT INTO Service(
	service_id,ticket_num,date_recieved, comments_,date_returned,car_id,customer_id
)
VALUES(
	1, 47, '11/19/2017', 'oil change, tire rotation','11/20/2017',1,1
);

INSERT INTO Mechanic(
	mechanic_id, first_name,last_name, service_id
)
VALUES(
	1, 'Sean','Williams',1
);

INSERT INTO Parts(
	parts_id, par_number, description, price, service_id
)
VALUES(
	1, 'CA9010','Synthetic Oil', 29.99,1
);
