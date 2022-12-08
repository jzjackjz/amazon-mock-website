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
    <title>Seller products</title>

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
                <h6>Search products by seller</h6>
                <hr>
            </div>
        </div>
    </div>
</div>

<form method="post">
    <input type="text" name="s_name" placeholder="Enter seller name">
    <button class="btn btn-dark" type="submit" name="submit">Search products</button>
</form>

    <table>
        <?php
        $conn = mysqli_connect("localhost", "root", "", "AMAZON");
        if ($conn-> connect_error) {
            die("Connection failed:". $conn-> connect_error);
        }

        if(isset($_POST['submit'])) {
            $s_name=$_POST['s_name'];

            // SQL function using joining multiple tables
            $sql = "SELECT seller_name, name
                FROM SELLER s, PRODUCT p
                WHERE s.seller_name='$s_name' AND s.seller_email=p.email";

            $result = $conn-> query($sql);

            if ($result-> num_rows > 0) {
                    echo '<thead>
                    <tr>
                    <th>Seller name</th>
                    <th>Products</th>
                    </tr>
                    </thead>';
                while ($row = $result-> fetch_assoc()) {
                    echo '<tbody>
                    <tr>
                    <td>'.$row['seller_name'].'</td>
                    <td>'.$row['name'].'</td>
                    </tr>
                    </tbody>';
                }
            }
            else {
                echo '<h2 class=text-danger>No products found listed by this seller</h2>';
            }
        }
        ?>
</table>
</body>
</html>