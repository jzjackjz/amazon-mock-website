<!-- Names: Jack Zhang, Allison Nevias
Class: CS3265 Database Management Systems
Date: December 5, 2022
Project: Project Phase 3 -->

<?php
    $conn = mysqli_connect("localhost", "root", "", "AMAZON");

    $card_num = $_POST['card_num'];
    $type = $_POST['type'];
    $billing_add = $_POST['billing_address'];
    $exp = $_POST['exp_date'];
    $first = $_POST['first_name'];
    $last = $_POST['last_name'];

    // SQL function to insert record into database
    $sql = "INSERT INTO PAYMENT (card_num, type, billing_address, exp_date, first_name, last_name)
            VALUES ('$card_num', '$type', '$billing_add', '$exp', '$first', '$last');";
    
    mysqli_query($conn, $sql);

    header("Location: ../index.php");
?>