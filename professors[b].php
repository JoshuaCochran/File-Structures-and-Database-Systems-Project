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
$SNO = $mysqli->real_escape_string($_POST["SNO"]);

$result = $mysqli->query("SELECT grade, COUNT(student_CWID) FROM enrollment_record
						WHERE CRN= '$CRN' AND SNO='$SNO' GROUP BY grade")
						or die(mysqli_error($mysqli));

echo "Input:<br>";
echo "Course Number: $CRN<br>Section Number: $SNO<br><br>";

echo "Results:<br>";

if ($result->num_rows >0)
{
	echo "<table><tr><th>GRADE</th><th># STUDENTS</th></tr>";

	while ($row = $result->fetch_assoc()) {
		echo "<tr><td>" . $row["grade"]. "</td><td>" . $row["COUNT(student_CWID)"]."</td></tr>";
	}
	echo "</table>";
} else {
	echo "0 results";
}

if ($_POST["showTables"] == "yes")
{
	echo "<br><br>Relevant tables:<br>";
	echo "<br>enrollment record table:<br>";
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