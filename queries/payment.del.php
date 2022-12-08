<!-- Names: Jack Zhang, Allison Nevias
Class: CS3265 Database Management Systems
Date: December 5, 2022
Project: Project Phase 3 -->

<?php
$conn = mysqli_connect("localhost", "root", "", "AMAZON");

if(isset($_POST['delete']))
{
    $card_num = $_POST['card_num'];

    // SQL function to delete a record from database
    $query = "DELETE FROM PAYMENT WHERE card_num = '$card_num'";
    mysqli_query($conn,$query);

    header("Location: ../index.php");
}
?>