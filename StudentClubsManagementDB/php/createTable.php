<!doctype html>

<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Create a Table</title>
	<link rel="stylesheet" href="../css/style.css" />
</head>

<body>

	<?php

	$servername = "localhost";
	$dbname = "MYSQLStudentClubsManagement";
	$username = "root";
	$password = "";

	try {
        $conn = new PDO("mysql:host=$GLOBALS[servername];dbname=$GLOBALS[dbname]", $GLOBALS['username'], $GLOBALS['password']);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
		echo "<p style='color:blue'>Connection Was Successful</p>";
	} catch (PDOException $err) {
		echo "<p style='color:red'>Connection Failed: " . $err->getMessage() . "</p>\r\n";
	}

	$sql = "CREATE TABLE Event_Detail (
		EventID VARCHAR(3),
		Event_Subject VARCHAR (25) NOT NULL,
		Building_Number CHAR(1),
		Building_Floor VARCHAR(2),
		Room_Number int,
		RegistrationFee DECIMAL(5,2) NOT NULL,
		Event_Date DATE NOT NULL,
		Event_Time TIME NOT NULL,
	
		PRIMARY KEY(EventID),
		CONSTRAINT EventID_constr CHECK (EventID LIKE 'E__'),
		CONSTRAINT buildingnum_constr CHECK (Building_Number = 'S' OR Building_Number = 'N' OR Building_Number = 'E' OR Building_Number = 'W' OR Building_Number = 'O')
	
	);";

	try {
		$conn->exec($sql);
		echo "<p style='color:blue'>Table Created Successfully</p>";
	} catch (PDOException $err) {
		echo "<p style='color:red'>Table Creation Failed: " . $err->getMessage() . "</p>\r\n";
	}

	unset($conn);

	echo "<a href='../index.html'>Back to the Homepage</a>";

	?>

<footer>
    <small> CopyRight &copy; Tommy Lam 2022 </small>
</footer>
</body>

</html>