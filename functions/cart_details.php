<?php
require_once("db/db.php");

if(isset($_SESSION['username'])){

    $username = $_SESSION['username'];

    try{
        
        $cart_detail_stmt = "SELECT * from youandmefood.cart,youandmefood.details,youandmefood.product where cart.username = ? AND cart.cart_id = details.cart_id and cart.prod_id = details.prod_id AND details.prod_id = product.prod_id AND cart.prod_id = product.prod_id";

        $pre_detail_stmt = $conn->prepare($cart_detail_stmt);

        $pre_detail_stmt->execute([$username]);

        $return_all = $pre_detail_stmt->fetchAll();
        
    }catch(PDOException $error){
        
        echo $error;
    }

}else {
    header("location:../views/login.php");
}

?>