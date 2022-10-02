<?php

require_once('db/db.php');


if(isset($_SESSION['username'])){
    $username = $_SESSION['username'];
    try{
        $get_cart_num_stmt = "SELECT * FROM youandmefood.cart WHERE username = ?";
        $pre_stmt = $conn->prepare($get_cart_num_stmt);

        $pre_stmt->execute([$username]);

        $_SESSION['cart_num'] = $pre_stmt->rowCount();
        
        }catch(PDOException $error){
            throw $error;
        }
}
