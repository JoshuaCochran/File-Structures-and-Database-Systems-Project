<html>
<body>

<?php 
	echo "To see possible inputs check \"Yes\" on \"Show releveant tables alongside data\"<br><br>";
?>

For the professors: <br><br> part a)<br>
<form action="professors[a].php" method="POST">
Enter the SSN of a professor: <input type="text" name="ssn"/><br>
Show relevant tables alongside data: 
<input type="radio" name="showTables" <?php if (isset($showTables) && $showTables=="yes") echo "check";?>
value="yes">Yes
<input type="radio" name="showTables" <?php if (isset($showTables) && $showTables=="no") echo "check";?>
value="no">No<br>
<input type="submit"/>
</form>

part b)<br>
<form action="professors[b].php" method="POST">
Enter the course number : <input type="text" name="CRN"/><br>
Enter the section number: <input type="text" name="SNO"/><br>
Show relevant tables alongside data: 
<input type="radio" name="showTables" <?php if (isset($showTables) && $showTables=="yes") echo "check";?>
value="yes">Yes
<input type="radio" name="showTables" <?php if (isset($showTables) && $showTables=="no") echo "check";?>
value="no">No<br>
<input type="submit"/>
</form>

<br><br>
For the students:<br><br>
part a)<br>

<form action="students[a].php" method="POST">
Enter the course number: <input type="text" name="CRN"/><br>
Show relevant tables alongside data: 
<input type="radio" name="showTables" <?php if (isset($showTables) && $showTables=="yes") echo "check";?>
value="yes">Yes
<input type="radio" name="showTables" <?php if (isset($showTables) && $showTables=="no") echo "check";?>
value="no">No<br>
<input type="submit"/>
</form>

<br>
part b)<br>
<form action="students[b].php" method="POST">
Enter the CWID of the student: <input type="text" name="CWID"/><br>
Show relevant tables alongside data: 
<input type="radio" name="showTables" <?php if (isset($showTables) && $showTables=="yes") echo "check";?>
value="yes">Yes
<input type="radio" name="showTables" <?php if (isset($showTables) && $showTables=="no") echo "check";?>
value="no">No<br>
<input type="submit"/>
</form>

</body>
</html>