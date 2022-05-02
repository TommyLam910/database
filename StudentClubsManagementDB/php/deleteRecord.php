<!doctype html>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete a record of a table</title>
    <link rel="stylesheet" href="../css/style.css" />
</head>

<body>

    <?php
    $servername = "localhost";
    $dbname = "MYSQLStudentClubsManagement";
    $username = "root";
    $password = "";

    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
        echo "<p style='color:blue'>Connection Was Successful</p>";
    } catch (PDOException $err) {
        echo "<p style='color:red'> Connection Failed: " . $err->getMessage() . "</p>\r\n";
    }

    try {
        $sql = "DELETE FROM $dbname.Event_Detail WHERE eventID = :eid";
        $stmnt = $conn->prepare($sql);    
        $stmnt->bindParam(':eid', $_POST['eventID']);   

        $stmnt->execute();
        echo "<p style='color:blue'>Record Deleted Successfully</p>";
    } catch (PDOException $err) {
        echo "<p style='color:red'>Record Delete Failed: " . $err->getMessage() . "</p>\r\n";
    }

    unset($conn);

    echo "<a href='../index.html'>Back to the Homepage</a>";

    ?>

<footer>
    <small> CopyRight &copy; Tommy Lam 2022 </small>
</footer>
</body>

</html>