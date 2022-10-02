	<br>
	<br>
	<!-- ======================== Fresh Vegetables Start ==================== -->
			<section class="pt-0">
				<div class="container">
	
					<?php
						getProduct($conn,1,8);
						getProduct($conn,2,8);
						getProduct($conn,3,8);
						getProduct($conn,4,8);
						getProduct($conn,5,8);
						getProduct($conn,6,8);
						getProduct($conn,7,8);
						getProduct($conn,8,8);
						
						
					?>
				
				</div>
			</section>
			<div class="clearfix"></div>
			<!-- ======================== Fresh Vegetables End ==================== -->
			
			<div class="clearfix"></div>
			<!-- ======================== Fresh & Fast Fruits End ==================== -->
			
			<!-- ======================== Offer Banner Start ==================== -->
			<section class="offer-banner-wrap gray">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="owl-carousel banner-offers owl-theme">
								

								<?php
									foreach($fet_all_rando as $row){

										echo '								<!-- Single Item -->
								<div class="item">
									<div class="offer_item">
										<div class="offer_item_thumb">
											<div class="offer-overlay"></div>
											<img class = "pro_img_banner" src="../'.$row['prod_photo'].'" alt="">
										</div>
										<div class="offer_caption">
											<div class="offer_bottom_caption">
												<p>10% Off</p>
												<div class="offer_title">Good Deals in Your City</div>
												<span>Save 10% on All Fruits</span>
											</div>
										</div>
									</div>
								</div>
								';

									}
								?>
								
							</div>
						</div>
					</div>
				</div>
			</section>
			<div class="clearfix"></div>
			<!-- ======================== Offer Banner End ==================== -->
			
			<!-- ======================== Fresh Vegetables & Fruits Start ==================== -->
			
			<div class="clearfix"></div>
			<!-- ======================== Fresh Vegetables & Fruits End ==================== -->