<?php

require_once('db.php');

$selec_cat = "SELECT * FROM youandmefood.category";
$result = $conn->query($selec_cat);
$fetch = $result->fetchAll();

?>

<style>
body,label,input,select{
    display:block;
    margin:5px;
    font-family: Arial, Helvetica, sans-serif;

}
select{
    height: 30px;
    width: 180px;
    border-radius: 10px;
}
form{

    height: 70vh;
    background-color: #dedede;
    width:50vw;
    margin-top:120px;
}
input{
    height: 30px;
    border-radius: 10px;
    
}
    


</style>

<center>
    <form action="inserting.php" method = 'POST' enctype="multipart/form-data">
        <label for="name">product id</label>
        <input type="text" name="product_id" id="">
        <label for="name">product name</label>
        <input type="text" name="product_name" id="">
        <label for="name">Category</label>
        <select name="category" >
            <?php
            foreach($fetch as $row){
                echo "<option value='{$row['cat_id']}'>{$row['cat_type']}</option>";
            }
            ?>
        </select>
        <label for="name">product images</label>
        <input type="file" name="image" id="">
        <label for="name">gros price</label>
        <input type="text" name="gros_price" id="">
        <label for="name">retail Price</label>
        <input type="text" name="retail_price" id="">
        <label for="name">bar code</label>
        <input type="file" name="barcode" id="">
        <label for="name">description</label>
        <input type="text" name="description" id="">

        <input type="submit" value="submit" name='sub'>
    </form>
</center>