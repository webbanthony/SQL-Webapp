<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Data Entry Home Page</title>
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

    h2 {
      color: rgb(19, 36, 129);
    }

    h3 {
      color: rgb(28, 67, 194);
    }

    hr {
      margin: 20px 0;
      width: 80%; /* Adjust the width as needed */
      border: 1px solid #ccc; /* Border color */
    }

    .entry-box {
      border: 2px solid #ccc;
      border-radius: 8px;
      padding: 10px;
      margin: 10px;
      width: 80%; /* Adjust the width as needed */
    }

    .entry-box label {
      display: block;
      margin-bottom: 5px;
    }

    .entry-container {
      display: flex;
      justify-content: space-between;
    }

    .entry-column {
      flex: 1;
      margin: 10px;
    }

    input[type="text"] {
      width: 100%;
      padding: 8px;
      box-sizing: border-box;
    }
  </style>

  <script>
  function executeSuppliers() {
      // Add logic to execute the action for Suppliers
      alert("Executing Suppliers Record Insert");
  }

  function executeParts() {
      // Add logic to execute the action for Suppliers
      alert("Executing Parts Record Insert");
  }

  function executeJobs() {
      // Add logic to execute the action for Suppliers
      alert("Executing Jobs Record Insert");
  }

  function executeShipments() {
      // Add logic to execute the action for Suppliers
      alert("Executing Shipments Record Insert");
  }
  </script>

</head>
<body>
  <h1 style='color: rgb(35, 187, 174);'>Project 4:</h1>
  <h2 style='color: rgb(19, 36, 129);'>A Servlet/JSP-based Multi-Tiered Application Using a Tomcat Container</h2>
  <h3 style='color: rgb(28, 67, 194);'>- Data Entry Home Page -</h3>
  <p>You are connected to the Project 4 Enterprise System database as a DATA ENTRY LEVEL user.</p>
  <p>Enter data in the forms below to add a new record to the corresponding database table.</p>

  <form action="/project-4/DataentryServlet" method="post">
  
  <div class="entry-box">
    <h3>Suppliers Record Insert</h3>
    <div class="entry-container">
      <div class="entry-column">
        <label for="suppSnum">Supplier Number:</label>
        <input type="text" id="suppSnum" name="suppSnum">
      </div>

      <div class="entry-column">
        <label for="suppSname">Supplier Name:</label>
        <input type="text" id="suppSname" name="suppSname">
      </div>

      <div class="entry-column">
        <label for="suppStatus">Status:</label>
        <input type="text" id="suppStatus" name="suppStatus">
      </div>

      <div class="entry-column">
        <label for="suppCity">City:</label>
        <input type="text" id="suppCity" name="suppCity">
      </div>
    </div>
    <button onclick="executeSuppliers()">Execute</button>
  </div>

  <hr>

  <div class="entry-box">
    <h3>Parts Record Insert</h3>
    <div class="entry-container">
      <div class="entry-column">
        <label for="partsPnum">Part Number:</label>
        <input type="text" id="partsPnum" name="partsPnum">
      </div>

      <div class="entry-column">
        <label for="partsPname">Part Name:</label>
        <input type="text" id="partsPname" name="partsPname">
      </div>

      <div class="entry-column">
        <label for="partsColor">Color:</label>
        <input type="text" id="partsColor" name="partsColor">
      </div>

      <div class="entry-column">
        <label for="partsWeight">Weight:</label>
        <input type="text" id="partsWeight" name="partsWeight">
      </div>

      <div class="entry-column">
        <label for="partsCity">City:</label>
        <input type="text" id="partsCity" name="partsCity">
      </div>
    </div>
    <button onclick="executeParts()">Execute</button>
  </div>

  <hr>

  <div class="entry-box">
    <h3>Jobs Record Insert</h3>
    <div class="entry-container">
      <div class="entry-column">
        <label for="jobsJnum">Job Number:</label>
        <input type="text" id="jobsJnum" name="jobsJnum">
      </div>

      <div class="entry-column">
        <label for="jobsJname">Job Name:</label>
        <input type="text" id="jobsJname" name="jobsJname">
      </div>

      <div class="entry-column">
        <label for="jobsNumWorkers">Number of Workers:</label>
        <input type="text" id="jobsNumWorkers" name="jobsNumWorkers">
      </div>

      <div class="entry-column">
        <label for="jobsCity">City:</label>
        <input type="text" id="jobsCity" name="jobsCity">
      </div>
    </div>
    <button onclick="executeJobs()">Execute</button>
  </div>

  <hr>

  <div class="entry-box">
    <h3>Shipments Record Insert</h3>
    <div class="entry-container">
      <div class="entry-column">
        <label for="shipmentsSnum">Supplier Number:</label>
        <input type="text" id="shipmentsSnum" name="shipmentsSnum">
      </div>

      <div class="entry-column">
        <label for="shipmentsPnum">Part Number:</label>
        <input type="text" id="shipmentsPnum" name="shipmentsPnum">
      </div>

      <div class="entry-column">
        <label for="shipmentsJnum">Job Number:</label>
        <input type="text" id="shipmentsJnum" name="shipmentsJnum">
      </div>

      <div class="entry-column">
        <label for="shipmentsQuantity">Quantity:</label>
        <input type="text" id="shipmentsQuantity" name="shipmentsQuantity">
      </div>
    </div>
    <button onclick="executeShipments()">Execute</button>
  </div>
</form>
</body>
</html>
