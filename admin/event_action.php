<?php
require_once "../model/autoload.php";

if (isset($_POST['event_add']))
{
	$event_name = $_POST['event_name'];
	$image = $_FILES['image'];
	echo "<pre>";
	print_r($image);
	echo "</pre>";

	if($image['error'] != 0){
		$error = "Sorry, Your file is not proper. Choose another file.";
		header("Location: " . base_url . "admin/event_type.php?error=" . $error);
		exit();
	}
	$file_name = rand(1000, 9999) . "_" . basename($image['name']);
	$target_file = "../images/" . $file_name;
	$imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

	if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif")
	{
		$error = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
		header("Location: " . base_url . "admin/event_type.php?error=" . $error);
		exit();
	}
	if ( ! move_uploaded_file($image['tmp_name'], $target_file ))
	{
		$error = "Sorry, there was an error uploading your file.";
		header("Location: " . base_url . "admin/event_type.php?error=" . $error);
		exit();
	}

	$data = array(
		'event_type_name' => $event_name,
		'image' => $file_name
	);

	$db = new Database();
	$db->insert("event_type", $data);
	header("Location:" . base_url . "admin/event_type.php");

} elseif (isset($_POST['event_edit']))
{

	$event_name = $_POST['event_name'];
	$image = $_FILES['image'];
	$id = $_POST['event_id'];

	$data = array(
		'event_type_name' => $event_name,
	);
	if($image['error'] == 0){

		$file_name = rand(1000, 9999) . "_" . basename($image['name']);
		$target_file = "../images/" . $file_name;
		$imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

		if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif")
		{
			$error = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
			header("Location: " . base_url . "admin/event_type.php?error=" . $error);
			exit();
		}
		if ( ! move_uploaded_file($image['tmp_name'], $target_file ))
		{
			$error = "Sorry, there was an error uploading your file.";
			header("Location: " . base_url . "admin/event_type.php?error=" . $error);
			exit();
		}
		$data['image'] = $file_name;
	} elseif($image['error'] != 4){
		$error = "Sorry, Your file is not proper. Choose another file.";
		header("Location: " . base_url . "admin/event_type.php?error=" . $error);
		exit();
	}



	$db = new Database();
	$db->update("event_type", ['event_type_id', $id], $data);

	header("Location:" . base_url . "admin/event_type.php");
} elseif (isset($_GET['event_delete']))
{
	$id = $_GET['event_id'];
	$db = new Database();
	$db->delete("event_type", ['event_type_id', $id]);
	header("Location:" . base_url . "admin/event_type.php");

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
