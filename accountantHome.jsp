<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Accountant Home Page</title>
  <style>
    body {
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
      margin: 0;
      flex-direction: column;
      font-family: Arial, sans-serif;
    }

    h1 {
      color: rgb(200, 100, 250);
    }

    h2 {
      color: rgb(200, 80, 200);
    }

    h3 {
      color: rgb(200, 103, 150);
    }

    p {
      text-align: center;
      margin-bottom: 10px;
    }

    hr {
      margin: 20px 0;
      width: 80%;
      border: 1px solid #ccc;
    }

    label {
      margin: 5px;
    }

    input[type="text"] {
      margin: 10px;
      padding: 8px;
      width: 300px;
      box-sizing: border-box;
    }

    input[type="submit"],
    input[type="reset"],
    input[type="button"] {
      margin: 5px;
      padding: 8px;
      width: 150px;
      box-sizing: border-box;
    }

    input[type="radio"] {
      margin: 5px;
      transform: translateY(2px);
    }

    textarea {
      margin: 10px;
      padding: 8px;
      width: 800px;
      height: 200px;
      box-sizing: border-box;
      resize: none;
    }

    .result-message {
      font-weight: bold;
      margin-top: 10px;
    }

    .result-container {
      display: flex;
      flex-direction: column;
    }

    .result-item {
      padding: 10px;
      border: 1px solid #ccc;
      margin: 5px;
    }

    .error-message {
      color: red;
      font-weight: bold;
      margin-top: 10px;
    }
  </style>

  <script>
    function submitForm() {
      var form = document.getElementById("queryForm");
      var xhr = new XMLHttpRequest();

      xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
          document.getElementById("resultContainer").innerHTML = xhr.responseText;
        }
      };

      xhr.open("POST", form.action, true);
      xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
      xhr.send(new FormData(form));
    }
  </script>
</head>
<body>
  <h1>Project 4:</h1>
  <h2>A Servlet/JSP-based Multi-Tiered Application Using a Tomcat Container</h2>
  <h3>- Accountant Home Page -</h3>
  <p>You are connected to the Project 4 Enterprise System Database as an ACCOUNTANT LEVEL user.</p>
  <hr>
  <p> &nbsp;</p>
  <form id="queryForm" action="/project-4/AccountantServlet" method="post">
    <label><input type="radio" id = "option1" name="sqlQuery1" value="SELECT MAX(status)AS max_value FROM suppliers"> Get the Maximum Status Value of all Suppliers (Returns a maximum value)</label><br>
    <label><input type="radio" id = "option2" name="sqlQuery2" value="SELECT * FROM parts"> Get the Total Weight of all Parts (Returns a sum)</label><br>
	<label><input type="radio" id = "option3" name="sqlQuery3" value="SELECT * FROM shipments"> Get the Total Number of Shipments (Returns the current number of shipments in total)</label><br>
	<label><input type="radio" id = "option4" name="sqlQuery4" value="SELECT * FROM table1;"> Get the Name and Number of Workers From the Job With the most Workers (Returns two values)</label><br>
	<label><input type="radio" id = "option5" name="sqlQuery5" value="SELECT * FROM table1;"> List the Name and Status of Every Supplier (Return a list of supplier names with status)</label><br>
    <p> &nbsp;</p>
    <input type="button" value="Execute" onclick="submitForm()">
    <input type="reset" value="Reset Form">
  </form>
  <div id="resultContainer"></div>
</body>
</html>
