<?php
require_once 'model/autoload.php';

if (isset($_POST['submit'])){
	$event_type_id		= $_POST['event_id'];
	$event_name 	= $_POST['event_name'];
	$event_date 	= date('Y-m-d H:i:s', strtotime($_POST['event_date']));
	$venue 			= $_POST['venue'];
	$city_id 		= $_POST['city_id'];
	$user_id		= $_SESSION['user_id'];

	$db 			= new Database();

	$data = array(
		'event_name'	=> $event_name,
		'event_date'	=> $event_date,
		'event_type_id'	=> $event_type_id,
		'venue'			=> $venue,
		'city_id'		=> $city_id,
		'user_id'		=> $user_id,
	);

	echo $event_id = $db->insert('event', $data);
//	echo $event_id = 0;

	if (isset($_POST['service_id'])){
		$service     = new Services();
		$vendor_service_id = $_POST['vendor_service_id'];
		$serviceList = $service->getVendorService($vendor_service_id,TRUE)['amount'];

		$data = array(
			'amount'			=> $serviceList,
			'deposit'			=> 0,
			'commission'		=> 0,
			'event_id'			=> $event_id,
			'vendor_service_id'	=> $vendor_service_id,
			'status'			=> 0
		);

		$db->insert('service_book', $data);

	} elseif (isset($_POST['cart'])){
		$book = new Book();
		$cart = $book->addToCart($user_id);

		foreach ($cart as $item)
		{
			$data = array(
				'amount'			=> $item['amount'],
				'deposit'			=> 0,
				'commission'		=> 0,
				'event_id'			=> $event_id,
				'vendor_service_id'	=> $item['vendor_service_id'],
				'status'			=> 0
			);
			$db->insert('service_book', $data);
			$book->removeCartItem($item['service_cart_id']);
		}
	}

	header("Location: book_step1.php?alert=true&service_id=".$_POST['service_id']);
}
