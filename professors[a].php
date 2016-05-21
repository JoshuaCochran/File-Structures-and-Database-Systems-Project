<html>
<head>
<style>
table, th, td {
	border: 1px solid black;
}
</style>
</head>
<body>
<?php
$mysqli = new mysqli("localhost", "root", "lieseena", "cs332f9");
if ($mysqli->connect_errno){
	die('Could not connect:' .$mysqli->connect_error);
}

$SSN = $mysqli->real_escape_string($_POST["ssn"]);
$result = $mysqli->query("SELECT prof_ssn, title, classroom, meet_days, start_time, end_time
						FROM course C, section S  WHERE S.CRN = C.CRN AND prof_ssn ='$SSN'");
if (!$result) {
    die('Invalid query: ' . mysqli_error($result));
}

echo "Input:<br>";
echo "Professor SSN: $SSN<br><br>";

echo "Results:<br>";
if ($result->num_rows >0)
{
	echo "<table><tr><th>PROFESSOR SSN</th><th>TITLE</th><th>CLASSROOM</th><th>MEET DAYS</th><th>START TIME</th><th>END TIME</th></tr>";

	while ($row = $result->fetch_assoc()) {
		echo "<tr><td>" . $row["prof_ssn"]. "</td><td>" . $row["title"]. "</td><td>"
			. $row["classroom"]. "</td><td>" . $row["meet_days"]. "</td><td>" . $row["start_time"]. "</td><td>" . $row["end_time"]. "</td></tr>";
	}
	echo "</table>";
} else {
	echo "0 results";
}

if ($_POST["showTables"] == "yes")
{
	echo "<br><br>Relevant tables:<br>";
	echo "<br>course table:<br>";
	$query = "SELECT * FROM course";
	$course=$mysqli->query($query);

	if ($course->num_rows >0)
	{
		echo "<table><tr><th>CRN</th><th>TITLE</th><th>UNITS</th><th>TEXTBOOK</th><th>DNO</th></tr>";
		
		while ($row = $course->fetch_assoc()) {
			echo "<tr><td>" . $row["CRN"]. "</td><td>" . $row["title"]. "</td><td>"
				. $row["units"]. "</td><td>" . $row["textbook"]. "</td><td>" . $row["DNO"]. "</td></tr>";
		}
		echo "</table>";
	} else {
		echo "0 results";
	}
	
	echo "<br>section table:<br>";
	$query = "SELECT * FROM section";
	$section = $mysqli->query($query);
	
	if ($section->num_rows >0)
	{
		echo "<table><tr><th>SNO</th><th>CRN</th><th>SEATS</th><th>CLASSROOM</th><th>MEET DAYS</th>
			<th>START TIME</th><th>END TIME</th><th>PROFESSOR SSN</th></tr>";
		
		while ($row = $section->fetch_assoc()) {
			echo "<tr><td>" . $row["SNO"]. "</td><td>" . $row["CRN"]. "</td><td>"
				. $row["seats"]. "</td><td>" . $row["classroom"]. "</td><td>" . $row["meet_days"].
				"</td><td>" . $row["start_time"]. "</td><td>" . $row["end_time"].
				"</td><td>" . $row["prof_ssn"]. "</td></tr>";
		}
		echo "</table>";
	} else {
		echo "0 results";
	}
}

mysqli_close($mysqli);
?>
</body>
</html>