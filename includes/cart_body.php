	
			<!-- =========================== Breadcrumbs =================================== -->
			<div class="breadcrumbs_wrap gray">
				<div class="container">
					<div class="row align-items-center">
						
						<div class="col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="text-center">
								<!-- <h2 class="breadcrumbs_title">Add To Cart</h2> -->
								<nav aria-label="breadcrumb">
								  <ol class="breadcrumb">
									<!-- <li class="breadcrumb-item"><a href="#"><i class="ti-home"></i></a></li> -->
									<!-- <li class="breadcrumb-item"><a href="#">Shop</a></li> -->
									<!-- <li class="breadcrumb-item active" aria-current="page">Add To cart</li> -->
								  </ol>
								</nav>
							</div>
						</div>
						
					</div>
				</div>
			</div>
			<!-- =========================== Breadcrumbs =================================== -->
			
			<!-- =========================== Add To Cart =================================== -->
			<section>
				<div class="container">
					<div class="row">
						
						<div class="col-lg-8 col-md-12 col-sm-12 col-12">
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th scope="col">Product</th>
											<th scope="col">Price</th>
											<th scope="col">Quantity</th>
											<th scope="col">Total</th>
										</tr>
									</thead>
									<tbody>
										<?php
										if ($pre_detail_stmt->rowCount() > 0) {
											$total_amount=0;
											$total_pay = 0;
											# code...
											foreach($return_all as $row){
												$total_amount += ($row['product_no']*$row['prod_retail_price']);

												$total_pay += $total_amount;
												echo '										
											<tr>
											<td>
											<div class="tbl_cart_product">
														<div class="tbl_cart_product_thumb">
														<img src="../'.$row['prod_photo'].'" class="img-fluid" alt="" />
														</div>
														<div class="tbl_cart_product_caption">
														<h5 class="tbl_pr_title">'.$row['prod_name'].'</h5>
														<!--<span class="tbl_pr_quality theme-cl">Brown</span>--!>
														</div>
														</div>
														</td>
														<td><h5 class="tbl_org_price" id="unite_price" >XAF'.$row['prod_retail_price'].'</h5></td>
														<td><input type="number" min="1" id="prod_num" class="form-control tbl_quan" value="'.$row['product_no'].'" />
														<input type="text" class="form-control tbl_quan" value="'.$row['cart_id'].'" hidden /></td>
												<td>
												<div class="tbl_pr_action">
												<h5 class="tbl_total_price" id="total_price" >XAF '.$total_amount.'</h5>
												<a href="cart.php" value="'.$row['prod_id'].'.'.$row['cart_id'].'" id="deletei" class="tbl_remove"><i class="ti-close"></i></a>
												</div>
												</td>
												</tr>';

											}
										}else{
											echo "<tr><td><h1>NO ITEM IN THE CART</h1></td></tr>";
										}
										?>
									</tbody>
								</table>
							</div>
							
							<!-- Coupon Box -->
							<div class="row align-items-end justify-content-between mb-10 mb-md-0">
								<div class="col-12 col-md-7"> 

								</div>
								
							</div>
							<!-- Coupon Box -->
							
						</div>
						
						<div class="col-lg-4 col-md-12 col-sm-12 col-12">
							<div class="cart_detail_box mb-4">
								<div class="card-body">
									<ul class="list-group list-group-sm list-group-flush-y list-group-flush-x">
										<li class="list-group-item d-flex">
											<h5 class="mb-0">Order Summary</h5>
										</li>
										<li class="list-group-item d-flex">
											<span>Subtotal</span> <span class="ml-auto font-size-sm" id="sub_total">XAF
												 <?php
												 if (isset($total_pay)) {
													 # code...
													 echo $total_pay;
													}else{
														echo 0;
														
												 }
											?></span>
										</li>
										<li class="list-group-item d-flex">
											<span>Delivary cost</span> <span class="ml-auto font-size-sm" id="delivary_cost">XAF 
												<?php
												if (isset($total_pay)) {
										
											echo $delivary_cost = 1000;
										}else {
											echo 0;
										}
											?></span>
										</li>
										<li class="list-group-item d-flex font-size-lg font-weight-bold">
											<span>Total</span> <span class="ml-auto font-size-sm" id="sum_total_cost">XAF 
												<?php
												if (isset($total_pay)){

													echo $total_pay + $delivary_cost ;
												}else{
													echo 0;
												}
											?></span>
										</li>
									</ul>
								</div>
							</div>
							<a class="btn btn-block btn-dark mb-2" href="#">Proceed to Checkout</a>
							<a class="px-0 text-body" href="product.php"><i class="ti-back-left mr-2"></i> Continue Shopping</a>
						</div>
						
						
					</div>
				</div>
			</section>
			<!-- =========================== Add To Cart =================================== -->
			
<script src="../javascript/add_to_cart.js"></script>

