<?php

require_once('db/db.php');



try {
    
if(
    isset($_POST['signup_btn'])
    &&  !empty($_POST['fname'])
    &&  !empty($_POST['lname'])
    &&  !empty($_POST['uname'])
    &&  !empty($_POST['city'])
    &&  !empty($_POST['phone'])
    &&  !empty($_POST['email'])
    &&  !empty($_POST['password'])
    &&  !empty($_POST['con_password'])
    && $_POST['password'] == $_POST['con_password']

){
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $uname = $_POST['uname'];
    $city = $_POST['city'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $photo = $_FILES['userImg'];
    $photo = $_FILES['userImg'];
$photo_name = $photo['name'];
$photo_type = $photo['type'];
$photo_temp_location = $photo['tmp_name'];
$photo_error = $photo['error'];
$photo_size = $photo['size'];

$get_extension = explode('.',$photo_name);
$extension = end($get_extension);
$new_photo_name = $_POST['uname'].'.'.$extension;
$new_location = '../img/'.$new_photo_name;
$img_extention = ['jpep','jpg'];
if (in_array($extension,$img_extention)) {
    
    move_uploaded_file($photo_temp_location,$new_location);

}
if($photo_error == 4){

    $insert_photo_name = '../img/user.svg';
}else{
 $insert_photo_name = '../img/'.$new_photo_name;
}



    

    $inser_new_user = "INSERT INTO youandmefood.customer (username,first_name,last_name,city,phone,email,photo,password) VALUES(?,?,?,?,?,?,?,?);";

    $pre_insertion = $conn->prepare($inser_new_user);

    if($pre_insertion->execute([$uname,$fname,$lname,$city,$phone,$email,$insert_photo_name,$password])){
        header("location:../views/login.php");
        
    }
    
}else{
    header("location:../views/login.php");

}
} catch (PDOException $th) {
    die('user not creayeed');
}