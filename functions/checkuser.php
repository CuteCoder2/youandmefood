<?php
require_once('db/db.php');

if (isset($_GET['username'])) {
    $username = $_GET['username'];

    $check_stmt = "SELECT * FROM youandmefood.customer WHERE username = ?";

    $pre_stmt = $conn->prepare($check_stmt);

    $pre_stmt->execute([$username]);

    $get_all_user = $pre_stmt->fetchAll();
    
    $num = $pre_stmt->rowCount();
    if ($num >= 1) {
        echo "User name exist already";
    }

 }



?>