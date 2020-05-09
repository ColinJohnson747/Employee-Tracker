const mysql = require("mysql");
const inquirer = require("inquirer");

let connection = mysql.createConnection({
  host: "localhost",
  // Your port; if not 3306
  port: 3306,
  // Your username
  user: "root",
  // Your password
  password: "password",
  database: "employee_tracker_db",
});
connection.connect(function (err) {
  if (err) throw err;
  promptMode();
});

const promptMode = () => {
  inquirer
    .prompt([
      {
        type: "list",
        name: "PickMode",
        message: "What would you like to do?",
        choices: [
          "View Departments",
          "View Employees",
          "View Roles",
          "Add Department",
          "Add Role",
          "Add employee",
          "Update Roles",
        ],
      },
    ])
    .then(function (answers) {
      if (answers.PickMode === "View Departments") {
      } else if (answers.PickMode === "View Employees") {
      } else if (answers.PickMode === "View Roles") {
      } else if (answers.PickMode === "Add Department") {
      } else if (answers.PickMode === "Add Role") {
      } else if (answers.PickMode === "Add employee") {
      } else if (answers.PickMode === "Update Roles") {
      } else if (answers.PickMode === "Exit") {
        process.exit();
      }
    });
};

const viewDepartments = () => {};
