<?php
require_once "../model/autoload.php";

if (!isset($_SESSION['vendor_id'])){
	header('location:' . base_url . 'vendor/login.php');
}
$services = new Services();

$servicesList = $services->getVendorService($_SESSION['vendor_id']);
$service = $services->getServicesType();

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
							<div class="page-title">Vendor Services</div>
						</div>
						<ol class="breadcrumb page-breadcrumb pull-right">
							<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
																   href="<?= base_url.'vendor'?>">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
							</li
							<li class="active">Vendor Services </li>
						</ol>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-sm-12">
								<div class="card card-topline-lightblue">
									<div class="card-head">
										<header>Vendor Services List</header>
										<div class="tools">
											<a class="fa fa-repeat btn-color box-refresh" href="javascript:void(0);"></a>
											<a class="t-collapse btn-color fa fa-chevron-down"
											   href="javascript:void(0);"></a>
											<a class="t-close btn-color fa fa-times" href="javascript:void(0);"></a>
										</div>
									</div>
									<div class="card-body ">
                                        <div class="float-right mb-2">
                                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add_vendor_service">Add Vendor Service</button>
                                        </div>
										<div class="table-scrollable">
											<table class="table table-bordered table-striped" id="service">
												<thead>
												<tr>
													<th>Vendor Service Id</th>
													<th>Service Name</th>
													<th>Vendor Service Name</th>
													<th>Description</th>
													<th>Amount</th>
													<th>Images</th>
													<th width="60px"></th>
												</tr>
												</thead>
												<tbody>
												<?php
												foreach ($servicesList as $row)
												{
													?>
													<tr>
														<td><?= $row['vendor_service_id']?></td>
														<td><?= $row['service_name']?></td>
														<td><?= $row['vendor_service_name']?></td>
														<td><?= $row['description']?></td>
														<td><?= $row['amount']?></td>
														<td><?php if($row['image'] != ''): ?><img src="../images/<?= $row['image']?>" alt="Image Not Found" class="img-100" /> <?php endif; ?></td>
														<td>
                                                            <button type="button" class="btn btn-info btn-sm edit_vendor_service" data-eid="<?= $row['vendor_service_id']?>" data-toggle="modal" data-target="#edit_vendor_service"><i class="fa fa-pencil"></i></button>
															<a href="<?= base_url?>vendor/vendor_service_action.php?vendor_service_delete=true&vendor_service_id=<?= $row['vendor_service_id']?>"  class="btn btn-danger btn-sm delete_vendor_service"><i class="fa fa-trash"></i></a>
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
<div class="modal fade" id="add_vendor_service" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="<?= base_url?>vendor/vendor_service_action.php" method="post" enctype="multipart/form-data">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add Vendor Service</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Enter Vendor Service Name : </label>
                        <input type="text" name="vendor_service_name" class="form-control" placeholder="Vendor Service Name" required>
                        <input type="hidden" name="vendor_service_add" value="1">
                    </div>
                    <div class="form-group">
                        <label>Enter Description : </label>
                        <input type="text" name="description" class="form-control" placeholder="Description" required>
                    </div>
                    <div class="form-group">
                        <label>Enter Amount : </label>
                        <input type="text" name="amount" class="form-control" placeholder="Amount" required>
                    </div>
                    <div class="form-group">
                        <label>Service Name : </label>
                        <select name="service_id" class="form-control select2">
							<?php
							foreach ($service as $row)
							{
								?>
                                <option value="<?= $row->service_id ?>"><?= $row->service_name?></option>
								<?php
							}
							?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Image : </label>
                        <input type="file" name="image" class="form-control" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Add Vendor Service</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- start js include path -->
<!-- Modal -->
<div class="modal fade" id="edit_vendor_service" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="<?= base_url?>vendor/vendor_service_action.php" method="post" enctype="multipart/form-data">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Vendor Service Type</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Enter Vendor Service Name : </label>
                        <input type="text" name="vendor_service_name" id="vendor_service_name" class="form-control" placeholder="Vendor Service Name" required>
                        <input type="hidden" name="vendor_service_edit" value="1">
                        <input type="hidden" name="vendor_service_id" id="vendor_service_id" >
                    </div>
                    <div class="form-group">
                        <label>Enter Description : </label>
                        <input type="text" name="description" id="description" class="form-control" placeholder="Description" required>
                    </div>
                    <div class="form-group">
                        <label>Enter Amount : </label>
                        <input type="text" name="amount" id="amount" class="form-control" placeholder="Amount" required>
                    </div>
                    <div class="form-group">
                        <label>Service Name : </label>
                        <select name="service_id" id="service_id" class="form-control select2">
							<?php
							foreach ($service as $row)
							{
								?>
                                <option value="<?= $row->service_id ?>"><?= $row->service_name?></option>
								<?php
							}
							?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Image : </label>
                        <input type="file" name="image" class="form-control">
                    </div>
                    <img src="" id="image" alt="Image Not Found" class="img-100 d-none" />
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Edit Vendor Service</button>
                </div>
            </form>
        </div>
    </div>
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
    let uri = window.location.toString();
    if (uri.indexOf("?") > 0) {
        alert(decodeURI(uri.substring(uri.indexOf("Sorry"))));
        let clean_uri = uri.substring(0, uri.indexOf("?"));
        window.history.replaceState({}, document.title, clean_uri);
    }
    $("#service").DataTable();
    $(".edit_vendor_service").on('click', function (){
        let id = $(this).data('eid');

        $.ajax({
            url: '<?= base_url?>model/services.php?ajax=true&vendor_service_id='+id,
            success:function (res){
                let obj = JSON.parse(res);
                $("#vendor_service_name").val(obj.vendor_service_name);
                $("#vendor_service_id").val(obj.vendor_service_id);
                $("#description").val(obj.description);
                $("#amount").val(obj.amount);
                $("#service_id>option[value="+ obj.service_id +"]").prop('selected', true).change();
                if (obj.image != '' && obj.image != null){
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
