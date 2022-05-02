<!doctype html>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display Records of a table</title>
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
        $sql = "SELECT EventID, Event_Subject, Building_Number, Building_Floor, Room_Number, RegistrationFee, Event_Date, Event_Time FROM Event_Detail WHERE Event_Subject LIKE '$_POST[eventSubject]%'";

        $stmnt = $conn->prepare($sql);   

        $stmnt->execute();

        $row = $stmnt->fetch(); 
        if ($row) {
            echo '<table>';
            echo '<tr> 
                <th>EventID</th> 
                <th>Event_Subject</th> 
                <th>Building_Number</th> 
                <th>Building_Floor</th> 
                <th>Room_Number</th> 
                <th>RegistrationFee</th> 
                <th>Event_Date</th> 
                <th>Event_Time</th> 
                </tr>';
            do {
                echo "<tr>
                    <td>$row[EventID]</td>
                    td>$row[Event_Subject]</td>
                    <td>$row[Building_Number]</td>
                    <td>$row[Building_Floor]</td>
                    <td>$row[Room_Number]</td>
                    <td>$row[RegistrationFee]</td>
                    <td>$row[Event_Date]</td>
                    <td>$row[Event_Time]</td>
                    </tr>";
                }while ($row = $stmnt->fetch());
                echo '</table>';
        } else {
            echo "<p> No Record Found!</p>";
        }
    } catch (PDOException $err) {
        echo "<p style='color:red'>Record Retrieval Failed: " . $err->getMessage() . "</p>\r\n";
    }
    
    unset($conn);

    echo "<a href='../index.html'>Back to the Homepage</a>";

    ?>

<footer>
    <small> CopyRight &copy; Tommy Lam 2022 </small>
</footer>
</body>

</html>