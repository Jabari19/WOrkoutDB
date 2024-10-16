<h1>This is My Users TableDB!!!<h1>
		<?php

		$servername = "localhost";

		$username = "root";

		$password = "";

		$dbname = "WorkoutDB";

		$conn = new mysqli($servername, $username, $password, $dbname);


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
