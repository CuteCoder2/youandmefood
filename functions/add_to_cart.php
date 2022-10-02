<?php
require_once ("db/db.php");


if (isset($_SESSION['username'])) {
    try {
        $username = $_SESSION['username'];
        $id = $_GET['id'];

        $check_stmt = "SELECT * FROM youandmefood.cart where username = ? and prod_id = ?";
        
        $pre_check_stmt = $conn->prepare($check_stmt);
        
        $conn->query("START TRANSACTION");

        $pre_check_stmt->execute([$username,$id]);
        
        $num_fetch_stmt = $pre_check_stmt->rowCount();
        
        if ($num_fetch_stmt == 0) {
            $get_cart_id = "SELECT * FROM youandmefood.cart WHERE prod_id = ? AND username = ?";
            $inser_stmt = "INSERT INTO youandmefood.cart( prod_id,username)values(?,?)";
            $insert_in_deta = "INSERT INTO youandmefood.details(cart_id,prod_id)values(?,?)";
            $pre_select_stmt = $conn->prepare($get_cart_id);
            $pre_inser_stmt = $conn->prepare($inser_stmt);
            $pre_inser_detail = $conn->prepare($insert_in_deta);
            $pre_inser_stmt->execute([$id,$username]);
            
            $pre_select_stmt->execute([$id,$username]);
            $ret_all_get = $pre_select_stmt->fetchAll();
            foreach($ret_all_get as $row){
                $cart_id = $row['cart_id'];
                        }
            $pre_inser_detail->execute([$cart_id,$id]);


            $get_cart_num_stmt = "SELECT * FROM youandmefood.cart WHERE username = ?";
        $pre_stmt = $conn->prepare($get_cart_num_stmt);

        $pre_stmt->execute([$username]);

        $cart_num = $pre_stmt->rowCount();

        echo $cart_num;
        
            
        }else{

            $get_cart_num_stmt = "SELECT * FROM youandmefood.cart WHERE username = ?";
            $pre_stmt = $conn->prepare($get_cart_num_stmt);
    
            $pre_stmt->execute([$username]);
    
            $cart_num = $pre_stmt->rowCount();
    
            echo $cart_num;
            

        }




        $conn->query("COMMIT");


    
    }catch(PDOException $error){
        // echo $error;
        $conn->query("ROLLBACK");

    }


}else {
echo -1;
}