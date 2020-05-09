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
          "Exit",
        ],
      },
    ])
    .then(function (answers) {
      if (answers.PickMode === "View Departments") {
        viewDepartments();
      } else if (answers.PickMode === "View Employees") {
      } else if (answers.PickMode === "View Roles") {
        viewRoles();
      } else if (answers.PickMode === "Add Department") {
      } else if (answers.PickMode === "Add Role") {
      } else if (answers.PickMode === "Add employee") {
      } else if (answers.PickMode === "Update Roles") {
      } else if (answers.PickMode === "Exit") {
        process.exit();
      }
    });
};

const viewDepartments = () => {
  const query = "SELECT name FROM department";
  connection.query(query, (err, res) => {
    if (err) throw err;
    res.forEach((r) => console.log(`|| Department Name: ${r.name}||`));

    promptMode();
  });
};

const viewRoles = () => {
  const query = "SELECT * FROM role";
  connection.query(query, (err, res) => {
    if (err) throw err;
    res.forEach((r) =>
      console.log(`|| Role Title: ${r.title} || Role Salary: ${r.salary}`)
    );

    promptMode();
  });
};
