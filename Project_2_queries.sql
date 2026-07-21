--1. Insert data into each of the above tables. With at least two rows in each of
--   the tables. Make sure that you have created respective foreign keys.

-- A. Insert into role
INSERT INTO role (id, role_name) 
VALUES 
    (1, 'Administrator'),
    (2, 'Software Engineer');

-- B. Insert into status
INSERT INTO status (id, status_name, is_user_working) 
VALUES 
    (1, 'Active', 1),
    (2, 'On Leave', 0);

-- C. Insert into user_account
INSERT INTO user_account (id, user_name, email, password, password_salt, password_hash_algorithm) 
VALUES 
    (1, 'jdoe', 'john.doe@example.com', 'e10adc3949ba59abbe56e057f20f883e', 's3cr3tSalt1', 'SHA-256'),
    (2, 'asmith', 'alice.smith@example.com', 'c33367701511b4f6020ec61ded352059', 's3cr3tSalt2', 'SHA-256');

-- D. Insert into user_has_role
INSERT INTO user_has_role (id, role_start_date, role_end_date, user_account_id, role_id) 
VALUES 
    (1, '2024-01-01 09:00:00', NULL, 1, 1),
    (2, '2024-03-15 09:00:00', '2025-03-15 18:00:00', 2, 2);

-- E. Insert into user_has_status
INSERT INTO user_has_status (id, status_start_time, status_end_time, user_account_id, status_id) 
VALUES 
    (1, '2024-01-01 09:00:00', NULL, 1, 1),
    (2, '2024-06-01 00:00:00', '2024-06-15 23:59:59', 2, 2);


SELECT * FROM role
SELECT * FROM user_account
SELECT * FROM user_has_role
SELECT * FROM user_has_status
SELECT * FROM status

--2. Delete all the data from each of the tables.
DELETE FROM user_has_role   -- DELETE CHILDREN TABLES FIRST  
DELETE FROM user_has_status -- "      "        "      "
DELETE FROM status          -- THEN DELETE THE PARENTS TABLE
DELETE FROM role
DELETE FROM user_account