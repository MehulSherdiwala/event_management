<?php
require_once 'model/autoload.php';

echo "<pre>";
print_r ($_POST);
echo "</pre>";

if (isset($_POST['book_id'])){
	$book = new Book();
	$db   = new Database();

	$service = $book->getBookedService($_POST['book_id']);

	if (isset($_POST['debit'])){
		$method = "Debit Card";
		$amount = $_POST['amount'][0];
	} else {
		$method = "Credit Card";
		$amount = $_POST['amount'][1];
	}

	$insertAmount = $service->deposit + $amount;

	$data = array(
		'deposit' 		=> $insertAmount ,
		'payment_mode' 	=> $method,
		'status'		=> 3
	);
	$db->update('service_book', ['book_id', $_POST['book_id']], $data);
}
header("Location: user_bookings.php");
