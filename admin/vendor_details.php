<?php
require_once "../model/autoload.php";

if (!isset($_SESSION['admin_id'])){
	header('location:' . base_url . 'admin/login.php');
}
$vendor = new Vendor();

$vendorList = $vendor->getVendors();
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
							<div class="page-title">Vendor Details</div>
						</div>
						<ol class="breadcrumb page-breadcrumb pull-right">
							<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
																   href="index.html">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
							</li>
							<li class="active">Vendor Details</li>
						</ol>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-sm-12">
								<div class="card card-topline-lightblue">
									<div class="card-head">
										<header>Vendor Details List</header>
										<div class="tools">
											<a class="fa fa-repeat btn-color box-refresh" href="javascript:void(0);"></a>
											<a class="t-collapse btn-color fa fa-chevron-down"
											   href="javascript:void(0);"></a>
											<a class="t-close btn-color fa fa-times" href="javascript:void(0);"></a>
										</div>
									</div>
									<div class="card-body ">
										<div class="table-scrollable">
											<table class="table table-bordered table-striped" id="vendor">
												<thead>
												<tr>
													<th>Vendor Id</th>
													<th>Vendor Name</th>
													<th>Email Id</th>
													<th>Contact</th>
													<th>Org. Name</th>
													<th>Address</th>
													<th>City</th>
													<th>Status</th>
													<th width="60px"></th>
												</tr>
												</thead>
												<tbody>
												<?php
												foreach ($vendorList as $row)
												{
													?>
													<tr>
														<td><?= $row['vendor_id']?></td>
														<td><?= $row['vendor_name']?></td>
														<td><?= $row['email']?></td>
														<td><?= $row['contact']?></td>
														<td><?= $row['org_name']?></td>
														<td><?= $row['address']?></td>
														<td><?= $row['city_name']?></td>
														<td><?php if ($row['status']==0) : ?> <span class="badge badge-success">Active</span> <?php else : ?> <span class="badge badge-danger">Blocked</span> <?php endif;?></td>
														<td>
															<button type="button" class="btn btn-info btn-sm edit_vendor" data-eid="<?= $row['vendor_id']?>" data-toggle="modal" data-target="#edit_vendor"><i class="fa fa-pencil"></i></button>
														</td>
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
		<div class="chat-sidebar-container" data-close-on-body-click="false">
			<div class="chat-sidebar">
				<ul class="nav nav-tabs">
					<li class="nav-item">
						<a href="#quick_sidebar_tab_1" class="nav-link active tab-icon" data-toggle="tab"> <i
								class="material-icons">chat</i>Chat
							<span class="badge badge-danger">4</span>
						</a>
					</li>
					<li class="nav-item">
						<a href="#quick_sidebar_tab_3" class="nav-link tab-icon" data-toggle="tab"> <i
								class="material-icons">settings</i>
							Settings
						</a>
					</li>
				</ul>
				<div class="tab-content">
					<!-- Start Vendor Chat -->
					<div class="tab-pane active chat-sidebar-chat in active show" role="tabpanel"
						 id="quick_sidebar_tab_1">
						<div class="chat-sidebar-list">
							<div class="chat-sidebar-chat-vendors slimscroll-style" data-rail-color="#ddd"
								 data-wrapper-class="chat-sidebar-list">
								<div class="chat-header">
									<h5 class="list-heading">Online</h5>
								</div>
								<ul class="media-list list-items">
									<li class="media"><img class="media-object" src="<?= base_url?>assets/img/prof/prof3.jpg"
														   width="35" height="35" alt="...">
										<i class="online dot"></i>
										<div class="media-body">
											<h5 class="media-heading">John Deo</h5>
											<div class="media-heading-sub">Spine Surgeon</div>
										</div>
									</li>
									<li class="media">
										<div class="media-status">
											<span class="badge badge-success">5</span>
										</div> <img class="media-object" src="<?= base_url?>assets/img/prof/prof1.jpg"
													width="35" height="35" alt="...">
										<i class="busy dot"></i>
										<div class="media-body">
											<h5 class="media-heading">Rajesh</h5>
											<div class="media-heading-sub">Director</div>
										</div>
									</li>
									<li class="media"><img class="media-object" src="<?= base_url?>assets/img/prof/prof5.jpg"
														   width="35" height="35" alt="...">
										<i class="away dot"></i>
										<div class="media-body">
											<h5 class="media-heading">Jacob Ryan</h5>
											<div class="media-heading-sub">Ortho Surgeon</div>
										</div>
									</li>
									<li class="media">
										<div class="media-status">
											<span class="badge badge-danger">8</span>
										</div> <img class="media-object" src="<?= base_url?>assets/img/prof/prof4.jpg"
													width="35" height="35" alt="...">
										<i class="online dot"></i>
										<div class="media-body">
											<h5 class="media-heading">Kehn Anderson</h5>
											<div class="media-heading-sub">CEO</div>
										</div>
									</li>
									<li class="media"><img class="media-object" src="<?= base_url?>assets/img/prof/prof2.jpg"
														   width="35" height="35" alt="...">
										<i class="busy dot"></i>
										<div class="media-body">
											<h5 class="media-heading">Sarah Smith</h5>
											<div class="media-heading-sub">Anaesthetics</div>
										</div>
									</li>
									<li class="media"><img class="media-object" src="<?= base_url?>assets/img/prof/prof7.jpg"
														   width="35" height="35" alt="...">
										<i class="online dot"></i>
										<div class="media-body">
											<h5 class="media-heading">Vlad Cardella</h5>
											<div class="media-heading-sub">Cardiologist</div>
										</div>
									</li>
								</ul>
								<div class="chat-header">
									<h5 class="list-heading">Offline</h5>
								</div>
								<ul class="media-list list-items">
									<li class="media">
										<div class="media-status">
											<span class="badge badge-warning">4</span>
										</div> <img class="media-object" src="<?= base_url?>assets/img/prof/prof6.jpg"
													width="35" height="35" alt="...">
										<i class="offline dot"></i>
										<div class="media-body">
											<h5 class="media-heading">Jennifer Maklen</h5>
											<div class="media-heading-sub">Nurse</div>
											<div class="media-heading-small">Last seen 01:20 AM</div>
										</div>
									</li>
									<li class="media"><img class="media-object" src="<?= base_url?>assets/img/prof/prof8.jpg"
														   width="35" height="35" alt="...">
										<i class="offline dot"></i>
										<div class="media-body">
											<h5 class="media-heading">Lina Smith</h5>
											<div class="media-heading-sub">Ortho Surgeon</div>
											<div class="media-heading-small">Last seen 11:14 PM</div>
										</div>
									</li>
									<li class="media">
										<div class="media-status">
											<span class="badge badge-success">9</span>
										</div> <img class="media-object" src="<?= base_url?>assets/img/prof/prof9.jpg"
													width="35" height="35" alt="...">
										<i class="offline dot"></i>
										<div class="media-body">
											<h5 class="media-heading">Jeff Adam</h5>
											<div class="media-heading-sub">Compounder</div>
											<div class="media-heading-small">Last seen 3:31 PM</div>
										</div>
									</li>
									<li class="media"><img class="media-object" src="<?= base_url?>assets/img/prof/prof10.jpg"
														   width="35" height="35" alt="...">
										<i class="offline dot"></i>
										<div class="media-body">
											<h5 class="media-heading">Anjelina Cardella</h5>
											<div class="media-heading-sub">Physiotherapist</div>
											<div class="media-heading-small">Last seen 7:45 PM</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- End Vendor Chat -->
					<!-- Start Setting Panel -->
					<div class="tab-pane chat-sidebar-settings" role="tabpanel" id="quick_sidebar_tab_3">
						<div class="chat-sidebar-settings-list slimscroll-style">
							<div class="chat-header">
								<h5 class="list-heading">Layout Settings</h5>
							</div>
							<div class="chatpane inner-content ">
								<div class="settings-list">
									<div class="setting-item">
										<div class="setting-text">Sidebar Position</div>
										<div class="setting-set">
											<select
												class="sidebar-pos-option form-control input-inline input-sm input-small ">
												<option value="left" selected="selected">Left</option>
												<option value="right">Right</option>
											</select>
										</div>
									</div>
									<div class="setting-item">
										<div class="setting-text">Header</div>
										<div class="setting-set">
											<select
												class="page-header-option form-control input-inline input-sm input-small ">
												<option value="fixed" selected="selected">Fixed</option>
												<option value="default">Default</option>
											</select>
										</div>
									</div>
									<div class="setting-item">
										<div class="setting-text">Footer</div>
										<div class="setting-set">
											<select
												class="page-footer-option form-control input-inline input-sm input-small ">
												<option value="fixed">Fixed</option>
												<option value="default" selected="selected">Default</option>
											</select>
										</div>
									</div>
								</div>
								<div class="chat-header">
									<h5 class="list-heading">Account Settings</h5>
								</div>
								<div class="settings-list">
									<div class="setting-item">
										<div class="setting-text">Notifications</div>
										<div class="setting-set">
											<div class="switch">
												<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect"
													   for="switch-1">
													<input type="checkbox" id="switch-1" class="mdl-switch__input"
														   checked>
												</label>
											</div>
										</div>
									</div>
									<div class="setting-item">
										<div class="setting-text">Show Online</div>
										<div class="setting-set">
											<div class="switch">
												<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect"
													   for="switch-7">
													<input type="checkbox" id="switch-7" class="mdl-switch__input"
														   checked>
												</label>
											</div>
										</div>
									</div>
									<div class="setting-item">
										<div class="setting-text">Status</div>
										<div class="setting-set">
											<div class="switch">
												<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect"
													   for="switch-2">
													<input type="checkbox" id="switch-2" class="mdl-switch__input"
														   checked>
												</label>
											</div>
										</div>
									</div>
									<div class="setting-item">
										<div class="setting-text">2 Steps Verification</div>
										<div class="setting-set">
											<div class="switch">
												<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect"
													   for="switch-3">
													<input type="checkbox" id="switch-3" class="mdl-switch__input"
														   checked>
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="chat-header">
									<h5 class="list-heading">General Settings</h5>
								</div>
								<div class="settings-list">
									<div class="setting-item">
										<div class="setting-text">Location</div>
										<div class="setting-set">
											<div class="switch">
												<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect"
													   for="switch-4">
													<input type="checkbox" id="switch-4" class="mdl-switch__input"
														   checked>
												</label>
											</div>
										</div>
									</div>
									<div class="setting-item">
										<div class="setting-text">Save Histry</div>
										<div class="setting-set">
											<div class="switch">
												<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect"
													   for="switch-5">
													<input type="checkbox" id="switch-5" class="mdl-switch__input"
														   checked>
												</label>
											</div>
										</div>
									</div>
									<div class="setting-item">
										<div class="setting-text">Auto Updates</div>
										<div class="setting-set">
											<div class="switch">
												<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect"
													   for="switch-6">
													<input type="checkbox" id="switch-6" class="mdl-switch__input"
														   checked>
												</label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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
<!-- Modal -->
<div class="modal fade" id="edit_vendor" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<form action="<?= base_url?>admin/vendor_action.php" method="post">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Edit Vendor</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label>Status : </label>
						<input type="hidden" name="vendor_edit" id="1">
						<input type="hidden" name="vendor_id" id="vendor_id">
						<select name="status" id="status" class="select2">
							<option value="0">Active</option>
							<option value="1">Blocked</option>
						</select>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Edit Vendor</button>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- start js include path -->
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

    $("#vendor").DataTable();

    $(".edit_vendor").on('click', function (){
        let id = $(this).data('eid');

        $.ajax({
            url: '<?= base_url?>model/vendor.php?ajax=true&vendor=status&vendor_id='+id,
            success:function (res){
                $("#vendor_id").val(id);
                $("#status>option[value="+ res +"]").prop('selected',true).change();
            }
        })
    })
</script>
</body>
</html>
