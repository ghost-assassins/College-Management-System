<?php
include_once('connection.php');
$sql = "SELECT pass,usertype FROM login_info WHERE uname = '" . $_POST["ID"] . "'";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_assoc($result);
$pass = $row['pass'];
if($row['usertype'] == 'student'){
    $sql = "SELECT email FROM student_info WHERE u_rollno = '" . $_POST['ID'] . "'";
}
else if($row['usertype'] == 'faculty'){
    $sql = "SELECT email FROM faculty_details WHERE faculty_ID = '" . $_POST['ID'] . "'";
}
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_assoc($result);
$email = $row['email'];
mail($email,'Login Password','Your GMMS Login Password is: ' . $pass,'From: gyanmahavidyalayams@gmail.com');
?>
<html>
    <head>
        <link rel="icon" type="image/x-icon" href="../images/logo.ico">
    </head>
    <body>
        <script>
            alert("Your password is sent to your email");
            window.location="http://localhost/GyanMahavidyalaya/System/Login.php";
        </script>
    </body>
</html>