			
            <div id="main-wrapper">
            <section>
				<div class="container">
					
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="filter_search_opt">
								<a href="javascript:void(0);" onclick="openFilterSearch()"><i class="ti-reload"></i></a>
							</div>
						</div>
					</div>
					
					<div class="row">
					
						<!-- Single Product -->
						<div class="col-lg-4 col-md-12">
							<div class="search-sidebar sm-sidebar" id="filter_search"  style="left:0;">
								<div class="search-sidebar_header">
									<h4 class="ssh_heading">Close Filter</h4>
									<button onclick="closeFilterSearch()" class="w3-bar-item w3-button w3-large"><i class="ti-close"></i></button>
								</div>
								<div class="search-sidebar-body">
								
									<!-- Single Option -->
									<div class="single_search_boxed">
										<div class="widget-boxed-header">
											<h4><a href="#brands" data-toggle="collapse" aria-expanded="false" role="button">CATEGORY</a></h4>
										</div>
										<div class="widget-boxed-body collapse show" id="brands" data-parent="#brands">
											<div class="side-list no-border">
												<!-- Single Filter Card -->
												<div class="single_filter_card">
													<div class="card-body pt-0">
														<div class="inner_widget_link">
															<ul class="no-ul-list">
																<form id ='filter_form_cat'>
                                                                    
                                                                    <?php
                                                                $a = 0;
                                                            
                                                                foreach($result_cat as $row){
                                                                    $a++;
                                                                    echo "<li>
                                                                    <input id='b{$a}' class='checkbox-custom' name='c{$a}' value ='{$a}' type='checkbox'>
                                                                    <label for='b{$a}' class='checkbox-custom-label'>{$row['cat_type']}</span></label>
                                                                    </li>";
                                                                }
                                                                
                                                                ?>
                                                                </form>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
				
									<!-- Single Option -->
									<div class="single_search_boxed">
										<div class="widget-boxed-header">
											<h4><a href="#discount" data-toggle="collapse" class="collapsed" aria-expanded="false" role="button">Discount</a></h4>
										</div>
										<div class="widget-boxed-body collapse" id="discount" data-parent="#discount">
											<div class="side-list no-border">
												<!-- Single Filter Card -->
												<div class="single_filter_card">
													<div class="card-body pt-0">
														<div class="inner_widget_link">
															<ul class="no-ul-list">
																<li>
																	<input id="d1" class="checkbox-custom" name="d1" type="checkbox">
																	<label for="d1" class="checkbox-custom-label">80% Discount<span>22</span></label>
																</li>
																<li>
																	<input id="d2" class="checkbox-custom" name="d2" type="checkbox">
																	<label for="d2" class="checkbox-custom-label">60% Discount<span>472</span></label>
																</li>
																<li>
																	<input id="d3" class="checkbox-custom" name="d3" type="checkbox">
																	<label for="d3" class="checkbox-custom-label">50% Discount<span>170</span></label>
																</li>
																<li>
																	<input id="d4" class="checkbox-custom" name="d4" type="checkbox">
																	<label for="d4" class="checkbox-custom-label">40% Discount<span>170</span></label>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<!-- Single Option -->
									<div class="single_search_boxed">
										<div class="widget-boxed-header">
											<h4><a href="#types" data-toggle="collapse" class="collapsed" aria-expanded="false" role="button">Size</a></h4>
										</div>
										<div class="widget-boxed-body collapse" id="types" data-parent="#types">
											<div class="side-list no-border">
												<!-- Single Filter Card -->
												<div class="single_filter_card">
													<div class="card-body pt-0">
														<div class="inner_widget_link">
															<ul class="no-ul-list">
																<li>
																	<input id="t1" class="checkbox-custom" name="t1" type="checkbox">
																	<label for="t1" class="checkbox-custom-label">10g</label>
																</li>
																<li>
																	<input id="t2" class="checkbox-custom" name="t2" type="checkbox">
																	<label for="t2" class="checkbox-custom-label">40g</label>
																</li>
																<li>
																	<input id="t3" class="checkbox-custom" name="t3" type="checkbox">
																	<label for="t3" class="checkbox-custom-label">50g</label>
																</li>
																<li>
																	<input id="t4" class="checkbox-custom" name="t4" type="checkbox">
																	<label for="t4" class="checkbox-custom-label">100g</label>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									
								
								</div>
							</div>
						</div>
						
						<div class="col-lg-8 col-md-12">
						
							<!-- Banner -->
							<div class="row">
								<div class="col-lg-12 col-md-12">
									<div class="min_banner mb-5">
										<img src="../assets/img/min/banner-4.png" class="img-fluid rounded" alt="" />
									</div>
								</div>
							</div>
							
							<!-- Shorter Toolbar -->
							<div class="row">
								<div class="col-lg-12 col-md-12">
									<div class="toolbar toolbar-products">
										<div class="toolbar-sorter sorter">
											<label class="sorter-label" for="sorter">Sort By</label>
											<select id="sorter" data-role="sorter" class="sorter-options">
												<option value="position">wiegth</option>
												<option value="name" selected="selected">Product Name</option>
												<option value="price">Price</option>
											</select>
											<!-- <a href="#" class="action sorter-action"><i class="ti-arrow-up"></i></a> -->
										</div>
													
										<div class="modes">
											<!-- <a class="modes-mode mode-grid" title="Grid" href="#"><i class="ti-layout-grid3"></i></a>		
											<a class="modes-mode mode-list" title="Grid" href="#"><i class="ti-view-list"></i></a>													 -->
										</div>

										<div class="field limiter">
											<label class="label" for="limiter">
												<span>Show</span>
											</label>
											<div class="control">
												<select id="limiter" data-role="limiter" class="limiter-options">
													<option value="5">5</option>
													<option value="10" >10</option>
													<option value="15">15</option>
													<option value="20">20</option>
													<option value="25"  >25</option>
													<option value=" " selected >All</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<!-- row -->
							<div class="row" id="product_row">
								
								<?php

							
							
							if (isset($_POST['prod_id'])) {
								getspecProduct($conn,$_POST['prod_id']);
								
							}else {
								# code...
								
								foreach ( $fet_all_pro as $row) {
                                            echo "
											<!-- Single Item -->
											<div class='col-lg-4 col-md-4 col-sm-6'>
											<div class='woo_product_grid'>
											<div class='woo_product_thumb'>
											<img class = 'prod_img' src='../{$row['prod_photo']}' class='img-fluid' alt='' />
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
                               
							</div>
							
						</div>
						
					</div>
				</div>
			</section>
			<!-- =========================== Search Products =================================== -->
		</div>