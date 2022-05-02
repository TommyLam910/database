<!doctype html>

<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert Data Into a Database</title>
	<link rel="stylesheet" href="../css/style.css" />
</head>
<body>

<?php
$servername ="localhost";
$dbname = "MYSQLStudentClubsManagement";
$username = "root";
$password = "";

try {
	$conn = new PDO("mysql:host=$servername;dbname=$dbname",$username, $password );
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
	echo "<p style='color:blue'>Connection Was Successful</p>";
}
catch (PDOException $err) {
	echo "<p style='color:red'>Connection Failed: " . $err->getMessage() . "</p>\r\n";
}

try{
	$sql="INSERT INTO Event_Detail (EventID, Event_Subject, Building_Number, Building_Floor, Room_Number, RegistrationFee, Event_Date, Event_Time) VALUES(:eid, :es, :bn, :bf, :rn, :rf, :ed, :et);";
	$stmnt = $conn->prepare($sql); 
	$stmnt->bindParam(':eid', $_POST['eventID']);
	$stmnt->bindParam(':es', $_POST['eventSubject']);
	$stmnt->bindParam(':bn', $_POST['building']);
	$stmnt->bindParam(':bf', $_POST['buildingFloor']);
	$stmnt->bindParam(':rn', $_POST['roomNumber']);
	$stmnt->bindParam(':rf', $_POST['registrationFee']);
	$stmnt->bindParam(':ed', $_POST['eventDate']);
	$stmnt->bindParam(':et', $_POST['eventTime']);

	$stmnt->execute();

	echo "<p style='color:blue'>Data Inserted Into Table Successfully</p>";
}
catch (PDOException $err ) {
	echo "<p style='color:red'>Data Insertion Failed: " . $err->getMessage() . "</p>\r\n";
}

unset($conn);

echo "<a href='../insertData.html'>Insert More Values</a> <br />";

echo "<a href='../index.html'>Back to the Homepage</a>";

?>
<footer>
    <small> CopyRight &copy; Tommy Lam 2022 </small>
</footer>
</body>
</html>