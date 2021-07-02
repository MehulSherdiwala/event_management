<?php
require_once "../model/autoload.php";

if (isset($_POST['vendor_service_add']))
{
	$vendor_service_name = $_POST['vendor_service_name'];
	$description = $_POST['description'];
	$amount = $_POST['amount'];
	$service_id = $_POST['service_id'];
	$image = $_FILES['image'];
	echo "<pre>";
	print_r($image);
	echo "</pre>";

	if($image['error'] != 0){
		$error = "Sorry, Your file is not proper. Choose another file.";
		header("Location: " . base_url . "vendor/vendor_services.php?error=" . $error);
		exit();
	}
	$file_name = rand(1000, 9999) . "_" . basename($image['name']);
	$target_file = "../images/" . $file_name;
	$imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

	if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif")
	{
		$error = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
		header("Location: " . base_url . "vendor/vendor_services.php?error=" . $error);
		exit();
	}
	if ( ! move_uploaded_file($image['tmp_name'], $target_file ))
	{
		$error = "Sorry, there was an error uploading your file.";
		header("Location: " . base_url . "vendor/vendor_services.php?error=" . $error);
		exit();
	}

	$data = array(
		'vendor_service_name' => $vendor_service_name,
		'description' => $description,
		'amount' => $amount,
		'service_id' => $service_id,
		'vendor_id' => $_SESSION['vendor_id'],
		'image' => $file_name
	);

	$db = new Database();
	$db->insert("vendor_service", $data);
	header("Location:" . base_url . "vendor/vendor_services.php");

} elseif (isset($_POST['vendor_service_edit']))
{

	$vendor_service_name = $_POST['vendor_service_name'];
	$description = $_POST['description'];
	$amount = $_POST['amount'];
	$service_id = $_POST['service_id'];
	$image = $_FILES['image'];
	$id = $_POST['vendor_service_id'];

	$data = array(
		'vendor_service_name' => $vendor_service_name,
		'description' => $description,
		'amount' => $amount,
		'service_id' => $service_id,
	);
	if($image['error'] == 0){

		$file_name = rand(1000, 9999) . "_" . basename($image['name']);
		$target_file = "../images/" . $file_name;
		$imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

		if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif")
		{
			$error = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
			header("Location: " . base_url . "vendor/vendor_services.php?error=" . $error);
			exit();
		}
		if ( ! move_uploaded_file($image['tmp_name'], $target_file ))
		{
			$error = "Sorry, there was an error uploading your file.";
			header("Location: " . base_url . "vendor/vendor_services.php?error=" . $error);
			exit();
		}
		$data['image'] = $file_name;
	} elseif($image['error'] != 4){
		$error = "Sorry, Your file is not proper. Choose another file.";
		header("Location: " . base_url . "vendor/vendor_services.php?error=" . $error);
		exit();
	}



	$db = new Database();
	$db->update("vendor_service", ['vendor_service_id', $id], $data);

	header("Location:" . base_url . "vendor/vendor_services.php");
} elseif (isset($_GET['vendor_service_delete']))
{
	$id = $_GET['vendor_service_id'];
	$db = new Database();
	$db->delete("vendor_service", ['vendor_service_id', $id]);
	header("Location:" . base_url . "vendor/vendor_services.php");

}

//$a = array(
//	'event_type_name' => 'updated',
//	'image' => 1
//);
//
//$con = ['event_type_id',5];
//$table = 'event_type';
//
//
//$db = new Database();
//$db->update("event_type",$con,$a);
