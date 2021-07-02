<?php
require_once '../model/autoload.php';

if (isset($_POST['book_id'])){
	$book_id = $_POST['book_id'];
	$status	 = $_POST['status'];
	$data = array(
		'status' => $status
	);
	$db = new Database();
	$db->update('service_book',['book_id', $book_id], $data);
}

header("Location: approval.php");
