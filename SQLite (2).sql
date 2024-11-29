-- Create regi_user table
CREATE TABLE regi_user (
    regi_user VARCHAR(10) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    street VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    batch_no VARCHAR(10) NOT NULL,
    CONSTRAINT reg_User_PK PRIMARY KEY (regi_user)
);

-- Insert values into regi_user
INSERT INTO regi_user VALUES ('21UG0936', 'Awanthi', 'Jayathilaka', 'Mawanella', 'Hemmathagama', 'SriLanka', '8');
INSERT INTO regi_user VALUES ('21UG1095', 'Kanishka', 'Benaragama', 'Diulapitiya', 'Gampaha', 'SriLanka', '8');
INSERT INTO regi_user VALUES ('21UG1043', 'Koshitha', 'Weeraman', 'Hiththatiya', 'Mathara', 'SriLanka', '8');

-- Create Reservation table
CREATE TABLE Reservation (
    reser_No VARCHAR(10) NOT NULL,
    room_No VARCHAR(10) NOT NULL,
    NoOf_dates INT NOT NULL,
    DOf_check_in DATE NOT NULL,
    DOf_check_out DATE NOT NULL,
    CONSTRAINT Reservation_PK PRIMARY KEY (reser_No)
);

-- Insert values into Reservation
INSERT INTO Reservation VALUES ('25856', '0115', 7, '2023-07-10', '2023-07-17');
INSERT INTO Reservation VALUES ('25449', '0106', 2, '2023-06-18', '2023-06-20');
INSERT INTO Reservation VALUES ('22300', 'G023', 7, '2023-03-13', '2023-03-20');

-- Create HOSTEL table
CREATE TABLE HOSTEL (
    hos_type VARCHAR(10) NOT NULL,
    hostel_Id VARCHAR(10) NOT NULL,
    hos_additional VARCHAR(10) NOT NULL,
    CONSTRAINT HOSTEL_PK PRIMARY KEY (hostel_Id)
);

-- Insert values into HOSTEL
INSERT INTO HOSTEL VALUES ('HUB 1', '1', 'NO');
INSERT INTO HOSTEL VALUES ('HUB 2', '2', 'YES');
INSERT INTO HOSTEL VALUES ('OUTSIDE', '3', 'YES');

-- Create additional_services table
CREATE TABLE additional_services (
    NoOf_additional INT NOT NULL,
    addi_type VARCHAR(20) NOT NULL
);

-- Insert values into additional_services
INSERT INTO additional_services VALUES (0, '***');
INSERT INTO additional_services VALUES (2, 'GYM, LAUNDRY');

-- Create ROOMS table
CREATE TABLE ROOMS (
    Room_No VARCHAR(10) NOT NULL,
    ROOM_TYPE VARCHAR(20) NOT NULL,
    NoOf_Beds INT NOT NULL,
    CONSTRAINT ROOMS_PK PRIMARY KEY (Room_No)
);

-- Insert values into ROOMS
INSERT INTO ROOMS VALUES ('G0101', '2 SHARING', 2);
INSERT INTO ROOMS VALUES ('B207', '6 SHARING', 6);
INSERT INTO ROOMS VALUES ('U293', '4 SHARING', 4);

-- Create Payment table
CREATE TABLE Payment (
    Payment_Type VARCHAR(20) NOT NULL,
    Pay_Date DATE NOT NULL,
    Pay_Amount DECIMAL(10, 2) NOT NULL,
    Pay_Period VARCHAR(10) NOT NULL
);

-- Insert values into Payment
INSERT INTO Payment VALUES ('cash', '2023-07-09', 2750.00, 'WEEKLY');
INSERT INTO Payment VALUES ('credit card', '2023-06-18', 1700.00, 'DAILY');
INSERT INTO Payment VALUES ('credit card', '2023-03-13', 2450.00, 'WEEKLY');
