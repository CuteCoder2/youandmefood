<?php
require_once('db/db.php');


if (
    isset($_POST['login_btn']) 
AND !empty($_POST['login_btn'])
AND isset($_POST['username'])
AND !empty($_POST['username'])
AND isset($_POST['password'])
AND !empty($_POST['password'])
) {

    $username = $_POST['username'];
    $password = $_POST['password'];

    try {
        $get_user_smt = "SELECT * FROM youandmefood.customer WHERE username = ? AND password = ?";

        $pre_get_user = $conn->prepare($get_user_smt);

        $pre_get_user->execute([$username,$password]);

        $returne_all = $pre_get_user->fetchAll();

        $num = $pre_get_user->rowCount();
        if ($num >= 1){
            
            foreach ($returne_all as $row) {
                $_SESSION['username'] = $row['username'];
                $_SESSION['first name'] = $row['first_name'];
                $_SESSION['last name'] = $row['last_name'];
                $_SESSION['photo'] = $row['photo'];
            }
            header("location:../views/home.php");
        }else{
            
            header("location:../views/login.php");
        }
        
        
    } catch (PDOException $th) {
        header('location:page_not_found.php');
    }
}else {
    header("location:../views/login.php");
    
}



?>

