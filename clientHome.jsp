<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Client Home Page</title>
  
  <style>
    body {
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
      margin: 0;
      flex-direction: column; /* Align items vertically */
      font-family: Arial, sans-serif;
    }

    h1 {
      color: rgb(35, 187, 174);
    }

    p {
      text-align: center;
    }

    input[type="text"] {
      margin: 10px;
      padding: 8px;
      width: 300px;
      box-sizing: border-box; /* Include padding and border in the element's total width and height */
    }

    input[type="submit"],
    input[type="reset"],
    input[type="button"] {
      margin: 5px;
      padding: 8px;
      width: 150px;
      box-sizing: border-box;
    }

    /* Style for the output area */
    textarea {
      margin: 10px;
      padding: 8px;
      width: 800px;
      height: 200px;
      box-sizing: border-box;
      resize: none; /* Prevent resizing of the textarea */
    }

    /* Style for the line/separator */
    hr {
      margin: 20px 0;
      width: 100%; /* Adjust the width as needed */
      border: 1px solid #ccc; /* Border color */
    }
  </style>
  
  <script>
      function resetForm() {
        document.getElementById('sqlCommandInput').value = " "; // Clear the input field
		}

      function clearResults() {
        document.getElementById('output').value = " "
      }
  </script>
  
</head>
<body>
  <h1 style='color: rgb(50, 35, 187);'>Project 4:</h1>
  <h2 style='color: rgb(35, 19, 129);'>A Servlet/JSP-based Multi-Tiered Application Using a Tomcat Container</h2>
  <h3 style='color: rgb(28, 141, 194);'>- Client Home Page -</h3>
  <p>Please enter an SQL Command</p>

 <form action="/project-4/ClientHomeServlet" method="post">
 
	  <!-- Text box for entering an SQL query command -->
	  <input type='text' id='sqlCommandInput' name='sqlCommand' placeholder='Enter an SQL command here:' value=''>
	  
	  <!-- Buttons for Execute, Reset Form, and Clear Results -->
	  <input type="submit" value="Execute">
	  <input type="reset" value="Reset Form" onclick ="resetForm()">
	  <input type="button" value="Clear Results" onclick="clearResults()">
		<hr>

  </form>

</body>
</html>
