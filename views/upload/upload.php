<?php

require_once('../../functions/db/db.php');

$get_cat = "SELECT * FROM youandmefood.category WHERE 1";

$query = $conn->query($get_cat);

$get_all_cat = $query->fetchAll();


if (isset($_POST['submit'])) {
    
    
    try{
        
        
        $conn->query("START TRANSACTION");
        $image = $_FILES['image'];
        $img_name = $image['name'];
        $img_tmp = $image['tmp_name'];
        $img_error = $image['error'];
        
        $nam_ex = explode('.',$img_name );
        
         $extention = end($nam_ex);
 
 $img_name = $_POST['name'];
 $file_name = '../../images/'.$img_name.'.'.$extention;
 
 $img_insert = 'images/'.$img_name.'.'.$extention;
 
 if ($img_error == 0) {
     if (move_uploaded_file($img_tmp,$file_name)) {
         echo 'file moved '.$img_name.'.'.$extention;
        }
    }
    
    $cat_id = $_POST['cat_id'];
    $name = $_POST['name'];
    $gros_price = $_POST['gros_price'];
    $retail_price = $_POST['retail_price'];
    $describe = $_POST['describe'];
    
    $count_product = "SELECT * FROM youandmefood.product WHERE 1";
    $query_count = $conn->query($count_product);
    $get_all_count = $query_count->fetchAll();
    // var_dump($get_all_cat);
    $prod_num = $query_count->rowCount();
    
    $prod_num = $prod_num + 1;
    
    $product_id = $name.$prod_num;
    
    $barcode  = "barcode";

    $get_img_name = "SELECT * FROM youandmefood.product where prod_photo = '$img_insert';";

    $exe_img_stmt = $conn->query($get_img_name);

    $get_all_img = $exe_img_stmt->fetchAll();

    // var_dump($get_all_img);
    
    $insert_in_product = "INSERT INTO youandmefood.product (`prod_id`, `cat_id`, `prod_name`, `prod_gros_price`, `prod_retail_price`, `pro_bar_code`, `prod_photo`, `prod_describetion`) VALUES (?,?,?,?,?,?,?,?);";
    
    $pre_inser = $conn->prepare($insert_in_product);
    
    $pre_inser->execute([$product_id , $cat_id , $name , $gros_price , $retail_price , $barcode , $img_insert , $describe]);
    
    
    $conn->query("COMMIT");
}catch(PDOException $error){
    $conn->query("ROLLBACK");
    echo $error;
}
    
}





?>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<center>
    <form action="" method="post" enctype="multipart/form-data">
    <p>image <input type="file" name="image"></p>
    <p>category <select name="cat_id" id="">
        <?php
            foreach($get_all_cat as $row){
                echo "<option value='".$row['cat_id']."'>".$row['cat_type']."</option>";
            }
            ?>
            helo
        
    </select></p>
    <p>product name <input type="text" name="name"></p>
    <p>gris price <input type="text" name="gros_price"></p>
    <p>retail price <input type="text" name="retail_price"></p>
    <p>describtion <input type="text" name="describe"></p>
    <input type="submit" name="submit" value="SUBMIT">
</form>
</center>
    
</body>
</html>