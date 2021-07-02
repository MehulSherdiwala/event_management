<?php
require_once "../model/autoload.php";

if (isset($_POST['service_add']))
{
	$service_name = $_POST['service_name'];
	$image = $_FILES['image'];
	echo "<pre>";
	print_r($image);
	echo "</pre>";

	if($image['error'] != 0){
		$error = "Sorry, Your file is not proper. Choose another file.";
		header("Location: " . base_url . "admin/services.php?error=" . $error);
		exit();
	}
	$file_name = rand(1000, 9999) . "_" . basename($image['name']);
	$target_file = "../images/" . $file_name;
	$imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

	if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif")
	{
		$error = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
		header("Location: " . base_url . "admin/services.php?error=" . $error);
		exit();
	}
	if ( ! move_uploaded_file($image['tmp_name'], $target_file ))
	{
		$error = "Sorry, there was an error uploading your file.";
		header("Location: " . base_url . "admin/services.php?error=" . $error);
		exit();
	}

	$data = array(
		'service_name' => $service_name,
		'image' => $file_name
	);

	$db = new Database();
	$db->insert("service", $data);
	header("Location:" . base_url . "admin/services.php");

} elseif (isset($_POST['service_edit']))
{

	$service_name = $_POST['service_name'];
	$image = $_FILES['image'];
	$id = $_POST['service_id'];

	$data = array(
		'service_name' => $service_name,
	);
	if($image['error'] == 0){

		$file_name = rand(1000, 9999) . "_" . basename($image['name']);
		$target_file = "../images/" . $file_name;
		$imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

		if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif")
		{
			$error = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
			header("Location: " . base_url . "admin/services.php?error=" . $error);
			exit();
		}
		if ( ! move_uploaded_file($image['tmp_name'], $target_file ))
		{
			$error = "Sorry, there was an error uploading your file.";
			header("Location: " . base_url . "admin/services.php?error=" . $error);
			exit();
		}
		$data['image'] = $file_name;
	} elseif($image['error'] != 4){
		$error = "Sorry, Your file is not proper. Choose another file.";
		header("Location: " . base_url . "admin/services.php?error=" . $error);
		exit();
	}

	$db = new Database();
	$db->update("service", ['service_id', $id], $data);

	header("Location:" . base_url . "admin/services.php");
} elseif (isset($_GET['service_delete']))
{
	$id = $_GET['service_id'];
	$db = new Database();
	$db->delete("service", ['service_id', $id]);
	header("Location:" . base_url . "admin/services.php");

} elseif (isset($_GET['vendor_service_delete']))
{
	$id = $_GET['vendor_service_id'];
	$db = new Database();
	$db->delete("vendor_service", ['vendor_service_id', $id]);
	header("Location:" . base_url . "admin/vendor_services.php");

}

//$a = array(
//	'event_name' => 'updated',
//	'image' => 1
//);
//
//$con = ['event_id',5];
//$table = 'event';
//
//
//$db = new Database();
//$db->update("event",$con,$a);
