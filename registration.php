<?php
require_once 'model/autoload.php';

$db 	= new Database();

if (isset($_POST['email'])){
	$data = array(
		'email' 	=> $_POST['email'],
		'user_name' => $_POST['username'],
		'password' 	=> $_POST['password'],
		'contact' 	=> $_POST['contact'],
		'address' 	=> $_POST['address'],
		'status'	=> 0
	);

	$db->insert("user", $data);
	$user_id = $db->getId($_POST['email'],$_POST['password'],'user');

	if ($user_id > 0){
		$_SESSION['user_id'] = $user_id;
		$_SESSION['user_name'] = $_POST['username'];
		echo 'index.php';
	} else {
		echo "error";
	}

}

