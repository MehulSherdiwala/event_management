<?php
require_once "../model/autoload.php";

if (isset($_POST['vendor_edit']))
{

	$id = $_POST['vendor_id'];
	$status = $_POST['status'];

	$data = array(
		'status' => $status,
	);

	$db = new Database();
	$db->update("vendor", ['vendor_id', $id], $data);

	header("Location:" . base_url . "admin/vendor_details.php");
}

else if(isset($_GET['vendor_review_delete'])){

	$id = $_GET['vendor_review_id'];
	$db = new Database();
	$db->delete("vendor_review", ['vendor_review_id', $id]);
	header("Location:" . base_url . "admin/vendor_review.php");

}
else if(isset($_GET['vendor_service_review_delete'])){

	$id = $_GET['vendor_service_review_id'];
	$db = new Database();
	$db->delete("vendor_service_review", ['vendor_service_review_id', $id]);
	header("Location:" . base_url . "admin/vendor_services_review.php");

}
