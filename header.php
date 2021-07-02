
<header id="header">
	<div class="quck-link">
		<div class="container">
			<div class="mail"><a href="MailTo:info@megictoucheventmanagement.com"><span class="icon icon-envelope"></span>info@megictoucheventmanagement.com</a></div>
			<?php
			if (isset($_SESSION['user_id']) || isset($_SESSION['vendor_id'])):
			?>
			<div class="right-link">
				<ul>
					<li><a href="add_to_cart.php"><span class="icon icon-carts"></span> cart</a></li>
<!--					<li><a href="#"><span class="icon icon-invite-friend"></span>Invite Friends</a></li>-->
					<li class="sub-links">
						<a href="javascript:void(0);"><?= $_SESSION['user_name']?? $_SESSION['vendor_name'] ?> <span class="icon icon-arrow-down"></span></a>
						<ul class="sub-nav">
							<li><a href="account_profile.html">Profile</a></li>
							<li><a href="user_bookings.php">Booking</a></li>
							<li><a href="logout.php">Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<?php
			else:
			?>
			<div class="right-link">
				<ul>
					<li><a href="vendor_register.php"><span class="icon icon-multi-user"></span>Become a Vendor</a></li>
					<li><a href="#"><span class="icon icon-invite-friend"></span>Invite Friends</a></li>
					<li class="registration"><a href="javascript:void(0);" data-toggle="modal" data-target="#registrationModal">Registration</a></li>
					<li><a href="javascript:void(0);" data-toggle="modal" data-target="#loginModal">Login</a></li>
				</ul>
			</div>
			<?php
			endif;
			?>
		</div>
	</div>
	<nav id="nav-main">
		<div class="container">
			<div class="navbar navbar-inverse">
				<div class="navbar-header">
					<a href="index.php" class="navbar-brand"><img src="assets/images/logo.png" alt=""></a>
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="icon1-barMenu"></span>
						<span class="icon1-barMenu"></span>
						<span class="icon1-barMenu"></span>
					</button>

				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="single-col">
							<a href="index.php">Home <!--<span class="icon icon-arrow-down"></span>--></a>
							<!--<ul>
								<li><a href="index.html">Home Version 1</a></li>
								<li><a href="index2.html">Home Version 2</a></li>
								<li><a href="index3.html">Home Version 3</a></li>
							</ul>-->
						</li>
						<li>
							<a href="services.php">Services </a>
						</li>
						<li>
							<a href="event.php">Events</a>
							<!-- <ul>
								 <li><a href="search-result.html">listing Page</a></li>
								 <li><a href="search_detail.html">Details Page</a></li>
								 <li><a href="blog.html">Blog</a></li>
								 <li><a href="blog_details.html">Blog Details</a></li>
								 <li><a href="news-details.html">News Details</a></li>
								 <li>
									 <a href="booking_step1.html">Booking Step <span class="icon icon-arrow-right"></span></a>
									 <ul>
										 <li><a href="booking_step1.html">Booking Step1</a></li>
										 <li><a href="booking_step2.html">Booking Step2</a></li>
										 <li><a href="booking_step3.html">Booking Step3</a></li>
									 </ul>
								 </li>
								 <li><a href="career.html">Career</a></li>
								 <li><a href="mapView.html">Map View</a></li>
								 <li><a href="privacy_policy.html">Privacy Policy</a></li>
								 <li>
									 <a href="account_profile.html">My Account <span class="icon icon-arrow-right"></span></a>
									 <ul>
										 <li><a href="account_profile.html">Profile</a></li>
										 <li><a href="account_booking.html">Orders</a></li>
										 <li><a href="account_password.html">Change Password</a></li>
									 </ul>
								 </li>
								 <li><a href="team.html">Team</a></li>
								 <li><a href="wishlist.html">Wishlist</a></li>
								 <li><a href="page-404.html">404 page</a></li>
							 </ul>-->
						</li>
						<!--<li><a href="faq.html">FAQ’s </a></li>-->
						<li><a href="aboutUs.php">About Us</a></li>
						<li><a href="contact.php">Contact us</a></li>
					</ul>
					<div class="search-box">
						<div class="search-icon"><span class="icon icon-search"></span></div>
						<div class="search-view">
							<div class="input-box">
								<form>
									<input type="text" placeholder="Search here">
									<input type="submit" value="" >
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>
</header>


<div class="modal modal-vcenter fade" id="loginModal" tabindex="-1" role="dialog">
    <div class="modal-dialog login-popup" role="document">
        <div class="modal-content">
            <div class="close-icon" aria-label="Close" data-dismiss="modal"><img src="assets/images/close-icon.png" alt=""></div>
            <div class="left-img"><img src="assets/images/login-leftImg.png" alt=""></div>
            <div class="right-info" style="margin-top: 5%">
                <div id="login-parsley">
                    <h1>Login</h1>
                    <div class="input-form">
                        <div class="input-box">
                            <div class="icon icon-user"></div>
                            <input type="email" id="email" placeholder="Email Id" required>
                        </div>
                        <div class="input-box">
                            <div class="icon icon-lock"></div>
                            <input type="password" id="password" placeholder="Password" required>
                        </div>
                        <div class="check-slide">
                            <div class="check">
                                <label class="label_check c_on" for="checkbox-02">
                                    <input type="checkbox" name="sample-checkbox-01" id="checkbox-02" value="1">
                                    Remember me</label>
                            </div>
                            <a href="#">Forgot password ?</a>
                        </div>
                        <div class="text-center text-danger" id="error"></div>
                        <div class="submit-slide">
                            <input type="submit" id="login" value="Login" class="btn">
                        </div>
                    </div>
                </div>
                <div class="signUp-link">Haven’t signed up yet? <a href="javascript:void(0);">Sign Up</a></div>
            </div>
        </div>
    </div>
</div>
<div class="modal modal-vcenter fade" id="registrationModal" tabindex="-1" role="dialog">
    <div class="modal-dialog registration-popup" role="document">
        <div class="modal-content">
            <div class="close-icon" aria-label="Close" data-dismiss="modal" ><img src="assets/images/close-icon.png" alt=""></div>
            <h1>New Member Registration</h1>
            <div class="registration-form">
                <div class="info">
                    <h2>Why to sign up</h2>
                    <ul>
                        <li>Exclusive discounts for all bookings</li>
                        <li>Full access all discounted prices</li>
                        <li>Dedicated wed-ordinator for your event</li>
                        <li>Custom event planner for your event</li>
                    </ul>
                </div>
                <form id="reg-parsley">
                    <div class="form-filde">
                        <div class="input-box">
                            <input type="email" id="reg-email" placeholder="Email ID" required>
                        </div>
                        <div class="input-box">
                            <input type="text" id="username" placeholder="Username" required>
                        </div>
                        <div class="input-box">
                            <input type="password" id="reg-password" placeholder="Password" required>
                        </div>
                        <div class="input-box">
                            <input type="number" id="contact" placeholder="Phone" required data-parsley-type="digits">
                        </div>
                        <div class="input-box">
                            <textarea id="address" class="form-control" placeholder="Address" required></textarea>
                        </div>
                        <div class="text-center text-danger" id="reg-error"></div>
                        <div class="submit-slide">
                            <input type="button" role="button" id="register" value="Register" class="btn">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
