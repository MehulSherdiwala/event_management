<?php
require '../model/autoload.php';

$book = new Book();
$loc  = new Location();

$services = $book->getApproval($_SESSION['vendor_id']);

//echo "<pre>";
//print_r ($services);
//echo "</pre>";
//die();

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

	<style>
        .rating-group {
            display: inline-flex;
        }
        .rating__icon {
            pointer-events: none;
        }

        .rating__input {
            position: absolute !important;
            left: -9999px !important;
        }

        .rating__input--none {
            display: none
        }

        .rating__label {
            cursor: pointer;
            padding: 0 0.1em;
            font-size: 2rem;
        }

        .rating__icon--star {
            color: orange;
        }

        .rating__input:checked ~ .rating__label .rating__icon--star {
            color: #ddd;
        }

        .rating-group:hover .rating__label .rating__icon--star {
            color: orange;
        }

        .rating__input:hover ~ .rating__label .rating__icon--star {
            color: #ddd;
        }
	</style>

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
							<div class="page-title">User Details</div>
						</div>
						<ol class="breadcrumb page-breadcrumb pull-right">
							<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
																   href="index.html">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
							</li>
							<li class="active">User Details</li>
						</ol>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-sm-12">
								<div class="card card-topline-lightblue">
									<div class="card-head">
										<header>User Details List</header>
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
													<th>Event id</th>
													<th>Event Name</th>
													<th>Event Description</th>
													<th>Event Date</th>
													<th>Service Name</th>
													<th>Amount</th>
													<th>Venue</th>
													<th>Location</th>
													<th></th>
												</tr>
												</thead>
												<tbody>
												<?php
												foreach ($services as $row)
												{
													?>
													<tr>
														<td><?= $row->event_id?></td>
														<td><?= $row->event_type_name?></td>
														<td><?= $row->event_name?></td>
														<td><?= date('d-m-Y', strtotime($row->event_date))?></td>
														<td><?= $row->vendor_service_name?></td>
														<td><?= $row->amount?></td>
														<td><?= $row->venue?></td>
														<td><?= $loc->getLocation($row->city_id)?></td>
														<td>
															<button type="button" class="btn btn-info btn-sm approve" data-bid="<?= $row->book_id?>" data-toggle="modal" data-target="#edit_service"><i class="fa fa-edit"></i></button>
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
<div class="modal fade" id="edit_service" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<form action="<?= base_url?>vendor/approve_action.php" method="post">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Approve Service</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label>Service Status : : </label>
						<input type="hidden" name="book_id" id="book_id">
						<select name="status" id="" class="form-control">
							<option value="0">Waiting for Approval</option>
							<option value="1">Approved</option>
						</select>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Submit</button>
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

    $("#user").DataTable();

    $(".approve").on('click', function (){
        let book_id = $(this).data('bid');
        $("#book_id").val(book_id);
	});
</script>
</body>
</html>

