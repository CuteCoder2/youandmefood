<?php
require_once('db/db.php');

    $stmt_filter = "SELECT * FROM youandmefood.product WHERE 1";
    
    
    // testing for b1
    if (!empty($_GET['b1'])) {
        $b1 = $_GET['b1'];
        if ($b1 == 1) {
            
        $stmt_filter .= " OR cat_id = {$b1}";
    }
}

// testing for b2
if (!empty($_GET['b2'])) {
    $b2 = $_GET['b2'];
    if ($b2 == 2) {
        
        $stmt_filter .= " OR cat_id = {$b2}";
        
    }
        }
        
        
        
        // // testing for b3
        if (!empty($_GET['b3'])) {
            $b3 = $_GET['b3'];
            if ($b3 == 3) {  
                $stmt_filter .= " OR cat_id = {$b3}";
            }
        }
        
        // testing for b4
        if (!empty($_GET['b4'])) {
            $b4 = $_GET['b4'];
            if ($b4 == 4) {
                $stmt_filter .= " OR cat_id = {$b4}";
            }
        }
        // testing for b5
        if (!empty($_GET['b5'])) {
            $b5 = $_GET['b5'];
            
            if ($b5 == 5) {
                $stmt_filter .= " OR cat_id = {$b5}";
            }
        }
        // testing for b6
        if (!empty($_GET['b6'])) {
            $b6 = $_GET['b6'];
            if ($b6 == 6) {
                $stmt_filter .= " OR cat_id = {$b6}";
            }
        }
   
        // testing for b7
        if (!empty($_GET['b7'])) {
            $b7 = $_GET['b7'];
            if ($b7 == 7) {
                $stmt_filter .= " OR cat_id = {$b7}";
            }
        }
        // testing for b8
        if (!empty($_GET['b8'])) {
            $b8 = $_GET['b8'];
            if ($b8 == 8) {
                $stmt_filter .= " OR cat_id = {$b8}";
            }
        }
        // putting limits
        if (!empty($_GET['limiter'])) {
            $limiter = $_GET['limiter'];
                $stmt_filter .= " LIMIT {$limiter}";
            
        }
        // echo $stmt_filter;
        
    //    echo $stmt_filter;
        
        $query_stmt = $conn->query($stmt_filter);
        
       $ret_all = $query_stmt->fetchAll();

       $num = $query_stmt->rowCount();

       if ($num > 0) {
           foreach ($ret_all as $row) {
            echo "
            <!-- Single Item -->
            <div class='col-lg-4 col-md-4 col-sm-6'>
                <div class='woo_product_grid'>
                    <div class='woo_product_thumb'>
                        <img src='../{$row['prod_photo']}' class='img-fluid' alt='' />
                    </div>
                    <div class='woo_product_caption center'>
                        <div class='woo_rate'>
                            <i class='fa fa-star filled'></i>
                            <i class='fa fa-star filled'></i>
                            <i class='fa fa-star filled'></i>
                            <i class='fa fa-star filled'></i>
                            <i class='fa fa-star'></i>
                        </div>
                        <div class='woo_title'>
                            <h4 class='woo_pro_title'><a href='detail-1.html'>{$row['prod_name']}</a></h4>
                        </div>
                        <div class='woo_price'>
                            <h6>{$row['prod_gros_price']} XAF<span class='less_price'>{$row['prod_retail_price']} XAF</span></h6>
                        </div>
                        <button class ='btnn'>add to cart</button>
                    </div>	
                </div>
            </div>
            ";
           }
        }
        else {
            echo "<h1>No product mactch</h1>";
        }
        
    