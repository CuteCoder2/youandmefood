<?php


require_once('db/db.php');

try{
if (isset($_SESSION['username'])) {

    if (isset($_GET['id']) AND isset($_GET['value'])) {
         $value = $_GET['value'];
        echo $id = $_GET['id'];
        $userid = $_SESSION['username'];

            $conn->query("START TRANSACTION");
            $id_update = "UPDATE `youandmefood`.`cart` SET `product_no` = ? WHERE `cart`.`cart_id` = ? AND `cart`.`username` = ? ;";
            
            $pre_update = $conn->prepare($id_update);
            
             $pre_update->execute([$value,$id,$userid]);
            
            $conn->query("COMMIT");
        }
        
    }
}catch(PDOException $er){
    $conn->query("ROLLBACK");
    echo $er;
}

?>