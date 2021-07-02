<?php
require_once 'model/autoload.php';

echo "<pre>";
print_r ($_POST);
echo "</pre>";
date_default_timezone_set("Asia/kolkata");

if (isset($_POST['service_rating'])){
	if (isset($_POST['vendor_service_rate_id']) && $_POST['vendor_service_rate_id'] != 0){
		$data = array(
			'rate' => $_POST['service_rating']
		);

		$db = new Database();
		$db->update("vendor_service_rate", ['vendor_service_rate_id', $_POST['vendor_service_rate_id']], $data);

	} else{
		$data = array(
			'vendor_service_id' => $_POST['vendor_service_id'],
			'user_id' => $_SESSION['user_id'],
			'rate' => $_POST['service_rating'],
		);

		$db = new Database();
		$db->insert("vendor_service_rate", $data);

	}
	if (isset($_POST['vendor_service_review_id']) && $_POST['vendor_service_review_id'] != 0){
		$data = array(
			'review' => $_POST['service_review']
		);

		$db = new Database();
		$db->update("vendor_service_review", ['vendor_service_review_id', $_POST['vendor_service_review_id']], $data);
	} else{
		$data = array(
			'vendor_service_id' => $_POST['vendor_service_id'],
			'user_id' => $_SESSION['user_id'],
			'review' => $_POST['service_review'],
			'review_date' => date('Y-m-d H:i:s'),
		);

		$db = new Database();
		$db->insert("vendor_service_review", $data);
	}

}

if (isset($_POST['vendor_rating'])){
	if (isset($_POST['vendor_rate_id']) && $_POST['vendor_rate_id'] != 0){
		$data = array(
			'rate' => $_POST['vendor_rating']
		);

		$db = new Database();
		$db->update("vendor_rate", ['vendor_rate_id', $_POST['vendor_rate_id']], $data);

	} else{
		$data = array(
			'vendor_id' => $_POST['vendor_id'],
			'user_id' => $_SESSION['user_id'],
			'rate' => $_POST['vendor_rating'],
		);

		$db = new Database();
		$db->insert("vendor_rate", $data);

	}
	if (isset($_POST['vendor_review_id']) && $_POST['vendor_review_id'] != 0){
		$data = array(
			'review' => $_POST['vendor_review']
		);

		$db = new Database();
		$db->update("vendor_review", ['vendor_review_id', $_POST['vendor_review_id']], $data);
	} else{
		$data = array(
			'vendor_id' => $_POST['vendor_id'],
			'user_id' => $_SESSION['user_id'],
			'review' => $_POST['vendor_review'],
			'review_date' => date('Y-m-d H:i:s'),
		);

		$db = new Database();
		$db->insert("vendor_review", $data);
	}

}
header('Location: user_bookings.php');
