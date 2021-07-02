<?php
require_once "../model/autoload.php";

if (!isset($_SESSION['admin_id'])){
	header('location:' . base_url . 'admin/login.php');
}

$country = new Location();

$countryList = $country->getCountry();
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
							<div class="page-title">Country</div>
						</div>
						<ol class="breadcrumb page-breadcrumb pull-right">
							<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
																   href="index.html">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
							</li>
							<li class="active">Country</li>
						</ol>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-sm-12">
								<div class="card card-topline-lightblue">
									<div class="card-head">
										<header>Country List</header>
										<div class="tools">
											<a class="fa fa-repeat btn-color box-refresh" href="javascript:void(0);"></a>
											<a class="t-collapse btn-color fa fa-chevron-down"
											   href="javascript:void(0);"></a>
											<a class="t-close btn-color fa fa-times" href="javascript:void(0);"></a>
										</div>
									</div>
									<div class="card-body ">
                                        <div class="float-right mb-2">
                                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add_country">Add Country</button>
                                        </div>
										<div class="table-scrollable">
											<table class="table table-bordered table-striped" id="country">
												<thead>
												<tr>
													<th>Country Id</th>
													<th>Country Name</th>
                                                    <th width="60px"></th>
												</tr>
												</thead>
												<tbody>
                                                <?php
												foreach ($countryList as $row)
												{
                                                    ?>
                                                    <tr>
                                                        <td><?= $row['country_id']?></td>
                                                        <td><?= $row['country_name']?></td>
                                                        <td>
                                                            <button type="button" class="btn btn-info btn-sm edit_country" data-eid="<?= $row['country_id']?>" data-toggle="modal" data-target="#edit_country"><i class="fa fa-pencil"></i></button>
                                                            <a href="<?= base_url?>admin/location_action.php?country_delete=true&country_id=<?= $row['country_id']?>"  class="btn btn-danger btn-sm delete_country"><i class="fa fa-trash"></i></a>
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
<div class="modal fade" id="add_country" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="<?= base_url?>admin/location_action.php" method="post" >
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add Country</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Country Name : </label>
                        <input type="text" name="country_name" class="form-control" placeholder="Country" required>
                        <input type="hidden" name="country_add" value="1">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Add Country</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- start js include path -->
<!-- Modal -->
<div class="modal fade" id="edit_country" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="<?= base_url?>admin/location_action.php" method="post" >
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Country</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Country Name : </label>
                        <input type="text" name="country_name" id="country_name" class="form-control" placeholder="Country Name" required>
                        <input type="hidden" name="country_edit" value="1">
                        <input type="hidden" name="country_id" id="country_id">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Edit Event</button>
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
<!-- Material -->
<script src="<?= base_url?>assets/plugins/material/material.min.js"></script>
<!-- end js include path -->
<script>
    let uri = window.location.toString();
    if (uri.indexOf("?") > 0) {
        alert(decodeURI(uri.substring(uri.indexOf("Sorry"))));
        let clean_uri = uri.substring(0, uri.indexOf("?"));
        window.history.replaceState({}, document.title, clean_uri);
    }

    $("#country").DataTable();

    $(".edit_country").on('click', function (){
        let id = $(this).data('eid');

        $.ajax({
            url: '<?= base_url?>model/location.php?ajax=true&country=true&country_id='+id,
            success:function (res){
                let obj = JSON.parse(res);
                $("#country_name").val(obj.country_name);
                $("#country_id").val(obj.country_id);
                if (obj.image != ''){
                    $("#image").attr('src','../images/'+obj.image).removeClass('d-none');
                } else{
                    $("#image").attr('src','../images/'+obj.image).addClass('d-none');
                }
            }
        })
    })
</script>
</body>
</html>
