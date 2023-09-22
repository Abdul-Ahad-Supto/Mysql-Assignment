create database `Employee Managment Database System`;
use `Employee Managment Database System`;




create table Department(
dept_id int primary key,
dept_name varchar(50),
manager_id int
);


create table Employees(
employee_id int primary key,
`first name` varchar(50),
`last name` varchar(50),
`Date of Birst` date,
adress text,
`phone number` varchar(50),
email varchar(50),
`Hire Date` date,
`Job title` varchar(50),
dept_id int,
foreign key (dept_id) references Department(dept_id)
on delete cascade
on update cascade
);

create table Salary(
employee_id int,
foreign key (employee_id) references Employees(employee_id)
on delete cascade
on update cascade,
`Salary amount` float,
`Effective date` date,
Comment varchar(50) default 'No comments' null
);


INSERT INTO Department (dept_id, dept_name, manager_id)
VALUES
-- Department 1
(1, 'HR Department', 100),
-- Department 2
(2, 'IT Department', 101),
-- Department 3
(3, 'Sales', 102),
-- Department 4
(4, 'Marketing', 103),
-- Department 5
(5, 'Finance', 104),
-- Add more departments as needed
(6, 'Operations', 105),
(7, 'Research', 106),
-- Add more departments as needed
(8, 'Customer Service', 107),
(9, 'Production', 108),
-- Add more departments as needed
(10, 'Quality Control', 109);


-- Insert data into the Employees table
INSERT INTO Employees (employee_id, `first name`, `last name`, `Date of Birst`, adress, `phone number`, email, `Hire Date`, `Job title`, dept_id)
VALUES
(1, 'John', 'Doe', '1990-05-15', '123 Main St, City', '555-123-4567', 'john.doe@email.com', '2020-01-15', 'HR Specialist', 1),
(2, 'Jane', 'Smith', '1985-08-21', '456 Elm St, City', '555-987-6543', 'jane.smith@email.com', '2019-11-10', 'IT Analyst', 2),
(3, 'Mark', 'Johnson', '1988-02-10', '789 Oak St, City', '555-456-7890', 'mark.johnson@email.com', '2021-03-22', 'Sales Rep', 3),
(4, 'Emily', 'Davis', '1992-07-04', '101 Pine St, City', '555-567-8901', 'emily.davis@email.com', '2018-09-05', 'Marketing Asst', 4),
(5, 'Michael', 'Brown', '1986-12-30', '222 Cedar St, City', '555-678-9012', 'michael.brown@email.com', '2022-05-18', 'Accountant', 5),
(6, 'Sarah', 'Wilson', '1993-04-08', '333 Oak St, City', '555-222-3333', 'sarah.wilson@email.com', '2020-11-25', 'IT Specialist', 2),
(7, 'David', 'Clark', '1991-09-19', '444 Elm St, City', '555-111-2222', 'david.clark@email.com', '2019-07-15', 'Sales Manager', 3),
(8, 'Lisa', 'Anderson', '1994-03-12', '555 Pine St, City', '555-999-8888', 'lisa.anderson@email.com', '2022-03-01', 'Marketing Specialist', 4),
(9, 'Robert', 'Turner', '1989-11-02', '666 Cedar St, City', '555-777-6666', 'robert.turner@email.com', '2020-02-20', 'Financial Analyst', 5),
(10, 'Mary', 'Garcia', '1997-01-25', '777 Maple St, City', '555-333-4444', 'mary.garcia@email.com', '2017-08-10', 'HR Assistant', 1),
(11, 'William', 'Moore', '1987-06-11', '888 Elm St, City', '555-555-5555', 'william.moore@email.com', '2021-10-05', 'IT Support', 2),
(12, 'Jennifer', 'White', '1998-12-02', '999 Oak St, City', '555-666-7777', 'jennifer.white@email.com', '2018-03-15', 'Sales Assistant', 3),
-- Employee 13
(13, 'Daniel', 'Wilson', '1993-09-30', '111 Pine St, City', '555-222-1111', 'daniel.wilson@email.com', '2020-06-20', 'Marketing Coordinator', 4),
-- Add more employees as needed
-- Employee 14
(14, 'Patricia', 'Martinez', '1995-03-22', '222 Cedar St, City', '555-444-3333', 'patricia.martinez@email.com', '2019-09-10', 'Financial Assistant', 5),
-- Add more employees as needed
(15, 'Christopher', 'Hall', '1991-05-14', '111 Oak St, City', '555-111-4444', 'christopher.hall@email.com', '2022-02-18', 'HR Coordinator', 1),
-- Add more employees as needed
(16, 'Kimberly', 'Young', '1996-08-29', '555 Elm St, City', '555-555-6666', 'kimberly.young@email.com', '2018-04-12', 'IT Technician', 2),
-- Employee 17
(17, 'Joseph', 'Harris', '1988-07-06', '777 Main St, City', '555-999-2222', 'joseph.harris@email.com', '2023-01-20', 'Sales Coordinator', 3),
-- Add more employees as needed
(18, 'Amanda', 'Scott', '1990-11-05', '333 Oak St, City', '555-444-1111', 'amanda.scott@email.com', '2020-05-22', 'Marketing Specialist', 4),
-- Employee 19
(19, 'Kevin', 'Gonzalez', '1997-02-18', '444 Cedar St, City', '555-777-3333', 'kevin.gonzalez@email.com', '2019-08-30', 'Financial Analyst', 5),
-- Add more employees as needed
(20, 'Linda', 'Walker', '1992-03-09', '555 Pine St, City', '555-555-9999', 'linda.walker@email.com', '2021-06-02', 'HR Assistant', 1),
-- Add more employees as needed
(21, 'Michael', 'Moore', '1995-10-12', '666 Elm St, City', '555-333-2222', 'michael.moore@email.com', '2020-12-10', 'IT Specialist', 2),
-- Add more employees as needed
(22, 'Susan', 'Gonzalez', '1993-01-30', '777 Oak St, City', '555-111-7777', 'susan.gonzalez@email.com', '2019-03-25', 'Sales Manager', 3),
-- Employee 23
(23, 'Edward', 'King', '1988-04-15', '888 Cedar St, City', '555-222-3333', 'edward.king@email.com', '2022-07-15', 'Marketing Specialist', 4),
-- Add more employees as needed
(24, 'Karen', 'Brown', '1994-06-22', '999 Cedar St, City', '555-444-5555', 'karen.brown@email.com', '2021-09-05', 'Financial Analyst', 5),
-- Add more employees as needed
-- Employee 25
(25, 'William', 'Davis', '1991-07-18', '111 Elm St, City', '555-666-7777', 'william.davis@email.com', '2018-02-10', 'HR Assistant', 1),
-- Employee 26
(26, 'Dorothy', 'Jackson', '1999-02-05', '222 Oak St, City', '555-999-6666', 'dorothy.jackson@email.com', '2022-10-22', 'IT Support', 2),
-- Employee 27
(27, 'James', 'Lee', '1996-09-10', '333 Pine St, City', '555-555-3333', 'james.lee@email.com', '2023-03-05', 'Sales Assistant', 3),
-- Employee 28
(28, 'Nancy', 'Harris', '1992-11-14', '444 Oak St, City', '555-444-2222', 'nancy.harris@email.com', '2020-08-20', 'Marketing Coordinator', 4),
-- Employee 29
(29, 'Charles', 'Martinez', '1998-05-30', '555 Main St, City', '555-111-9999', 'charles.martinez@email.com', '2019-01-12', 'Financial Assistant', 5),
-- Employee 30
(30, 'Sarah', 'Clark', '1995-03-18', '666 Pine St, City', '555-666-4444', 'sarah.clark@email.com', '2021-04-10', 'HR Coordinator', 1),
-- Add more employees as needed
-- Employee 31
(31, 'David', 'Anderson', '1991-08-22', '777 Elm St, City', '555-222-1111', 'david.anderson@email.com', '2023-02-15', 'IT Technician', 2),
-- Employee 32
(32, 'Laura', 'Hall', '1989-12-08', '888 Main St, City', '555-777-2222', 'laura.hall@email.com', '2019-10-10', 'Sales Coordinator', 3),
-- Employee 33
(33, 'Richard', 'Rodriguez', '1993-02-12', '999 Elm St, City', '555-555-4444', 'richard.rodriguez@email.com', '2022-05-25', 'Marketing Specialist', 4),
-- Employee 34
(34, 'Susan', 'Garcia', '1997-06-14', '111 Cedar St, City', '555-111-8888', 'susan.garcia@email.com', '2018-07-20', 'Financial Analyst', 5),
-- Employee 35
(35, 'Robert', 'Williams', '1992-09-18', '222 Main St, City', '555-999-4444', 'robert.williams@email.com', '2021-08-10', 'HR Assistant', 1),
-- Employee 36
(36, 'Patricia', 'Young', '1994-11-25', '333 Elm St, City', '555-666-1111', 'patricia.young@email.com', '2019-09-22', 'IT Specialist', 2),
-- Employee 37
(37, 'Linda', 'Brown', '1995-05-02', '444 Main St, City', '555-777-7777', 'linda.brown@email.com', '2022-07-15', 'Sales Manager', 3),
-- Employee 38
(38, 'James', 'Hernandez', '1988-07-18', '555 Elm St, City', '555-444-5555', 'james.hernandez@email.com', '2018-09-05', 'Marketing Specialist', 4),
-- Employee 39
(39, 'Karen', 'White', '1991-09-22', '666 Oak St, City', '555-111-3333', 'karen.white@email.com', '2020-11-12', 'Financial Analyst', 5),
-- Employee 40
(40, 'William', 'Thomas', '1996-12-30', '777 Cedar St, City', '555-555-6666', 'william.thomas@email.com', '2021-04-10', 'HR Coordinator', 1),
-- Add more employees as needed
-- Employee 41
(41, 'Dorothy', 'Gonzalez', '1999-01-15', '111 Main St, City', '555-999-2222', 'dorothy.gonzalez@email.com', '2019-10-22', 'IT Support', 2),
-- Employee 42
(42, 'James', 'King', '1996-05-18', '222 Elm St, City', '555-666-3333', 'james.king@email.com', '2022-02-15', 'Sales Assistant', 3),
-- Employee 43
(43, 'Nancy', 'Jones', '1992-08-28', '333 Main St, City', '555-777-1111', 'nancy.jones@email.com', '2018-05-20', 'Marketing Coordinator', 4),
-- Employee 44
(44, 'Daniel', 'Davis', '1995-03-12', '444 Cedar St, City', '555-555-3333', 'daniel.davis@email.com', '2021-08-15', 'Financial Assistant', 5),
-- Employee 45
(45, 'Karen', 'Williams', '1997-07-25', '555 Oak St, City', '555-111-4444', 'karen.williams@email.com', '2020-02-10', 'HR Assistant', 1),
-- Employee 46
(46, 'David', 'Brown', '1992-04-02', '666 Elm St, City', '555-999-6666', 'david.brown@email.com', '2023-01-25', 'IT Specialist', 2),
-- Employee 47
(47, 'Susan', 'Davis', '1993-10-08', '777 Main St, City', '555-444-5555', 'susan.davis@email.com', '2018-09-15', 'Sales Manager', 3),
-- Employee 48
(48, 'Richard', 'Jackson', '1988-02-14', '888 Elm St, City', '555-111-3333', 'richard.jackson@email.com', '2022-03-20', 'Marketing Specialist', 4),
-- Employee 49
(49, 'Jennifer', 'Garcia', '1994-01-11', '999 Oak St, City', '555-555-2222', 'jennifer.garcia@email.com', '2019-12-12', 'Financial Analyst', 5),
-- Employee 50
(50, 'Michael', 'Lopez', '1991-12-30', '111 Cedar St, City', '555-666-1111', 'michael.lopez@email.com', '2020-07-05', 'HR Coordinator', 1),
-- Add more employees as needed
-- Employee 51
(51, 'Kimberly', 'Smith', '1996-05-20', '222 Oak St, City', '555-999-5555', 'kimberly.smith@email.com', '2018-11-10', 'IT Technician', 2),
-- Employee 52
(52, 'Joseph', 'Johnson', '1987-08-28', '333 Elm St, City', '555-777-4444', 'joseph.johnson@email.com', '2022-05-15', 'Sales Coordinator', 3),
-- Employee 53
(53, 'Amanda', 'Thomas', '1992-10-15', '444 Main St, City', '555-444-6666', 'amanda.thomas@email.com', '2019-04-20', 'Marketing Specialist', 4),
-- Employee 54
(54, 'Charles', 'Davis', '1998-02-28', '555 Cedar St, City', '555-111-2222', 'charles.davis@email.com', '2021-06-10', 'Financial Analyst', 5),
-- Employee 55
(55, 'Mary', 'Anderson', '1995-04-05', '666 Oak St, City', '555-555-7777', 'mary.anderson@email.com', '2020-07-22', 'HR Assistant', 1),
-- Employee 56
(56, 'William', 'Young', '1994-11-10', '777 Main St, City', '555-666-4444', 'william.young@email.com', '2022-04-15', 'IT Specialist', 2),
-- Employee 57
(57, 'Laura', 'Brown', '1998-02-12', '888 Elm St, City', '555-777-1111', 'laura.brown@email.com', '2019-08-20', 'Sales Manager', 3),
-- Employee 58
(58, 'Richard', 'Scott', '1993-05-18', '999 Oak St, City', '555-444-5555', 'richard.scott@email.com', '2023-03-10', 'Marketing Specialist', 4),
-- Employee 59
(59, 'Susan', 'Clark', '1997-08-22', '111 Cedar St, City', '555-111-3333', 'susan.clark@email.com', '2018-07-15', 'Financial Analyst', 5),
-- Employee 60
(60, 'Edward', 'Hall', '1990-12-30', '555 Elm St, City', '555-999-4444', 'edward.hall@email.com', '2021-12-22', 'HR Assistant', 1),
-- Add more employees as needed
-- Employee 61
(61, 'Karen', 'Moore', '1996-04-05', '111 Oak St, City', '555-555-5555', 'karen.moore@email.com', '2019-04-15', 'IT Support', 2),
-- Employee 62
(62, 'James', 'Hernandez', '1991-08-18', '222 Elm St, City', '555-666-6666', 'james.hernandez@email.com', '2022-06-10', 'Sales Assistant', 3),
-- Employee 63
(63, 'Nancy', 'Harris', '1989-02-12', '333 Main St, City', '555-777-7777', 'nancy.harris@email.com', '2018-05-20', 'Marketing Coordinator', 4),
-- Employee 64
(64, 'Robert', 'Anderson', '1995-04-18', '444 Cedar St, City', '555-444-4444', 'robert.anderson@email.com', '2021-09-22', 'Financial Assistant', 5),
-- Employee 65
(65, 'Patricia', 'Clark', '1998-07-22', '555 Main St, City', '555-111-1111', 'patricia.clark@email.com', '2019-10-15', 'HR Coordinator', 1),
-- Add more employees as needed
-- Employee 66
(66, 'Charles', 'Thomas', '1996-09-30', '666 Oak St, City', '555-999-9999', 'charles.thomas@email.com', '2022-05-15', 'IT Technician', 2),
-- Employee 67
(67, 'Mary', 'Harris', '1987-07-18', '777 Elm St, City', '555-777-6666', 'mary.harris@email.com', '2022-03-10', 'Sales Coordinator', 3),
-- Employee 68
(68, 'William', 'Davis', '1992-10-22', '888 Elm St, City', '555-444-1111', 'william.davis@email.com', '2019-08-22', 'Marketing Specialist', 4),
-- Employee 69
(69, 'Dorothy', 'Smith', '1998-03-12', '999 Oak St, City', '555-111-6666', 'dorothy.smith@email.com', '2023-02-15', 'Financial Analyst', 5),
-- Employee 70
(70, 'James', 'Wilson', '1991-07-25', '111 Cedar St, City', '555-666-7777', 'james.wilson@email.com', '2020-02-10', 'HR Assistant', 1),
-- Add more employees as needed
-- Employee 71
(71, 'Susan', 'Brown', '1994-04-02', '222 Elm St, City', '555-999-5555', 'susan.brown@email.com', '2022-12-25', 'IT Specialist', 2),
-- Employee 72
(72, 'Edward', 'Hernandez', '1995-10-08', '333 Main St, City', '555-777-7777', 'edward.hernandez@email.com', '2019-07-15', 'Sales Manager', 3),
-- Employee 73
(73, 'Richard', 'Thomas', '1990-02-14', '444 Elm St, City', '555-444-4444', 'richard.thomas@email.com', '2018-08-20', 'Marketing Specialist', 4),
-- Employee 74
(74, 'Jennifer', 'Smith', '1997-05-11', '555 Oak St, City', '555-111-3333', 'jennifer.smith@email.com', '2023-01-12', 'Financial Analyst', 5),
-- Employee 75
(75, 'Karen', 'Johnson', '1992-09-15', '666 Oak St, City', '555-999-1111', 'karen.johnson@email.com', '2022-03-05', 'HR Coordinator', 1),
-- Add more employees as needed
-- Employee 76
(76, 'Michael', 'Davis', '1994-11-20', '777 Elm St, City', '555-666-6666', 'michael.davis@email.com', '2019-10-10', 'IT Technician', 2),
-- Employee 77
(77, 'Linda', 'Martinez', '1998-03-22', '888 Elm St, City', '555-777-1111', 'linda.martinez@email.com', '2022-02-15', 'Sales Assistant', 3),
-- Employee 78
(78, 'Susan', 'Clark', '1993-05-28', '999 Elm St, City', '555-444-5555', 'susan.clark@email.com', '2018-04-20', 'Marketing Coordinator', 4),
-- Employee 79
(79, 'Charles', 'Harris', '1997-09-30', '111 Cedar St, City', '555-111-6666', 'charles.harris@email.com', '2022-01-15', 'Financial Assistant', 5),
-- Employee 80
(80, 'Mary', 'Garcia', '1995-08-12', '222 Cedar St, City', '555-666-7777', 'mary.garcia@email.com', '2020-09-10', 'HR Coordinator', 1),
-- Add more employees as needed
-- Employee 81
(81, 'William', 'Scott', '1996-02-28', '333 Oak St, City', '555-777-5555', 'william.scott@email.com', '2021-11-15', 'IT Technician', 2),
-- Employee 82
(82, 'Laura', 'Anderson', '1991-04-08', '444 Elm St, City', '555-444-6666', 'laura.anderson@email.com', '2019-07-22', 'Sales Manager', 3),
-- Employee 83
(83, 'Richard', 'Wilson', '1989-10-12', '555 Oak St, City', '555-999-1111', 'richard.wilson@email.com', '2023-03-10', 'Marketing Specialist', 4),
-- Employee 84
(84, 'Susan', 'Thomas', '1993-06-14', '666 Cedar St, City', '555-444-5555', 'susan.thomas@email.com', '2018-08-20', 'Financial Analyst', 5),
-- Employee 85
(85, 'Daniel', 'Hernandez', '1998-01-25', '777 Cedar St, City', '555-666-4444', 'daniel.hernandez@email.com', '2020-12-02', 'HR Coordinator', 1),
-- Add more employees as needed
-- Employee 86
(86, 'Karen', 'Davis', '1992-04-05', '555 Elm St, City', '555-777-7777', 'karen.davis@email.com', '2022-03-25', 'IT Specialist', 2),
-- Employee 87
(87, 'James', 'Clark', '1993-11-08', '777 Main St, City', '555-444-5555', 'james.clark@email.com', '2019-06-15', 'Sales Manager', 3),
-- Employee 88
(88, 'Nancy', 'Harris', '1994-02-14', '444 Elm St, City', '555-777-1111', 'nancy.harris@email.com', '2018-09-20', 'Marketing Specialist', 4),
-- Employee 89
(89, 'Robert', 'Smith', '1997-05-11', '111 Cedar St, City', '555-111-3333', 'robert.smith@email.com', '2022-05-12', 'Financial Assistant', 5),
-- Employee 90
(90, 'Michael', 'Martinez', '1992-09-15', '222 Cedar St, City', '555-999-1111', 'michael.martinez@email.com', '2020-08-05', 'HR Coordinator', 1),
-- Add more employees as needed
-- Employee 91
(91, 'William', 'Thomas', '1996-02-28', '333 Oak St, City', '555-777-5555', 'william.thomas@email.com', '2021-07-15', 'IT Technician', 2),
-- Employee 92
(92, 'Laura', 'Wilson', '1991-04-08', '444 Elm St, City', '555-444-6666', 'laura.wilson@email.com', '2019-05-22', 'Sales Manager', 3),
-- Employee 93
(93, 'Richard', 'Scott', '1989-10-12', '555 Oak St, City', '555-999-1111', 'richard.scott@email.com', '2023-03-10', 'Marketing Specialist', 4),
-- Employee 94
(94, 'Susan', 'Clark', '1993-06-14', '666 Cedar St, City', '555-444-5555', 'susan.clark@email.com', '2018-08-20', 'Financial Analyst', 5),
-- Employee 95
(95, 'Daniel', 'Hernandez', '1998-01-25', '777 Cedar St, City', '555-666-4444', 'daniel.hernandez@email.com', '2020-11-02', 'HR Coordinator', 1),
-- Add more employees as needed
-- Employee 96
(96, 'Karen', 'Davis', '1992-04-05', '555 Elm St, City', '555-777-7777', 'karen.davis@email.com', '2022-02-25', 'IT Specialist', 2),
-- Employee 97
(97, 'James', 'Clark', '1993-11-08', '777 Main St, City', '555-444-5555', 'james.clark@email.com', '2019-06-15', 'Sales Manager', 3),
-- Employee 98
(98, 'Nancy', 'Harris', '1994-02-14', '444 Elm St, City', '555-777-1111', 'nancy.harris@email.com', '2018-09-20', 'Marketing Specialist', 4),
-- Employee 99
(99, 'Robert', 'Smith', '1997-05-11', '111 Cedar St, City', '555-111-3333', 'robert.smith@email.com', '2022-05-12', 'Financial Assistant', 5),
-- Employee 100
(100, 'Michael', 'Martinez', '1992-09-15', '222 Cedar St, City', '555-999-1111', 'michael.martinez@email.com', '2020-08-05', 'HR Coordinator', 1);

-- Insert data into the Salary table
INSERT INTO Salary (employee_id, `Salary amount`, `Effective date`, Comment)
VALUES
-- Employee 1
(1, 60000.00, '2023-01-01', 'He is good'),
-- Employee 2
(2, 55000.00, '2023-01-01', 'He is not good'),
-- Add more salary records as needed
(3, 62000.00, '2023-01-01', NULL),
-- Employee 4
(4, 50000.00, '2023-01-01', NULL),
-- Employee 5
(5, 70000.00, '2023-01-01', NULL),
-- Add more salary records as needed
(6, 55000.00, '2023-01-01', NULL),
(7, 70000.00, '2023-01-01', NULL),
-- Add more salary records as needed
(8, 48000.00, '2023-01-01', NULL),
(9, 75000.00, '2023-01-01', NULL),
-- Add more salary records as needed
(10, 52000.00, '2023-01-01', NULL),
-- Employee 11
(11, 58000.00, '2023-01-01', NULL),
-- Add more salary records as needed
-- Employee 12
(12, 52000.00, '2023-01-01', NULL),
-- Employee 13
(13, 63000.00, '2023-01-01', NULL),
-- Add more salary records as needed
-- Employee 14
(14, 48000.00, '2023-01-01', NULL),
-- Add more salary records as needed
(15, 67000.00, '2023-01-01', NULL),
-- Add more salary records as needed
(16, 56000.00, '2023-01-01', NULL),
-- Employee 17
(17, 62000.00, '2023-01-01', NULL),
-- Add more salary records as needed
(18, 54000.00, '2023-01-01', NULL),
-- Employee 19
(19, 76000.00, '2023-01-01', NULL),
-- Add more salary records as needed
(20, 52000.00, '2023-01-01', NULL),
-- Add more salary records as needed
(21, 60000.00, '2023-01-01', NULL),
-- Add more salary records as needed
(22, 70000.00, '2023-01-01', NULL),
-- Employee 23
(23, 53000.00, '2023-01-01', NULL),
-- Add more salary records as needed
(24, 74000.00, '2023-01-01', NULL),
-- Add more salary records as needed
-- Employee 25
(25, 51000.00, '2023-01-01', NULL),
-- Employee 26
(26, 60000.00, '2023-01-01', NULL),
-- Employee 27
(27, 55000.00, '2023-01-01', NULL),
-- Employee 28
(28, 52000.00, '2023-01-01', NULL),
-- Employee 29
(29, 62000.00, '2023-01-01', NULL),
-- Employee 30
(30, 58000.00, '2023-01-01', NULL),
-- Add more salary records as needed
-- Employee 31
(31, 54000.00, '2023-01-01', NULL),
-- Employee 32
(32, 65000.00, '2023-01-01', NULL),
-- Employee 33
(33, 57000.00, '2023-01-01', NULL),
-- Employee 34
(34, 70000.00, '2023-01-01', NULL),
-- Employee 35
(35, 51000.00, '2023-01-01', NULL),
-- Employee 36
(36, 60000.00, '2023-01-01', NULL),
-- Employee 37
(37, 55000.00, '2023-01-01', NULL),
-- Employee 38
(38, 53000.00, '2023-01-01', NULL),
-- Employee 39
(39, 63000.00, '2023-01-01', NULL),
-- Employee 40
(40, 59000.00, '2023-01-01', NULL),
-- Add more salary records as needed
-- Employee 41
(41, 55000.00, '2023-01-01', NULL),
-- Employee 42
(42, 67000.00, '2023-01-01', NULL),
-- Employee 43
(43, 58000.00, '2023-01-01', NULL),
-- Employee 44
(44, 51000.00, '2023-01-01', NULL),
-- Employee 45
(45, 74000.00, '2023-01-01', NULL),
-- Employee 46
(46, 52000.00, '2023-01-01', NULL),
-- Employee 47
(47, 71000.00, '2023-01-01', NULL),
-- Employee 48
(48, 54000.00, '2023-01-01', NULL),
-- Employee 49
(49, 65000.00, '2023-01-01', NULL),
-- Employee 50
(50, 56000.00, '2023-01-01', NULL),
-- Add more salary records as needed
-- Employee 51
(51, 53000.00, '2023-01-01', NULL),
-- Employee 52
(52, 62000.00, '2023-01-01', NULL),
-- Employee 53
(53, 52000.00, '2023-01-01', NULL),
-- Employee 54
(54, 76000.00, '2023-01-01', NULL),
-- Employee 55
(55, 54000.00, '2023-01-01', NULL),
-- Employee 56
(56, 52000.00, '2023-01-01', NULL),
-- Employee 57
(57, 60000.00, '2023-01-01', NULL),
-- Employee 58
(58, 70000.00, '2023-01-01', NULL),
-- Employee 59
(59, 53000.00, '2023-01-01', NULL),
-- Employee 60
(60, 74000.00, '2023-01-01', NULL),
-- Add more salary records as needed
-- Employee 61
(61, 51000.00, '2023-01-01', NULL),
-- Employee 62
(62, 60000.00, '2023-01-01', NULL),
-- Employee 63
(63, 55000.00, '2023-01-01', NULL),
-- Employee 64
(64, 52000.00, '2023-01-01', NULL),
-- Employee 65
(65, 61000.00, '2023-01-01', NULL),
-- Employee 66
(66, 58000.00, '2023-01-01', NULL),
-- Employee 67
(67, 53000.00, '2023-01-01', NULL),
-- Employee 68
(68, 67000.00, '2023-01-01', NULL),
-- Employee 69
(69, 58000.00, '2023-01-01', NULL),
-- Employee 70
(70, 55000.00, '2023-01-01', NULL),
-- Add more salary records as needed
-- Employee 71
(71, 52000.00, '2023-01-01', NULL),
-- Employee 72
(72, 64000.00, '2023-01-01', NULL),
-- Employee 73
(73, 57000.00, '2023-01-01', NULL),
-- Employee 74
(74, 69000.00, '2023-01-01', NULL),
-- Employee 75
(75, 53000.00, '2023-01-01', NULL),
-- Employee 76
(76, 58000.00, '2023-01-01', NULL),
-- Employee 77
(77, 51000.00, '2023-01-01', NULL),
-- Employee 78
(78, 72000.00, '2023-01-01', NULL),
-- Employee 79
(79, 56000.00, '2023-01-01', NULL),
-- Employee 80
(80, 55000.00, '2023-01-01', NULL),
-- Add more salary records as needed
-- Employee 81
(81, 54000.00, '2023-01-01', NULL),
-- Employee 82
(82, 68000.00, '2023-01-01', NULL),
-- Employee 83
(83, 55000.00, '2023-01-01', NULL),
-- Employee 84
(84, 77000.00, '2023-01-01', NULL),
-- Employee 85
(85, 52000.00, '2023-01-01', NULL),
-- Employee 86
(86, 52000.00, '2023-01-01', NULL),
-- Employee 87
(87, 59000.00, '2023-01-01', NULL),
-- Employee 88
(88, 71000.00, '2023-01-01', NULL),
-- Employee 89
(89, 52000.00, '2023-01-01', NULL),
-- Employee 90
(90, 73000.00, '2023-01-01', NULL),
-- Add more salary records as needed
-- Employee 91
(91, 52000.00, '2023-01-01', NULL),
-- Employee 92
(92, 64000.00, '2023-01-01', NULL),
-- Employee 93
(93, 57000.00, '2023-01-01', NULL),
-- Employee 94
(94, 69000.00, '2023-01-01', NULL),
-- Employee 95
(95, 53000.00, '2023-01-01', NULL),
-- Employee 96
(96, 58000.00, '2023-01-01', NULL),
-- Employee 97
(97, 51000.00, '2023-01-01', NULL),
-- Employee 98
(98, 72000.00, '2023-01-01', NULL),
-- Employee 99
(99, 56000.00, '2023-01-01', NULL),
-- Employee 100
(100, 55000.00, '2023-01-01', NULL);

SELECT * FROM Employees WHERE YEAR(`Hire Date`) = '2020';


SELECT D.dept_name, AVG(S.`Salary amount`) AS avg_salary
FROM Employees E
JOIN Department D ON E.dept_id = D.dept_id
JOIN Salary S ON E.employee_id = S.employee_id
GROUP BY D.dept_name;

UPDATE Employees
SET `Job title` = 'Marketing Asst'
WHERE employee_id = 1;

UPDATE department
SET dept_name = 'Marketing'
WHERE dept_id = 1;

UPDATE Employees
SET `Job title` = 'Marketing Asst'
WHERE employee_id = 1;


SELECT E1.employee_id, E1.`first name`, E1.`last name`, E1.`Job title`, d1.dept_name
FROM Employees E1
INNER JOIN Employees E2 ON E1.`Job title` = E2.`Job title`
INNER JOIN Department d1 ON E1.dept_id = d1.dept_id
INNER JOIN Department d2 ON E2.dept_id = d2.dept_id
WHERE E1.employee_id <> E2.employee_id;


SELECT D.dept_name, YEAR(S.`Effective date`) AS salary_year, SUM(S.`Salary amount`) AS total_salary_budget
FROM Salary S
JOIN Employees E ON S.employee_id = E.employee_id
JOIN Department D ON E.dept_id = D.dept_id
WHERE YEAR(S.`Effective date`) = 2023  -- Replace '2022' with the desired year
GROUP BY D.dept_name, YEAR(S.`Effective date`);


SELECT E.employee_id, E.`first name`, E.`last name`, E.`Job title`, year(E.`Hire Date`)
FROM Employees E
WHERE DATEDIFF(CURRENT_DATE, E.`Hire Date`) >= 730  -- Two years have 730 days
AND E.employee_id NOT IN (
    SELECT S1.employee_id
    FROM Salary S1
    JOIN Salary S2 ON S1.employee_id = S2.employee_id
    WHERE YEAR(S1.`Effective date`) = YEAR(CURRENT_DATE) - 2
      AND YEAR(S2.`Effective date`) = YEAR(CURRENT_DATE)
      AND S1.`Salary amount` <> S2.`Salary amount`
);


SELECT D.dept_name, AVG(S.`Salary amount`) AS avg_salary
FROM Employees E
JOIN Department D ON E.dept_id = D.dept_id
JOIN Salary S ON E.employee_id = S.employee_id
GROUP BY D.dept_name
ORDER BY AVG(S.`Salary amount`) DESC
LIMIT 1;












