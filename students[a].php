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

$CRN = $mysqli->real_escape_string($_POST["CRN"]);

$result = $mysqli->query("SELECT S.SNO, classroom, meet_days, start_time, end_time, COUNT(student_CWID)
						FROM section S, enrollment_record E
						WHERE S.CRN = '$CRN' AND E.CRN = S.CRN AND E.SNO = S.SNO
						GROUP BY S.SNO");
if (!$result) {
    die('Invalid query: ' . mysqli_error($result));
}

echo "Input:<br>";
echo "Course number: $CRN<br><br>";

echo "Results:<br>";
if ($result->num_rows >0)
{
	echo "<table><tr><th>SNO</th><th>CLASSROOM</th><th>MEET DAYS</th><th>START TIME</th>
		<th>END TIME</th><th># STUDENTS</th></tr>";

	while ($row = $result->fetch_assoc()) {
		echo "<tr><td>" . $row["SNO"]. "</td><td>" . $row["classroom"]. "</td><td>" . $row["meet_days"]. "</td><td>" . $row["start_time"]. "</td><td>" . $row["end_time"]. "</td><td>" . $row["COUNT(student_CWID)"]."</td></tr>";
	}
	echo "</table>";
} else {
	echo "0 results";
}

if ($_POST["showTables"] == "yes")
{
	echo "<br><br>Relevant tables:<br>";
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

	echo "<br><br>enrollment record table:<br>";
	$query = "SELECT * FROM enrollment_record";
	$enrollment_record=$mysqli->query($query);

	if ($enrollment_record->num_rows >0)
	{
		echo "<table><tr><th>CWID</th><th>SNO</th><th>CRN</th><th>GRADE</th></tr>";
		
		while ($row = $enrollment_record->fetch_assoc()) {
			echo "<tr><td>" . $row["student_CWID"]. "</td><td>" . $row["SNO"]. "</td><td>"
				. $row["CRN"]. "</td><td>" . $row["grade"]. "</td></tr>";
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