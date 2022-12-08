<!-- Names: Jack Zhang, Allison Nevias
Class: CS3265 Database Management Systems
Date: December 5, 2022
Project: Project Phase 3 -->

<?php

session_start();

require_once ("php/CreateDb.php");
require_once ("php/component.php");

$db = new DB("mysql:host=localhost;dbname=AMAZON");

?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Payment</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.css" />

    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="style.css">
    <style>
        input{
            width: 12%;
            border: 2px;
            border-radius: 05px;
            padding: 8px 15px 8px 15px;
            margin: 10px 0px 15px 0px;
            box-shadow: 1px 1px 1px 1px grey;
        }
    </style>

</head>
<body class="bg-light">

<?php
    require_once ('php/header.php');
?>

<div class="container-fluid">
    <div class="row px-5">
        <div class="col-md-7">
            <div class="payment-methods">
                <h6>Payment Methods</h6>
                <hr>
            </div>
        </div>
    </div>
</div>

<form action="queries/payment.inc.php" method="POST">
    <input type="text" name="card_num" placeholder="Card No.">
    <input type="text" name="type" placeholder="Type">
    <input type="text" name="billing_address" placeholder="Billing Address">
    <input type="text" name="exp_date" placeholder="Expiration Date">
    <input type="text" name="first_name" placeholder="First Name">
    <input type="text" name="last_name" placeholder="Last Name">
    <button class="btn btn-dark" type="submit" name="submit">Add card</button>
</form>

<form action ="queries/payment.del.php" method="POST">
    <input type="text" name="card_num" placeholder="Enter card number to delete"/>
    <button class="btn btn-dark" type="submit" name="delete">Delete card</button>
</form>

<form action = "queries/payment.upd.php" method="POST">
    <input type="text" name="card_num" placeholder="Enter card number to update"/>
    <input type="text" name="type" placeholder="Change card type"/>
    <input type="text" name="billing_address" placeholder="Change billing address"/>
    <input type="text" name="exp_date" placeholder="Change expiration date"/>
    <input type="text" name="first_name" placeholder="Change first name"/>
    <input type="text" name="last_name" placeholder="Change last name"/>
    <button class="btn btn-dark" type="submit" name="update">Update card</button>
</form>


    <table>
        <tr>
            <th>Card Number</th>
            <th>Type</th>
            <th>Billing Address</th>
            <th>Expiration Date</th>
            <th>First Name</th>
            <th>Last Name</th>
        </tr>
        <?php
        $conn = mysqli_connect("localhost", "root", "", "AMAZON");
        if ($conn-> connect_error) {
            die("Connection failed:". $conn-> connect_error);
        }

        // simple SQL query on a single table
        $sql = "SELECT card_num, type, billing_address, exp_date, first_name, last_name from PAYMENT";
        $result = $conn-> query($sql);

        if ($result-> num_rows > 0) {
            while ($row = $result-> fetch_assoc()) {
                echo "<tr><td>". $row ["card_num"]. "</td><td>". $row["type"] . "</td><td>". $row["billing_address"] . 
                "</td><td>". $row["exp_date"] ."</td><td>". $row["first_name"] ."</td><td>". $row["last_name"] ."</td><tr>";
            }
            echo "</table>";
        }
        else{
            echo "0 result";
        }
        $conn-> close();
        ?>
</table>
</body>
</html>