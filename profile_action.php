<?php
require_once 'model/autoload.php';

if (isset($_POST['user_name'])){
	$data = array(
		'user_name' => $_POST['user_name'],
		'contact' => $_POST['contact'],
		'gender' => $_POST['gender'],
		'address' => $_POST['address'],
		'city_id' => $_POST['city_id'],
	);

	$db = new Database();
	$db->update('user', ['user_id',$_SESSION['user_id']], $data);
	$_SESSION['user_name'] = $_POST['user_name'];
}

header("Location: profile.php");
