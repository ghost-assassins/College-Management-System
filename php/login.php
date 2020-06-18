<?php
    session_start();
    include_once('connection.php');
if(!empty($_SESSION["username"])){
    echo "<script>alert('hi');</script>";
    if($_SESSION["userT"] == 'student'){
            header("Location:http://localhost/GyanMahavidyalaya/System/dashboard/examples/dashboard.php");
    }
    else if($_SESSION["userT"] == 'admin'){
        header("Location:http://localhost/GyanMahavidyalaya/System/dashboard/examples/admindashboard.php");
    }
    else if($_SESSION["userT"] == 'faculty'){
        header("Location:http://localhost/GyanMahavidyalaya/System/dashboard/examples/fdashboard.php");
    }
}
else{
    $_SESSION["username"] = $_POST['uname'];
    $_SESSION["password"] = $_POST['pass'];
    $sql = "SELECT * FROM login_info WHERE uname = '" . $_POST['uname'] . "' AND pass = '" . $_POST['pass']."'" or die(mysqli_error($conn));
    $result = mysqli_query($conn,$sql);
    $count = mysqli_num_rows($result);
    if($row = mysqli_fetch_assoc($result)){
        $_SESSION["userT"] = $row['usertype'];
        if($row['usertype'] == 'student'){
            header("Location:http://localhost/GyanMahavidyalaya/System/dashboard/examples/dashboard.php");
        }
        else if($row['usertype'] == 'admin'){
            header("Location:http://localhost/GyanMahavidyalaya/System/dashboard/examples/admindashboard.php");
        }
        else if($row['usertype'] == 'faculty'){
            header("Location:http://localhost/GyanMahavidyalaya/System/dashboard/examples/fdashboard.php");
        }
    }
    else{
        echo '
        <script>
            alert("Incorrect Username or Password!\nPlease try again.");
        </script>';
    }
}
    $conn->close();
?>