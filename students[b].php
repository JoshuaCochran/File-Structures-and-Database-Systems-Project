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

$CWID = $mysqli->real_escape_string($_POST["CWID"]);

$result = $mysqli->query("SELECT CRN, GRADE FROM enrollment_record WHERE student_CWID = '$CWID'");
if (!$result) {
    die('Invalid query: ' . mysqli_error($result));
}
echo "Input:<br>";
echo "Student CWID: $CWID<br><br>";

echo "Results:<br>";

if ($result->num_rows >0)
{
	echo "<table><tr><th>CRN</th><th>GRADE</th></tr>";

	while ($row = $result->fetch_assoc()) {
		echo "<tr><td>" . $row["CRN"]. "</td><td>" . $row["GRADE"]."</td></tr>";
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

while($row = $result->fetch_array())
{
printf("CRN: %s<br>\n", $row['CRN']);
printf("grade: %s<br><br>\n", $row['GRADE']);
}
mysqli_close($mysqli);
?>
</body>
</html>