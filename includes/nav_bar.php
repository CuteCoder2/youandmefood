        <?php
		require_once('../functions/get_cat_num.php');
		?>
		   <!-- ============================================================== -->
            <!-- Start Navigation -->
			<div class="header position-sticky sticky-top">
				<!-- Topbar -->
				<div class="header_topbar " id="gold">
					<div class="container">
						<div class="row">
						
							<div class="col-lg-6 col-md-6 col-sm-6 col-4">

							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-8">
								<div class="topbar_menu">
									<ul>
										<li></li>
										<!-- <li><a href="order.html"><i class="ti-bag"></i>My Account</a></li> -->
										<!-- <li><a href="order-tracking.html"><i class="ti-location-pin"></i>Track Order</a></li> -->
										<!-- <li class="hide-m"><a href="wishlist.html"><i class="ti-heart"></i>Favourites</a></li> -->
									</ul>
								</div>
							</div>
						
						</div>
					</div>
				</div>
				
				<!-- Main header -->
				<div class="general_header position-sticky sticky-top">
					<div class="container">
						<div class="row align-items-center">
							<div class="col-lg-2 col-md-2 col-sm-3 col-4">
								<a class="nav-brand" href="home.php">
									
									<img src="../pictures/logo.png" class="logo" alt="" />
								</a>
							</div>
							<div class="col-lg-7 col-md-7 col-sm-4 col-3">
								<nav id="navigation" class="navigation navigation-landscape">
									<div class="nav-header">
										<div class="nav-toggle"></div>
									</div>
									<div class="nav-menus-wrapper" style="transition-property: none;">
										<ul class="nav-menu">
										
											<li><a href="home.php">HOME</a></li>
											
											<li><a href="product.php">PRODUCTS</a></li>
											
											<li><a href="contact.php">CONTACT</a></li>
											
											<li><a href="about.php">ABOUT</span></a></li>
											
										</ul>

									</div>
								</nav>
							</div>
							
							<div class="col-lg-3 col-md-3 col-sm-5 col-5">
								<div class="general_head_right">
									<ul>
										<!-- <li><a data-toggle="collapse" href="#mySearch" role="button" aria-expanded="false" aria-controls="mySearch"><i class="ti-search"></i></a></li> -->
										<li><?php
										if (isset($_SESSION['first name']) AND isset($_SESSION['last name']) ){
											echo'<a data-toggle="collapse" href="#search" role="button" aria-expanded="false" aria-controls="mySearch"><img id="user_img" src="'.$_SESSION['photo'].'" ></a>';
										}else{
											
											echo'<a href="login.php"><i class="ti-user"></i></a>';
										}
										// session_destroy();
										?></li>
										<li><a href="cart.php" onclick="openRightMenu()"><i class="ti-shopping-cart"></i><span class="cart_counter" id="cart_count">
											<?php
											if (isset($_SESSION['cart_num'])) {
												echo $_SESSION['cart_num'];
											}else{
												echo 0;
											}
											?></span>
											</a></li>
									</ul>
								</div>
								<div class="collapse" id="mySearch">
									<div class="blocks search_blocks">
										<div class="input-group">
											<input type="text" class="form-control" placeholder="Search entire store here...">
											<div class="input-group-append">
											<button class="btn search_btn" type="button"><i class="ti-search"></i></button>
											</div>
										</div>
									</div>
								</div>


								<!-- search info display -->
								
							</div>
							
						</div>
					</div>
				</div>
				
			</div>
			<!-- End Navigation -->
        <div class="clearfix"></div>
			<!-- ============================================================== -->
            <!-- Top header  -->
			<!-- ============================================================== -->

			<script>

let user = document.getElementById('user_img');
user.style.height = "30px";
			</script>
			