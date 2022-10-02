<?php

require_once('db/db.php');


function getProduct($conn,$cat,$limite){


    $select_pro = "SELECT * FROM youandmefood.product,youandmefood.category WHERE 1 AND category.cat_id = product.cat_id AND category.cat_id = $cat ORDER BY RAND() LIMIT $limite";

    $cate = "SELECT * FROM youandmefood.category where category.cat_id = $cat ";

    $exec = $conn->query($select_pro);

    $exec_cat = $conn->query($cate);

    $result = $exec->fetchAll();
    
    $cat_result = $exec_cat->fetchAll();

    foreach($cat_result as $row){
         $category = $row['cat_type'];
        
    }

    // var_dump($result);
    
    echo '
        <div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12">
							<div class="sec-heading-flex pl-2 pr-2">
								<div class="sec-heading-flex-one">
									<h2>'.$category.'</h2>
								</div>
								<div class="sec-heading-flex-last">
                                    <form action = "product.php"  method="POST">
                                    <input type="text" hidden name="prod_id" value="'.$cat.'">
                                    <button class="btn btn-theme">see more</button>
                                    </form>
								</div>
							</div>
						</div>
					</div>
                <div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="owl-carousel products-slider owl-theme">
    ';
    foreach($result as $row){
        echo "
                        <div class='item'>
						    <div class='woo_product_grid'>
								<div class='box'>
										<div class='image'>
												<img class='prod_img' src='../{$row['prod_photo']}' alt=''>
										</div>
											<div class='content'>
												<div class='woo_rate'>
													<i class='fa fa-star filled'></i>
													<i class='fa fa-star filled'></i>
													<i class='fa fa-star filled'></i>
													<i class='fa fa-star filled'></i>
													<i class='fa fa-star'></i>
												</div>
												<h3>{$row['prod_name']}</h3>
												<s><span class='price'>{$row['prod_retail_price']} XAF</span></s>
                                                <a href=\"add_to_cart.php?id={$row['prod_id']}\"  id='cat_sub' class ='btnn text-warning'>add to cart</a> 
											</div>
								</div>								
							</div>
						</div>
        
        ";
    }
    echo '</div>
          </div>
          </div>
          <div class="clearfix"></div>';
}
// getProduct($conn,1);
 


$get_product = "SELECT * FROM youandmefood.product WHERE 1  ORDER BY  RAND();";

$exec_get_pro = $conn->query($get_product);

$fet_all_pro = $exec_get_pro->fetchAll();


$get_rando = "SELECT * FROM youandmefood.product WHERE 1  ORDER BY  RAND() LIMIT 6;";

$query_rando = $conn->query($get_rando);

$fet_all_rando = $query_rando->fetchAll();


// var_dump($fet_all_pro);

























function getspecProduct($conn,$cat){
	
	
	$select_pro = "SELECT * FROM youandmefood.product,youandmefood.category WHERE 1 AND category.cat_id = product.cat_id AND category.cat_id = $cat ORDER BY RAND()";
	
	$exec = $conn->query($select_pro);
	
	$result = $exec->fetchAll();

	foreach($result as $row){
		echo "
		<!-- Single Item -->
		<div class='col-lg-4 col-md-4 col-sm-6'>
		<div class='woo_product_grid'>
		<div class='woo_product_thumb'>
		
		<img class = 'prod_img' src='youandmefood.com/{$row['prod_photo']}' class='img-fluid' alt='' />
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
		<a href=\"add_to_cart.php?id={$row['prod_id']}\"  id='cat_sub' class ='btnn text-warning'>add to cart</a>
		</div>	
		</div>
		</div>
		";
	}
}
?>