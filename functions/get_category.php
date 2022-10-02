<?php
require_once('db/db.php');


$stmt_get_cat = "SELECT * FROM youandmefood.category WHERE 1 ORDER BY RAND()";

$query = $conn->query($stmt_get_cat);


$result_cat = $query->fetchAll();




?>