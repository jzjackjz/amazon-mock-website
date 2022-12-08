<!-- Names: Jack Zhang, Allison Nevias
Class: CS3265 Database Management Systems
Date: December 5, 2022
Project: Project Phase 3 -->

<?php
$conn = mysqli_connect("localhost", "root", "", "AMAZON");

if(isset($_POST['update']))
{
    $card_num = $_POST['card_num'];

    // SQL function to modify an existing record in database
    $query = "UPDATE PAYMENT
              SET type='$_POST[type]', billing_address='$_POST[billing_address]',
                  exp_date='$_POST[exp_date]', first_name='$_POST[first_name]', last_name='$_POST[last_name]'
              WHERE card_num='$card_num'";
    $query_run = mysqli_query($conn,$query);


    header("Location: ../index.php");
}
?>