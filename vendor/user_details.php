    <?php
require_once "../model/autoload.php";

if (!isset($_SESSION['vendor_id'])){
	header('location:' . base_url . 'vendor/login.php');
}
$user = new User();

$userList = $user->getUsers($_SESSION['vendor_id']);
//echo "<pre>";
//print_r ($userList);
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
													<th>User Id</th>
													<th>User Name</th>
													<th>Email Id</th>
													<th>Contact</th>
													<th>Address</th>
													<th>City</th>
													<th>Gender</th>
                                                    <th></th>
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
														<td><?= $row['email']?></td>
														<td><?= $row['contact']?></td>
														<td><?= $row['address']?></td>
														<td><?= $row['city_name']?></td>
														<td><?= $row['gender']?></td>
														<td>
															<button type="button" class="btn btn-info btn-sm rate_user" data-eid="<?= $row['user_id']?>" data-toggle="modal" data-target="#rate_user"><i class="fa fa-edit"></i></button>
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
<div class="modal fade" id="rate_user" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<form action="<?= base_url?>vendor/review.php" method="post">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">User Rate & Review</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label>Rate : </label>

                        <div id="full-stars-example-two">
                            <div class="rating-group">
                                <input disabled checked class="rating__input rating__input--none" name="rating" id="rating-none" value="0" type="radio">
                                <label aria-label="1 star" class="rating__label" for="rating-1"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                <input class="rating__input" name="rating" id="rating-1" value="1" type="radio">
                                <label aria-label="2 stars" class="rating__label" for="rating-2"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                <input class="rating__input" name="rating" id="rating-2" value="2" type="radio">
                                <label aria-label="3 stars" class="rating__label" for="rating-3"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                <input class="rating__input" name="rating" id="rating-3" value="3" type="radio">
                                <label aria-label="4 stars" class="rating__label" for="rating-4"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                <input class="rating__input" name="rating" id="rating-4" value="4" type="radio">
                                <label aria-label="5 stars" class="rating__label" for="rating-5"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                <input class="rating__input" name="rating" id="rating-5" value="5" type="radio">
                            </div>
                        </div>
						<input type="hidden" name="user_rate" value="1">
						<input type="hidden" name="user_id" id="user_id">
						<input type="hidden" name="user_rate_id" id="user_rate_id" value="0">
						<input type="hidden" name="user_review_id" id="user_review_id" value="0">
					</div>
                    <div class="form-group">
                        <label>Write Review : </label>
                        <textarea name="review" id="review" class="form-control"></textarea>
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

    $(".rate_user").on('click', function (){
        let id = $(this).data('eid');
        $("#user_id").val(id);
        let vid = <?= $_SESSION['vendor_id']?>;

        $.ajax({
            url: '<?= base_url?>model/user.php?ajax=true&user_rate_review=1&vendor_id='+vid + '&user_id='+ id,
            success:function (res){
                if (res !== "null") {
                    let obj = JSON.parse(res);
                    if (obj.review !== null) {
                        $("#review").val(obj.review.review);
                        $("#user_review_id").val(obj.review.user_review_id);
                    }
                    if (obj.rate !== null) {
                        $("#user_rate_id").val(obj.rate.user_rate_id);
                        $("#rating-" + obj.rate.rate).prop('checked' , true);

                    } else {
                        $("#rating-none").prop('checked', true);
                    }
                }
            }
        })
    })
</script>
</body>
</html>
