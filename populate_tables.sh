#!/bin/sh
sqlplus64 "d1yeung/06145080@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.cs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

INSERT INTO Equipment_Type (Equipment_Type_Name) VALUES ('Camera');
INSERT INTO Equipment_Type (Equipment_Type_Name) VALUES ('Lens');
INSERT INTO Equipment_Type (Equipment_Type_Name) VALUES ('Tripod');
INSERT INTO Equipment_Type (Equipment_Type_Name) VALUES ('Lighting Kit');
INSERT INTO Equipment_Type (Equipment_Type_Name) VALUES ('Drone');

INSERT INTO Customer (Name, Address) VALUES ('Alice Johnson', '123 Maple Street');
INSERT INTO Customer (Name, Address) VALUES ('Bob Smith', '456 Oak Avenue');
INSERT INTO Customer (Name, Address) VALUES ('Charlie Brown', '789 Pine Lane');
INSERT INTO Customer (Name, Address) VALUES ('Diana Ross', '101 Elm Road');
INSERT INTO Customer (Name, Address) VALUES ('Evan Davis', '202 Birch Boulevard');

INSERT INTO Customer_Phone (Customer_ID, Customer_Phone_Number) VALUES (1, '555-1234');
INSERT INTO Customer_Phone (Customer_ID, Customer_Phone_Number) VALUES (2, '555-5678');
INSERT INTO Customer_Phone (Customer_ID, Customer_Phone_Number) VALUES (3, '555-9101');
INSERT INTO Customer_Phone (Customer_ID, Customer_Phone_Number) VALUES (4, '555-1122');
INSERT INTO Customer_Phone (Customer_ID, Customer_Phone_Number) VALUES (5, '555-3344');

INSERT INTO Customer_Email (Customer_ID, Customer_Email) VALUES (1, 'alice.johnson@example.com');
INSERT INTO Customer_Email (Customer_ID, Customer_Email) VALUES (2, 'bob.smith@example.com');
INSERT INTO Customer_Email (Customer_ID, Customer_Email) VALUES (3, 'charlie.brown@example.com');
INSERT INTO Customer_Email (Customer_ID, Customer_Email) VALUES (4, 'diana.ross@example.com');
INSERT INTO Customer_Email (Customer_ID, Customer_Email) VALUES (5, 'evan.davis@example.com');

INSERT INTO Staff (Name, Position) VALUES ('John Doe', 'Manager');
INSERT INTO Staff (Name, Position) VALUES ('Sarah Connor', 'Technician');
INSERT INTO Staff (Name, Position) VALUES ('Mike Tyson', 'Clerk');
INSERT INTO Staff (Name, Position) VALUES ('Lisa Simpson', 'Supervisor');
INSERT INTO Staff (Name, Position) VALUES ('Tom Hardy', 'Technician');

-- Equipment entries for Equipment_Type 'Camera'
INSERT INTO Equipment (Name, Equipment_Type_ID, Status, Condition, Purchase_Date, Equipment_Price) 
VALUES ('Canon EOS R5', 1, 'Available', 'New', TO_DATE('2023-02-15', 'YYYY-MM-DD'), 3899.99);

INSERT INTO Equipment (Name, Equipment_Type_ID, Status, Condition, Purchase_Date, Equipment_Price) 
VALUES ('Nikon Z6 II', 1, 'Available', 'Good', TO_DATE('2022-09-01', 'YYYY-MM-DD'), 1999.99);

-- Equipment entries for Equipment_Type 'Lens'
INSERT INTO Equipment (Name, Equipment_Type_ID, Status, Condition, Purchase_Date, Equipment_Price) 
VALUES ('Sony FE 24-70mm f/2.8 GM', 2, 'Available', 'New', TO_DATE('2023-03-20', 'YYYY-MM-DD'), 2199.99);

INSERT INTO Equipment (Name, Equipment_Type_ID, Status, Condition, Purchase_Date, Equipment_Price) 
VALUES ('Canon RF 50mm f/1.2L USM', 2, 'Under Maintenance', 'Good', TO_DATE('2022-12-10', 'YYYY-MM-DD'), 2299.99);

-- Equipment entries for Equipment_Type 'Tripod'
INSERT INTO Equipment (Name, Equipment_Type_ID, Status, Condition, Purchase_Date, Equipment_Price) 
VALUES ('Manfrotto Befree Advanced', 3, 'Available', 'New', TO_DATE('2021-05-15', 'YYYY-MM-DD'), 199.99);

INSERT INTO Equipment (Name, Equipment_Type_ID, Status, Condition, Purchase_Date, Equipment_Price) 
VALUES ('Gitzo GT2545T', 3, 'Out of Service', 'Fair', TO_DATE('2020-08-25', 'YYYY-MM-DD'), 599.99);

-- Equipment entries for Equipment_Type 'Lighting Kit'
INSERT INTO Equipment (Name, Equipment_Type_ID, Status, Condition, Purchase_Date, Equipment_Price) 
VALUES ('Godox SL60W LED Video Light', 4, 'Available', 'New', TO_DATE('2023-01-10', 'YYYY-MM-DD'), 149.99);

INSERT INTO Equipment (Name, Equipment_Type_ID, Status, Condition, Purchase_Date, Equipment_Price) 
VALUES ('Aputure LS 300X', 4, 'Under Maintenance', 'Good', TO_DATE('2022-07-18', 'YYYY-MM-DD'), 1199.99);

-- Equipment entry for Equipment_Type 'Drone'
INSERT INTO Equipment (Name, Equipment_Type_ID, Status, Condition, Purchase_Date, Equipment_Price) 
VALUES ('DJI Mavic Air 2', 5, 'Available', 'New', TO_DATE('2023-06-05', 'YYYY-MM-DD'), 799.99);

INSERT INTO Equipment (Name, Equipment_Type_ID, Status, Condition, Purchase_Date, Equipment_Price) 
VALUES ('DJI Inspire 2', 5, 'Out of Service', 'Damaged', TO_DATE('2020-03-22', 'YYYY-MM-DD'), 2999.99);


-- Rental 1
INSERT INTO Rental (Staff_ID, Customer_ID, Equipment_ID, Rental_Date, Estimated_Return_Date, Estimated_Duration_Days, Rentail_Price, Status) 
VALUES (1, 1, 1, TO_DATE('2024-11-10', 'YYYY-MM-DD'), TO_DATE('2024-11-15', 'YYYY-MM-DD'), 5, 149.99, 'Ongoing');

-- Rental 2
INSERT INTO Rental (Staff_ID, Customer_ID, Equipment_ID, Rental_Date, Estimated_Return_Date, Estimated_Duration_Days, Rentail_Price, Status) 
VALUES (2, 2, 2, TO_DATE('2024-11-01', 'YYYY-MM-DD'), TO_DATE('2024-11-05', 'YYYY-MM-DD'), 4, 99.99, 'Completed');

-- Rental 3
INSERT INTO Rental (Staff_ID, Customer_ID, Equipment_ID, Rental_Date, Estimated_Return_Date, Estimated_Duration_Days, Rentail_Price, Status) 
VALUES (3, 3, 3, TO_DATE('2024-11-08', 'YYYY-MM-DD'), TO_DATE('2024-11-12', 'YYYY-MM-DD'), 4, 29.99, 'Overdue');

-- Rental 4
INSERT INTO Rental (Staff_ID, Customer_ID, Equipment_ID, Rental_Date, Estimated_Return_Date, Estimated_Duration_Days, Rentail_Price, Status) 
VALUES (4, 4, 5, TO_DATE('2024-11-03', 'YYYY-MM-DD'), TO_DATE('2024-11-08', 'YYYY-MM-DD'), 5, 79.99, 'Ongoing');

-- Rental 5
INSERT INTO Rental (Staff_ID, Customer_ID, Equipment_ID, Rental_Date, Estimated_Return_Date, Estimated_Duration_Days, Rentail_Price, Status) 
VALUES (5, 5, 8, TO_DATE('2024-11-02', 'YYYY-MM-DD'), TO_DATE('2024-11-06', 'YYYY-MM-DD'), 4, 199.99, 'Completed');


-- Rental History 1: Alice rented a lens (Customer_ID 1, Equipment_ID 3)
INSERT INTO Rental_History (Staff_ID, Customer_ID, Equipment_ID, Rental_Date, Duration, Rental_Return, Price) 
VALUES (1, 1, 3, TO_DATE('2024-10-01', 'YYYY-MM-DD'), 7, TO_DATE('2024-10-08', 'YYYY-MM-DD'), 49.99);

-- Rental History 2: Bob rented a tripod (Customer_ID 2, Equipment_ID 6)
INSERT INTO Rental_History (Staff_ID, Customer_ID, Equipment_ID, Rental_Date, Duration, Rental_Return, Price) 
VALUES (2, 2, 6, TO_DATE('2024-10-15', 'YYYY-MM-DD'), 5, TO_DATE('2024-10-20', 'YYYY-MM-DD'), 29.99);

-- Rental History 3: Charlie rented a camera (Customer_ID 3, Equipment_ID 2)
INSERT INTO Rental_History (Staff_ID, Customer_ID, Equipment_ID, Rental_Date, Duration, Rental_Return, Price) 
VALUES (3, 3, 2, TO_DATE('2024-09-25', 'YYYY-MM-DD'), 10, TO_DATE('2024-10-05', 'YYYY-MM-DD'), 129.99);

-- Rental History 4: Diana rented a lighting kit (Customer_ID 4, Equipment_ID 8)
INSERT INTO Rental_History (Staff_ID, Customer_ID, Equipment_ID, Rental_Date, Duration, Rental_Return, Price) 
VALUES (4, 4, 8, TO_DATE('2024-10-05', 'YYYY-MM-DD'), 4, TO_DATE('2024-10-09', 'YYYY-MM-DD'), 99.99);

-- Rental History 5: Evan rented a drone (Customer_ID 5, Equipment_ID 9)
INSERT INTO Rental_History (Staff_ID, Customer_ID, Equipment_ID, Rental_Date, Duration, Rental_Return, Price) 
VALUES (5, 5, 9, TO_DATE('2024-11-01', 'YYYY-MM-DD'), 3, TO_DATE('2024-11-04', 'YYYY-MM-DD'), 79.99);



-- Overdue Entry 1: Charlie's camera rental (Rental_ID 3)
INSERT INTO Overdue (Rental_ID, Overdue_Date, Amount, Payment_Method, Status) 
VALUES (3, TO_DATE('2024-11-13', 'YYYY-MM-DD'), 15.00, 'Credit Card', 'Paid');

-- Overdue Entry 2: Diana's lighting kit rental (Rental_ID 4)
INSERT INTO Overdue (Rental_ID, Overdue_Date, Amount, Payment_Method, Status) 
VALUES (4, TO_DATE('2024-11-09', 'YYYY-MM-DD'), 20.00, 'Debit Card', 'Paid');

-- Overdue Entry 3: Evan's drone rental (Rental_ID 5)
INSERT INTO Overdue (Rental_ID, Overdue_Date, Amount, Payment_Method, Status) 
VALUES (5, TO_DATE('2024-11-07', 'YYYY-MM-DD'), 25.00, 'Cash', 'Declined');

-- Overdue Entry 4: Alice's lens rental (Rental_ID 1)
INSERT INTO Overdue (Rental_ID, Overdue_Date, Amount, Payment_Method, Status) 
VALUES (1, TO_DATE('2024-11-16', 'YYYY-MM-DD'), 10.00, 'Credit Card', 'Paid');

-- Overdue Entry 5: Bob's tripod rental (Rental_ID 2)
INSERT INTO Overdue (Rental_ID, Overdue_Date, Amount, Payment_Method, Status) 
VALUES (2, TO_DATE('2024-11-06', 'YYYY-MM-DD'), 5.00, 'Cash', 'Paid');

-- Rental_Customer 1: Alice rented a camera (Rental_ID 1)
INSERT INTO Rental_Customer (Rental_ID, Customer_ID)
VALUES (1, 1);

-- Rental_Customer 2: Bob rented a camera (Rental_ID 2)
INSERT INTO Rental_Customer (Rental_ID, Customer_ID)
VALUES (2, 2);

-- Rental_Customer 3: Charlie rented a tripod (Rental_ID 3)
INSERT INTO Rental_Customer (Rental_ID, Customer_ID)
VALUES (3, 3);

-- Rental_Customer 4: Diana rented a lighting kit (Rental_ID 4)
INSERT INTO Rental_Customer (Rental_ID, Customer_ID)
VALUES (4, 4);

-- Rental_Customer 5: Evan rented a drone (Rental_ID 5)
INSERT INTO Rental_Customer (Rental_ID, Customer_ID)
VALUES (5, 5);



-- Payment 1: Payment for Alice's camera rental (Rental_ID 1)
INSERT INTO Payment (Rental_ID, Payment_Date, Amount, Payment_Method, Status)
VALUES (1, TO_DATE('2024-11-10', 'YYYY-MM-DD'), 149.99, 'Credit Card', 'Accepted');

-- Payment 2: Payment for Bob's camera rental (Rental_ID 2)
INSERT INTO Payment (Rental_ID, Payment_Date, Amount, Payment_Method, Status)
VALUES (2, TO_DATE('2024-11-01', 'YYYY-MM-DD'), 99.99, 'Debit Card', 'Accepted');

-- Payment 3: Payment for Charlie's tripod rental (Rental_ID 3)
INSERT INTO Payment (Rental_ID, Payment_Date, Amount, Payment_Method, Status)
VALUES (3, TO_DATE('2024-11-12', 'YYYY-MM-DD'), 29.99, 'Cash', 'Declined');

-- Payment 4: Payment for Diana's lighting kit rental (Rental_ID 4)
INSERT INTO Payment (Rental_ID, Payment_Date, Amount, Payment_Method, Status)
VALUES (4, TO_DATE('2024-11-03', 'YYYY-MM-DD'), 79.99, 'Credit Card', 'Accepted');

-- Payment 5: Payment for Evan's drone rental (Rental_ID 5)
INSERT INTO Payment (Rental_ID, Payment_Date, Amount, Payment_Method, Status)
VALUES (5, TO_DATE('2024-11-02', 'YYYY-MM-DD'), 199.99, 'Bank Transfer', 'Pending');


-- Payment_History 1: Alice's payment for camera rental (Payment_ID 1)
INSERT INTO Payment_History (Payment_ID, Payment_Date, Amount, Payment_Method)
VALUES (1, TO_DATE('2024-11-10', 'YYYY-MM-DD'), 149.99, 'Credit Card');

-- Payment_History 2: Bob's payment for camera rental (Payment_ID 2)
INSERT INTO Payment_History (Payment_ID, Payment_Date, Amount, Payment_Method)
VALUES (2, TO_DATE('2024-11-01', 'YYYY-MM-DD'), 99.99, 'Debit Card');

-- Payment_History 3: Charlie's attempted payment for tripod rental (Payment_ID 3)
INSERT INTO Payment_History (Payment_ID, Payment_Date, Amount, Payment_Method)
VALUES (3, TO_DATE('2024-11-12', 'YYYY-MM-DD'), 29.99, 'Cash');

-- Payment_History 4: Diana's payment for lighting kit rental (Payment_ID 4)
INSERT INTO Payment_History (Payment_ID, Payment_Date, Amount, Payment_Method)
VALUES (4, TO_DATE('2024-11-03', 'YYYY-MM-DD'), 79.99, 'Credit Card');

-- Payment_History 5: Evan's pending payment for drone rental (Payment_ID 5)
INSERT INTO Payment_History (Payment_ID, Payment_Date, Amount, Payment_Method)
VALUES (5, TO_DATE('2024-11-02', 'YYYY-MM-DD'), 199.99, 'Bank Transfer');


-- Payment_Rental_Customer 1: Alice's payment for camera rental (Payment_ID 1)
INSERT INTO Payment_Rental_Customer (Payment_ID, Rental_ID, Customer_ID)
VALUES (1, 1, 1);

-- Payment_Rental_Customer 2: Bob's payment for camera rental (Payment_ID 2)
INSERT INTO Payment_Rental_Customer (Payment_ID, Rental_ID, Customer_ID)
VALUES (2, 2, 2);

-- Payment_Rental_Customer 3: Charlie's attempted payment for tripod rental (Payment_ID 3)
INSERT INTO Payment_Rental_Customer (Payment_ID, Rental_ID, Customer_ID)
VALUES (3, 3, 3);

-- Payment_Rental_Customer 4: Diana's payment for lighting kit rental (Payment_ID 4)
INSERT INTO Payment_Rental_Customer (Payment_ID, Rental_ID, Customer_ID)
VALUES (4, 4, 4);

-- Payment_Rental_Customer 5: Evan's pending payment for drone rental (Payment_ID 5)
INSERT INTO Payment_Rental_Customer (Payment_ID, Rental_ID, Customer_ID)
VALUES (5, 5, 5);



-- Reservation 1: Alice reserves a camera
INSERT INTO Reservation (Customer_ID, Equipment_ID, Reservation_Date, Expiration_Date, Status)
VALUES (1, 1, TO_DATE('2024-11-20', 'YYYY-MM-DD'), TO_DATE('2024-11-25', 'YYYY-MM-DD'), 'Confirmed');

-- Reservation 2: Bob reserves a tripod
INSERT INTO Reservation (Customer_ID, Equipment_ID, Reservation_Date, Expiration_Date, Status)
VALUES (2, 5, TO_DATE('2024-11-18', 'YYYY-MM-DD'), TO_DATE('2024-11-22', 'YYYY-MM-DD'), 'Pending');

-- Reservation 3: Charlie reserves a lighting kit
INSERT INTO Reservation (Customer_ID, Equipment_ID, Reservation_Date, Expiration_Date, Status)
VALUES (3, 7, TO_DATE('2024-11-15', 'YYYY-MM-DD'), TO_DATE('2024-11-20', 'YYYY-MM-DD'), 'Canceled');

-- Reservation 4: Diana reserves a drone
INSERT INTO Reservation (Customer_ID, Equipment_ID, Reservation_Date, Expiration_Date, Status)
VALUES (4, 9, TO_DATE('2024-11-10', 'YYYY-MM-DD'), TO_DATE('2024-11-12', 'YYYY-MM-DD'), 'Confirmed');



-- Maintenance 1: Staff Sarah Connor working on a camera
INSERT INTO Maintenance (Staff_ID, Equipment_ID, Maintenance_Start_Date, Maintenance_Cost, Expected_Completion_Date, Status)
VALUES (2, 2, TO_DATE('2024-11-15', 'YYYY-MM-DD'), 150.00, TO_DATE('2024-11-20', 'YYYY-MM-DD'), 'Processing');

-- Maintenance 2: Staff Mike Tyson working on a drone
INSERT INTO Maintenance (Staff_ID, Equipment_ID, Maintenance_Start_Date, Maintenance_Cost, Expected_Completion_Date, Status)
VALUES (3, 9, TO_DATE('2024-11-10', 'YYYY-MM-DD'), 300.00, TO_DATE('2024-11-18', 'YYYY-MM-DD'), 'Completed');

EOF

