<h1>This is My Users TableDB!!!<h1>
		<?php

		$servername = "localhost";

		$username = "root";

		$password = "";

		$dbname = "WorkoutDB";

		$conn = new mysqli($servername, $username, $passwor<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WorkoutDB - Users</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h1 {
            color: #4CAF50;
            font-size: 36px;
            margin-bottom: 20px;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ddd;
            text-align: left;
        }

        th, td {
            padding: 12px;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        .message {
            font-size: 18px;
            margin-top: 10px;
            color: #333;
        }
    </style>
</head>
<body>

    <h1>This is My Users TableDB!!!</h1>

    <?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "WorkoutDB";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Query to select first_name and last_name from Users table
    $sql = "SELECT first_name, last_name FROM Users";
    $result = $conn->query($sql);

    // Start the table structure
    if ($result->num_rows > 0) {
        echo "<table>";
        echo "<tr><th>First Name</th><th>Last Name</th></tr>";

        // Output data of each row
        while ($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row["first_name"] . "</td><td>" . $row["last_name"] . "</td></tr>";
        }

        echo "</table>";
    } else {
        echo "<div class='message'>0 results found.</div>";
    }

    // Close the connection
    $conn->close();
    ?>

</body>
</html>
d, $dbname);


		if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
		}
		// Modify the SQL query to select both first_name and last_name
		$sql = "SELECT first_name, last_name FROM Users";
		$result = $conn->query($sql);

		if ($result->num_rows > 0) {

			 // Output data of each row

			while ($row = $result->fetch_assoc()) {
				echo "Name: " . $row["first_name"] . " " . $row["last_name"] . "<br>";
			}
		} else {

			echo "0 results";

		}

		$conn->close();



		?>
