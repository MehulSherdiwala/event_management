<div class="page-header navbar navbar-fixed-top">
	<div class="page-header-inner ">
		<!-- logo start -->
		<div class="page-logo">
			<a href="index.html">
				<span class="logo-icon material-icons fa-rotate-45">school</span>
				<span class="logo-default">MT Event </span> </a>
		</div>
		<!-- logo end -->
		<ul class="nav navbar-nav navbar-left in">
			<li><a href="#" class="menu-toggler sidebar-toggler"><i class="icon-menu"></i></a></li>
		</ul>
		<form class="search-form-opened" action="#" method="GET">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Search..." name="query">
				<span class="input-group-btn">
							<a href="javascript:void(0);" class="btn submit">
								<i class="icon-magnifier"></i>
							</a>
						</span>
			</div>
		</form>
		<!-- start mobile menu -->
		<a href="javascript:void(0);" class="menu-toggler responsive-toggler" data-toggle="collapse"
		   data-target=".navbar-collapse">
			<span></span>
		</a>
		<!-- end mobile menu -->
		<!-- start header menu -->
		<div class="top-menu">
			<ul class="nav navbar-nav pull-right">
				<li><a href="javascript:void(0);" class="fullscreen-btn"><i class="fa fa-arrows-alt"></i></a></li>
				<!-- start notification dropdown -->
				<li class="dropdown dropdown-extended dropdown-notification" id="header_notification_bar">
					<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
					   data-close-others="true">
						<i class="fa fa-bell-o"></i>
						<span class="badge headerBadgeColor1"> 0 </span>
					</a>
					<ul class="dropdown-menu">
						<li class="external">
							<h3><span class="bold">Notifications</span></h3>
							<span class="notification-label purple-bgcolor">New 6</span>
						</li>
						<li>
							<ul class="dropdown-menu-list small-slimscroll-style" data-handle-color="#637283">
								<li>
									<a href="javascript:void(0);">
										<span class="time">just now</span>
										<span class="details">
													<span class="notification-icon circle deepPink-bgcolor"><i
															class="fa fa-check"></i></span>
													Congratulations!. </span>
									</a>
								</li>
								<li>
									<a href="javascript:void(0);">
										<span class="time">3 mins</span>
										<span class="details">
													<span class="notification-icon circle purple-bgcolor"><i
															class="fa fa-user o"></i></span>
													<b>John Micle </b>is now following you. </span>
									</a>
								</li>
								<li>
									<a href="javascript:void(0);">
										<span class="time">7 mins</span>
										<span class="details">
													<span class="notification-icon circle blue-bgcolor"><i
															class="fa fa-comments-o"></i></span>
													<b>Sneha Jogi </b>sent you a message. </span>
									</a>
								</li>
								<li>
									<a href="javascript:void(0);">
										<span class="time">12 mins</span>
										<span class="details">
													<span class="notification-icon circle pink"><i
															class="fa fa-heart"></i></span>
													<b>Ravi Patel </b>like your photo. </span>
									</a>
								</li>
								<li>
									<a href="javascript:void(0);">
										<span class="time">15 mins</span>
										<span class="details">
													<span class="notification-icon circle yellow"><i
															class="fa fa-warning"></i></span> Warning! </span>
									</a>
								</li>
								<li>
									<a href="javascript:void(0);">
										<span class="time">10 hrs</span>
										<span class="details">
													<span class="notification-icon circle red"><i
															class="fa fa-times"></i></span> Application error. </span>
									</a>
								</li>
							</ul>
							<div class="dropdown-menu-footer">
								<a href="javascript:void(0)"> All notifications </a>
							</div>
						</li>
					</ul>
				</li>
				<!-- end notification dropdown -->
				<!-- start manage user dropdown -->
				<li class="dropdown dropdown-user">
					<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
					   data-close-others="true">
						<img alt="" class="img-circle " src="<?= base_url ?>assets/img/dp.jpg" />
						<span class="username username-hide-on-mobile"> <?= $_SESSION['admin_name']?> </span>
						<i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu dropdown-menu-default">
						<li>
							<a href="user_profile.html">
								<i class="icon-user"></i> Profile </a>
						</li>
						<li>
							<a href="#">
								<i class="icon-settings"></i> Settings
							</a>
						</li>
						<li>
							<a href="#">
								<i class="icon-directions"></i> Help
							</a>
						</li>
						<li class="divider"> </li>
						<li>
							<a href="lock_screen.html">
								<i class="icon-lock"></i> Lock
							</a>
						</li>
						<li>
							<a href="<?= base_url?>admin/logout.php">
								<i class="icon-logout"></i> Log Out </a>
						</li>
					</ul>
				</li>

			</ul>
		</div>
	</div>
</div>
<!-- end header -->
