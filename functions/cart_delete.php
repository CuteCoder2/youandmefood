<?php
require_once("db/db.php");

if(isset($_GET['id'])){
try{
    
    $conn->query('START TRANSACTION');
    $id = $_GET['id'];
    
    $ar = explode('.',$id);
    $prod_id =  $ar[0];
    $cart_id =  $ar[1];


    $delete_deltails = "DELETE from youandmefood.details where cart_id = ? and prod_id = ?";
    
    $pre_del = $conn->prepare($delete_deltails);
    $pre_del->execute([$cart_id,$prod_id]);

    $delete_cart = "DELETE FROM youandmefood.cart WHERE cart_id = ? AND prod_id = ?";

    $pre_del_cart = $conn->prepare($delete_cart);
    $pre_del_cart->execute([$cart_id,$prod_id]);


    
    
    
    $conn->query('COMMIT');
}catch(PDOException $er){
    echo $er;
    $conn->query('ROLLBACK');
}
    
}