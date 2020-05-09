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
manager_id INT,
PRIMARY KEY(id)
);

INSERT INTO department (name) VALUES ("Management");
INSERT INTO department (name) VALUES ("Development");
INSERT INTO department (name) VALUES ("Sales");
INSERT INTO department (name) VALUES ("Marketing");

INSERT INTO role (title, salary, department_id) VALUES ("Sales Exec", 100000, 3);
INSERT INTO role (title, salary, department_id) VALUES ("Lead Developer", 90000, 2);
INSERT INTO role (title, salary, department_id) VALUES ("Vice President", 150000, 1);
INSERT INTO role (title, salary, department_id) VALUES ("Marketing Lead", 85000, 4);
INSERT INTO role (title, salary, department_id) VALUES ("Junior Developer", 80000, 2);
INSERT INTO role (title, salary, department_id) VALUES ("Coffee Person", 50000, 3);
INSERT INTO role (title, salary, department_id) VALUES ("General Manager", 70000, 1);
INSERT INTO role (title, salary, department_id) VALUES ("Salesmen", 75000, 3);


INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Sam", "Whitwicky", 1, NULL);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Sarah", "Florn", 2,NULL);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Kraig", "Bjornson", 3,NULL);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Jareth", "Kerr", 4,NULL);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Emily", "Jarrit", 5,2);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Haley", "Mendrea", 6, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Nathan", "Darret", 7, 3);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Oliver", "Westbrook", 8, 4);
