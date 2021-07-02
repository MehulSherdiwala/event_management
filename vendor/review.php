<?php
require_once '../model/autoload.php';

echo "<pre>";
print_r ($_POST);
echo "</pre>";

date_default_timezone_set("Asia/kolkata");

if (isset($_POST['user_rate'])){
	if (isset($_POST['user_rate_id']) && $_POST['user_rate_id'] != 0){
		$data = array(
			'rate' => $_POST['rating']
		);

		$db = new Database();
		$db->update("user_rate", ['user_rate_id', $_POST['user_rate_id']], $data);

	} else{
		$data = array(
			'vendor_id' => $_SESSION['vendor_id'],
			'user_id' => $_POST['user_id'],
			'rate' => $_POST['rating'],
		);

		$db = new Database();
		$db->insert("user_rate", $data);

	}
	if (isset($_POST['user_review_id']) && $_POST['user_review_id'] != 0){
		$data = array(
			'review' => $_POST['review']
		);

		$db = new Database();
		$db->update("user_review", ['user_review_id', $_POST['user_review_id']], $data);
	} else{
		$data = array(
			'vendor_id' => $_SESSION['vendor_id'],
			'user_id' => $_POST['user_id'],
			'review' => $_POST['review'],
			'review_date' => date('Y-m-d H:i:s'),
		);

		$db = new Database();
		$db->insert("user_review", $data);
	}

}

header("Location: ".base_url."vendor/user_details.php");
