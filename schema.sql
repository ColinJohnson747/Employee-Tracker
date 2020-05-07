DROP DATABASE IF EXISTS employee_tracker_db;

-- Created the DB "wizard_schools_db" (only works on local connections)
CREATE DATABASE employee_tracker_db;

-- Use the DB wizard_schools_db for all the rest of the script
USE employee_tracker_db;

-- Created the table "schools"
CREATE TABLE department (
  id int AUTO_INCREMENT NOT NULL,
  name varchar(30) NOT NULL,
    PRIMARY KEY(id)
);


CREATE TABLE role (
  id int AUTO_INCREMENT NOT NULL,
  title varchar(30) NOT NULL,
  salary DECIMAL(8,2)
  department_id INT NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE employee(
id int AUTO_INCREMENT NOT NULL,
first_name VARCHAR(40) NOT NULL,
last_name VARCHAR(40) NOT NULL,
role_id INT NOT NULL,
manager_id INT    
);