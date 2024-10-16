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
		$sql = "SELECT first_name FROM Users";
		$result = $conn->query($sql);

		if ($result->num_rows > 0) {

			while ($row = $result->fetch_assoc()) {
				echo "Name: " . $row["first_name"] . "<br>";
			}
		} else {

			echo "0 results";

		}

		$conn->close();



		?>
