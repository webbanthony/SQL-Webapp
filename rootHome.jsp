<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Root Home Page</title>
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
        document.getElementById('sqlCommandInput').value = ''; // Clear the input field
		}
  </script>
  
</head>
<body>
  <h1 style='color: rgb(187, 45, 35);'>Project 4:</h1>
  <h2 style='color: rgb(129, 35, 19);'>A Servlet/JSP-based Multi-Tiered Application Using a Tomcat Container</h2>
  <h3 style='color: rgb(214, 103, 12);'>- Root Home Page -</h3>
  
    <!-- Use a null action to test the form !-->
  <form action = "/project-4/RootHomeServlet" method ="post">
	  <p>Please enter an SQL query command in the text box below:</p>
	  <!-- Text box for entering an SQL query command -->
	  <input type="text" name="sqlCommand" placeholder="Enter a command here">
	  

	  <!-- Buttons for Execute, Reset Form, and Clear Results -->
	  <input type="submit" value="Execute">
	  <input type="reset" value="Reset Form">
	  <input type="button" value="Clear Results">
	  <hr>
  </form>	
</body>
</html>
