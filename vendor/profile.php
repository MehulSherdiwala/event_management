<?php
require_once "../model/autoload.php";

if (!isset($_SESSION['vendor_id'])){
	header('location:' . base_url . 'vendor/login.php');
}

$vendor = new Vendor();
$loc    = new Location();

$vendorDetails  = $vendor->getVendorDetails($_SESSION['vendor_id']);
$city           = $loc->getCity($vendorDetails['city_id']);
$state          = $loc->getState($city['state_id']);
$countryList    = $loc->getCountry();
$stateList      = $loc->getState($state['country_id'],'country');
$cityList       = $loc->getCity($state['state_id'],'state');


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
	<title>Event Planning</title>
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
	<link rel="shortcut icon" href="../assets/images/Favicon.ico" />

    <style>
        .edit-section{
            display: none;
        }
        .open{
            display: block;
        }
        .info-slide {
            padding: 0 20px 0 20px;
            display: inline-block;
            width: 100%;
        }
        .info-slide p {
            display: block;
            line-height: 30px;
            margin: 0px;
            font-size: 14px;
            color: #666666;
        }
        .info-slide p span {
            text-align: right;
            width: 50%;
            max-width: 192px;
            padding: 0 15px 0 0;
            display: inline-block;
            color: #333333;
            font-weight: 600;
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
							<div class="page-title">Profile</div>
						</div>
						<ol class="breadcrumb page-breadcrumb pull-right">
							<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
																   href="index.html">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
							</li>
							<li class="active">Profile</li>
						</ol>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-sm-12">
                                <div class="card  card-box">
                                    <div class="card-head">
                                        <header>Edit Profile</header>
                                        <button id="edit_prof"
                                                class="mdl-button mdl-js-button mdl-button--icon pull-right"
                                                data-upgraded=",MaterialButton">
                                            <i class="fa fa-pencil"></i>
                                        </button>
                                    </div>
                                    <div class="card-body " id="bar-parent">
                                        <div class="edit-section open">
                                            <div class="info-slide">
                                                <p><span>Name :</span><?= $vendorDetails['vendor_name'] ?></p>
                                            </div>
                                            <div class="info-slide">
                                                <p><span>Email ID :</span><?= $vendorDetails['email'] ?></p>
                                            </div>
                                            <div class="info-slide">
                                                <p><span>Mobile Number :</span><?= $vendorDetails['contact'] ?></p>
                                            </div>
                                            <div class="info-slide">
                                                <p><span>Organization Name :</span><?= $vendorDetails['org_name'] ?></p>
                                            </div>
                                            <div class="info-slide">
                                                <p><span>Address  :</span><?= $vendorDetails['address'] ?></p>
                                            </div>
                                            <div class="info-slide">
                                                <p><span>Location  :</span><?= $vendorDetails['loc'] ?></p>
                                            </div>
                                        </div>
                                        <div class="edit-section">
                                            <form action="profile_action.php" method="post">
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <label>Username </label>
                                                        <input type="text" name="vendor_name" class="form-control"
                                                               value="<?= $vendorDetails['vendor_name'] ?>"/>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Mobile No </label>
                                                        <input type="number" name="contact" class="form-control"
                                                               maxlength="10" value="<?= $vendorDetails['contact'] ?>"/>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Organization Name </label>
                                                        <input type="text" class="form-control" name="org_name"
                                                               value="<?= $vendorDetails['org_name'] ?>">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Address </label>
                                                        <textarea name="address"
                                                                  class="form-control"><?= $vendorDetails['address'] ?></textarea>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Country </label>
                                                        <select id="country" class="form-control" required
                                                                data-parsley-min="1"
                                                                data-parsley-min-message="This value is required.">
                                                            <option value="0">Select Country</option>
															<?php
															foreach ($countryList as $c)
															{
																?>
                                                                <option value="<?= $c['country_id'] ?>" <?= ($c['country_id'] == $state['country_id']) ? 'selected' : '' ?>><?= $c['country_name'] ?></option>
																<?php
															}
															?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>State</label>
                                                        <select id="state" class="form-control" required
                                                                data-parsley-min="1"
                                                                data-parsley-min-message="This value is required.">
                                                            <option value="0">Select State</option>
															<?php
															foreach ($stateList as $s)
															{
																?>
                                                                <option value="<?= $s['state_id'] ?>" <?= ($s['state_id'] == $state['state_id']) ? 'selected' : '' ?>><?= $s['state_name'] ?></option>
																<?php
															}
															?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>City</label>
                                                        <select name="city_id" id="city" class="form-control" required
                                                                data-parsley-min="1"
                                                                data-parsley-min-message="This value is required.">
                                                            <option value="0">Select City</option>
															<?php
															foreach ($cityList as $c)
															{
																?>
                                                                <option value="<?= $c['city_id'] ?>" <?= ($c['city_id'] == $city['city_id']) ? 'selected' : '' ?>><?= $c['city_name'] ?></option>
																<?php
															}
															?>

                                                        </select>
                                                    </div>
                                                    <hr>
                                                    <button type="submit" class="btn btn-success">Edit</button>
                                                </div>
                                            </form>
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
	<!-- end page container -->
	<!-- start footer -->
	<div class="page-footer">
		<div class="page-footer-inner"> 2020 &copy; Event Planning</div>
		<div class="scroll-to-top">
			<i class="icon-arrow-up"></i>
		</div>
	</div>
	<!-- end footer -->
</div>
<!-- Modal -->
<div class="modal fade" id="edit_event" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">User Event Services</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="services"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
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

    $("#edit_prof").on('click', function (){
        $(".edit-section").toggleClass('open');
    });

    $("#country").on('change', function (){
        let cid = $(this).val();

        $.ajax({
            url: '../model/location.php?ajax=true&state=true&country_id='+cid,
            method: 'get',
            success:function (res){
                let obj = JSON.parse(res);
                $("#city").empty()
                    .append($("<option></option>")
                        .attr("value" , 0)
                        .text("Select City"));
                let state = $("#state");
                state
                    .empty()
                    .append($("<option></option>")
                        .attr("value" , 0)
                        .text("Select State"));

                $.each(obj , function (key , value) {
                    state
                        .append($("<option></option>")
                            .attr("value" , value.state_id)
                            .text(value.state_name));
                });
            }
        })
    });
    $("#state").on('change', function (){
        let sid = $(this).val();

        $.ajax({
            url: '../model/location.php?ajax=true&city=true&state_id='+sid,
            method: 'get',
            success:function (res){
                let obj = JSON.parse(res);
                let city = $("#city");
                city
                    .empty()
                    .append($("<option></option>")
                        .attr("value" , 0)
                        .text("Select City"));

                $.each(obj , function (key , value) {
                    city
                        .append($("<option></option>")
                            .attr("value" , value.city_id)
                            .text(value.city_name));
                });
            }
        })
    });
</script>

</body>
</html>
