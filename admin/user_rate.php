<?php
require_once "../model/autoload.php";

if (!isset($_SESSION['admin_id'])){
	header('location:' . base_url . 'admin/login.php');
}
$user = new User();

$userList = $user->getUserRate();
?>

<!DOCTYPE html>
<html lang="en">
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1" name="viewport" />
	<meta name="description" content="Responsive Admin Template" />
	<meta name="author" content="SmartUniversity" />
	<title>Magic Touch Event Management</title>
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css" />
	<!-- icons -->
	<link href="<?= base_url?>assets/fonts/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
	<link href="<?= base_url?>assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<?= base_url?>assets/fonts/material-design-icons/material-icon.css" rel="stylesheet" type="text/css" />
	<link href="<?= base_url ?>assets/fonts/fontawesome/css/all.min.css" rel="stylesheet" type="text/css" />
	<!--bootstrap -->
	<link href="<?= base_url?>assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="<?= base_url?>assets/plugins/datatables/plugins/bootstrap/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
	<!-- Material Design Lite CSS -->
	<link rel="stylesheet" href="<?= base_url?>assets/plugins/material/material.min.css">
	<link rel="stylesheet" href="<?= base_url?>assets/css/material_style.css">
	<!--select2-->
	<link href="../assets/plugins/select2/css/select2.css" rel="stylesheet" type="text/css" />
	<link href="../assets/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />
	<!-- Theme Styles -->
	<link href="<?= base_url?>assets/css/theme/light/theme_style.css?version=3" rel="stylesheet" id="rt_style_components" type="text/css" />
	<link href="<?= base_url?>assets/css/theme/light/style.css" rel="stylesheet" type="text/css" />
	<link href="<?= base_url?>assets/css/plugins.min.css" rel="stylesheet" type="text/css" />
	<link href="<?= base_url?>assets/css/responsive.css" rel="stylesheet" type="text/css" />
	<link href="<?= base_url?>assets/css/theme/light/theme-color.css" rel="stylesheet" type="text/css" />
	<!-- favicon -->
	<link rel="shortcut icon" href="http://radixtouch.in/templates/admin/smart/source/assets/img/favicon.ico" />
</head>
<!-- END HEAD -->

<body
	class="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-white white-sidebar-color logo-indigo">
<div class="page-wrapper">
	<!-- start header -->
	<?php include "header.php"; ?>
	<!-- start page container -->
	<div class="page-container">
		<!-- start sidebar menu -->
		<?php
		include "sidebar.php";
		?>
		<!-- start page content -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<div class="page-bar">
					<div class="page-title-breadcrumb">
						<div class=" pull-left">
							<div class="page-title">User Ratings</div>
						</div>
						<ol class="breadcrumb page-breadcrumb pull-right">
							<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
																   href="index.html">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
							</li>
							<li class="active">User Ratings</li>
						</ol>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-sm-12">
								<div class="card card-topline-lightblue">
									<div class="card-head">
										<header>User Rating List</header>
										<div class="tools">
											<a class="fa fa-repeat btn-color box-refresh" href="javascript:void(0);"></a>
											<a class="t-collapse btn-color fa fa-chevron-down"
											   href="javascript:void(0);"></a>
											<a class="t-close btn-color fa fa-times" href="javascript:void(0);"></a>
										</div>
									</div>
									<div class="card-body ">
										<div class="table-scrollable">
											<table class="table table-bordered table-striped" id="user">
												<thead>
												<tr>
													<th>User Id</th>
													<th>User Name</th>
													<th>Rates</th>
<!--													<th width="60px"></th>-->
												</tr>
												</thead>
												<tbody>
												<?php
												foreach ($userList as $row)
												{
													?>
													<tr>
														<td><?= $row['user_id']?></td>
														<td><?= $row['user_name']?></td>
														<td>
															<?php for($i=1;$i <= $row['rate'];$i++) :?>
																	<i class="fas fa-star"></i>
															<?php endfor;
																for($i=$row['rate'];$i < 5;$i++) :?>
																	<i class="far fa-star"></i>
															<?php endfor; ?>
														</td>
<!--														<td>-->
<!--															<a href="--><?//= base_url?><!--admin/user_action.php?user_rate_delete=true&event_id=--><?//= $row['user_id']?><!--"  class="btn btn-danger btn-sm delete_event"><i class="fa fa-trash"></i></a>-->
<!--														</td>-->
													</tr>
													<?php
												}
												?>


												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end page content -->
		<!-- start chat sidebar -->

		<!-- end chat sidebar -->
	</div>
	<!-- end page container -->
	<!-- start footer -->
	<div class="page-footer">
		<div class="page-footer-inner"> 2020 &copy; Magic Touch Event Management</div>
		<div class="scroll-to-top">
			<i class="icon-arrow-up"></i>
		</div>
	</div>
	<!-- end footer -->
</div>
<script src="<?= base_url?>assets/plugins/jquery/jquery.min.js"></script>
<script src="<?= base_url?>assets/plugins/popper/popper.js"></script>
<script src="<?= base_url?>assets/plugins/jquery-blockui/jquery.blockui.min.js"></script>
<script src="<?= base_url?>assets/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
<script src="<?= base_url?>assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url?>assets/plugins/datatables/plugins/bootstrap/dataTables.bootstrap4.min.js"></script>
<!-- bootstrap -->
<script src="<?= base_url?>assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="<?= base_url?>assets/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<!-- Common js-->
<script src="<?= base_url?>assets/js/app.js"></script>
<script src="<?= base_url?>assets/js/layout.js"></script>
<script src="<?= base_url?>assets/js/theme-color.js"></script>
<!--select2-->
<script src="../assets/plugins/select2/js/select2.js"></script>
<script src="../assets/js/pages/select2/select2-init.js"></script>
<!-- Material -->
<script src="<?= base_url?>assets/plugins/material/material.min.js"></script>
<!-- end js include path -->
<script>

    $("#user").DataTable();

</script>
</body>
</html>
