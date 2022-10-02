<?php

require_once("db/db.php");


if (isset($_POST['sub'])) {

    $product_id = $_POST['product_id'];
    $product_name = $_POST['product_name'];
    $category = $_POST['category'];
    $product_image = $_FILES['image'];
    $gros_price = $_POST['gros_price'];
    $retail_price = $_POST['retail_price'];
    $barcode = $_FILES['barcode'];
    $description = $_POST['description'];


function moveFile($image,$product_name){

    if ($image['error'] == 0) {
        $dote = '.';
        $imagename = $image['name'];
        $imageextension = end(explode($dote,$imagename));
        $imageextension = strtolower($imageextension);
        $extension = ['jpg','jpeg','png'];
        if (in_array($imageextension,$extension)) {
            $error = $image['error'];
            if ($error == 0) {
                 $imageTempLocation = $image['tmp_name'];
                 $newName = 'images/'.$product_name.$dote.$imageextension ; 
                 $upload = move_uploaded_file($imageTempLocation,$newName);
                if ($upload) {
                    return $newName;
                }
                
                }
            }
            
        }
        
    }
    
    $product_image = moveFile($product_image,$product_name);
    //$product_barcode = moveFile($barcode,$product_name.'barcode');
  $product_barcode = 'barcode';
    $insert_stmt = "INSERT INTO `youandmefood`.`product` (`prod_id`, `cat_id`, `prod_name`, `prod_gros_price`, `prod_retail_price`, `pro_bar_code`, `prod_photo`, `prod_describetion`) VALUES (?,?,?,?,?,?,?,?);";
    


    $preapare = $conn->prepare($insert_stmt);
    $preapare->execute([$product_id,$category,$product_name,$gros_price,$retail_price,$product_barcode,$product_image,$description]);

        if ($preapare) {
            header('location:getimage.php');
            // echo 'product added';
        }
        












}