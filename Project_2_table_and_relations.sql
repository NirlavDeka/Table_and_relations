CREATE DATABASE PROJECT_2

USE PROJECT_2

--Problem Statement:
--converting a relational design that enlists various users, their roles, user accounts and
--their statuses into different tables in SQL . CRETAEServer and insert data into them. Having at 
--least two rows in each of the tables, you have to ensure that you have created respective 
--foreign keys.
--Tasks Performed:
--● Define relations/attributes
--● Define primary keys
--● Create foreign keys

CREATE TABLE role(
	id INT PRIMARY KEY,
	role_name VARCHAR(100),
)

CREATE TABLE user_has_role(
	id INT PRIMARY KEY,
	role_start_date DATETIME,
	role_end_date DATETIME,
	user_account_id INT,
	role_id INT
)

CREATE TABLE user_account(
	id INT PRIMARY KEY,
	user_name VARCHAR(100),
	email VARCHAR(254),
	password VARCHAR(200),
	password_salt VARCHAR(50),
	password_hash_algorithm VARCHAR(50)
)


CREATE TABLE status(
	id INT PRIMARY KEY,
	status_name VARCHAR(100),
	is_user_working BIT
)

CREATE TABLE user_has_status(
	id INT PRIMARY KEY,
	status_start_time DATETIME,
	status_end_time DATETIME,
	user_account_id INT,
	status_id INT
)


ALTER TABLE user_has_role
ADD CONSTRAINT fk_role_id FOREIGN KEY (role_id) REFERENCES role(id),
    CONSTRAINT fk_user_account_id FOREIGN KEY (user_account_id) REFERENCES user_account(id);

ALTER TABLE user_has_status
ADD CONSTRAINT fk_user_account_id_1 FOREIGN KEY (user_account_id) REFERENCES user_account(id),
	CONSTRAINT fk_status_id FOREIGN KEY (status_id) REFERENCES status(id);




























































































































































































































































