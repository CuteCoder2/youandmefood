<section>
				<div class="container">
					
					<div class="row">
						

                            <div class="col-lg-6 col-md-12 col-sm-12 " id="sign_in">
                                <div class="login_signup">
								<h3 class="login_sec_title">Sign In</h3>
								<form action="../functions/login_form.php" method="POST" >
                                    
									<div class="form-group">
                                        <label>USER NAME</label>
										<input type="text" class="form-control" placeholder="Username / E-Mail" name="username" >
									</div>
									
									<div class="form-group">
                                        <label>Password</label>
										<input type="password" class="form-control" placeholder="password" name="password" >
									</div>
									
									<div class="login_flex">
										<div class="login_flex_1">
											<a href="#" class="text-bold">Forget Password?</a>
											<br>
											<label for="">create account click</label>
											<a href="#" class="text-bold" id="create">here</a>
										</div>
										<div class="login_flex_1">
											</div>
											<div class="login_flex_2">
												<div class="form-group mb-0">
													<button type="submit" class="btn btn-md btn-theme" id="login_btn" name="login_btn">Login</button>
												</div>
											</div>
										</div>
										
									</form>
								</div>
							</div>
							
							
							
							
							<div class="col-lg-6 col-md-12 col-lg-12 col-sm-12 " id="sign_up">
								<div class="login_signup" >
									<h3 class="login_sec_title">Create An Account</h3>
									<form method="POST" action="../functions/register_client.php"cl name="signin" enctype="multipart/form-data">
										
										<div class="row">
											
												<div class="col-12" >
													<div class="form-group " id="form-group" class="signup_imag">
														<div id="blur_down"></div>
														<input id="signup_imag" type="file"  name="userImg">
													</div>
												</div>
										
                                        
										<div class="col-lg-6 col-md-6">
											<div class="form-group">
                                                <label>First Name</label>
    										<input type="text" class="form-control check" name="fname" minlength="8" required>
											</div>
										</div>
										
										<div class="col-lg-6 col-md-6">
											<div class="form-group">
												<label>Last Name</label>
												<input type="text" class="form-control check" name="lname" minlength="8" required>
											</div>
										</div>

										<div class="col-lg-6 col-md-6">
											<div class="form-group">
                                                <label>User Name</label>
												<input type="text" class="form-control check" name="uname" id="username" minlength="8" required>
											<span id="user_error"></span>
											</div>
										</div>

										<div class="col-lg-6 col-md-6">
											<div class="form-group">
                                                <label>City</label>
												<input type="text" class="form-control" name="city" required>
											</div>
										</div>

										<div class="col-lg-6 col-md-6">
											<div class="form-group">
                                                <label>Phone</label>
												<input type="text" class="form-control" name="phone" required>
											</div>

										</div>
										<div class="col-lg-6 col-md-6">
											<div class="form-group">
                                                <label>E-Mail</label>
												<input type="email" class="form-control" name="email" required>
											</div>
										</div>

										<div class="col-lg-6 col-md-6">
                                            <div class="form-group">
												<label>Password</label>
												<input type="password" class="form-control" name="password" minlength="8" required>
											</div>
										</div>
										
										<div class="col-lg-6 col-md-6">
                                            <div class="form-group">
												<label>Confirm Password</label>
												<input type="password" class="form-control" name="con_password" minlength="8" required>
											</div>
										</div>
										
										<div class="col-lg-12 col-md-12">
                                            <div class="login_flex ">
													<div class="login_flex_1 ">
														<label>if you alraedy have and account</label>
													<a href="#" class="text-bold"  id="haveAcount">click here</a>
												</div>
												<div class="login_flex_2">
                                                    <div class="form-group mb-0">
														<button type="submit" class="btn btn-md btn-theme" id="signup_btn" name="signup_btn">Sign Up</button>
													</div>
												</div>
											</div>
										</div>
										
									</div>
						
                                    
								</form>
							</div>
						</div>
                
					</div>
				</div>
			</section>
			<!-- =========================== Login/Signup =================================== -->
<div class="clearfix">
                <h1>
                    <!-- add space here -->
                </h1>
            </div>
            <script src="../assets/js/loginSwitch.js"></script>
