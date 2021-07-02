<?php
require_once "../model/autoload.php";

if (isset($_POST['user_edit']))
{

	$id = $_POST['user_id'];
	$status = $_POST['status'];

	$data = array(
		'status' => $status,
	);

	$db = new Database();
	$db->update("user", ['user_id', $id], $data);

	header("Location:" . base_url . "admin/user_details.php");
}
else if(isset($_GET['user_review_delete'])){

	$id = $_GET['user_review_id'];
	$db = new Database();
	$db->delete("user_review", ['user_review_id', $id]);
	header("Location:" . base_url . "admin/user_review.php");

}
