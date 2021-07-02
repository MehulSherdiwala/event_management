<?php
require_once 'autoload.php';
date_default_timezone_set("Asia/kolkata");

class Book extends Database {
	public function addToCart($userid = 0){
		if ($userid > 0){
			$sql = "select service_cart_id, sc.vendor_service_id,vendor_name, vendor_service_name, amount from service_cart sc inner join vendor_service vs on sc.vendor_service_id = vs.vendor_service_id inner join vendor v on vs.vendor_id = v.vendor_id where user_id=".$userid . " order by sc.datetime desc";
			$res = $this->connect()->query($sql);

			$data = [];
			while ($row = $res->fetch_object()){
				$data[] = array(
					'service_cart_id' => $row->service_cart_id,
					'vendor_name' => $row->vendor_name,
					'vendor_service_name' => $row->vendor_service_name,
					'vendor_service_id' => $row->vendor_service_id,
					'amount' => $row->amount
				);
			}
		}
		return $data;
	}

	public function removeCartItem($id){
		if ($id > 0){
			$sql = "delete from service_cart where service_cart_id=".$id;
			return $this->connect()->query($sql);
		}
	}

	public function addCartItem($id){
		if ($id > 0){
			$data = array(
				'datetime' 			=> date('Y-m-d H:i:s'),
				'user_id'			=> $_SESSION['user_id'],
				'vendor_service_id'	=> $id
			);
			return $this->insert('service_cart',$data);

		}
	}

	private function getService($event_id){

		$sql = "select sum(amount) as amt from service_book sb where event_id=". $event_id;
		$data['amount'] = $this->connect()->query($sql)->fetch_object()->amt;

		$sql = "select count(*) as cnt from service_book sb where event_id=". $event_id;
		$data['count'] = $this->connect()->query($sql)->fetch_object()->cnt;

		return $data;
	}

	public function getOrder($user_id){
		$loc = new Location();
		$sql = "select distinct e.event_id,event_name,event_date,venue,event_type_name,city_id from event e inner join service_book sb on e.event_id = sb.event_id inner join event_type et on e.event_type_id = et.event_type_id where user_id=".$user_id . " order by event_date desc";
		$res = $this->connect()->query($sql);
		$data = [];

		while ($row = $res->fetch_object()){
			$service = $this->getService($row->event_id);
			$data[] = array(
				'event_id'			=> $row->event_id,
				'event_name'		=> $row->event_name,
				'event_date'		=> date('Y-m-d H:i:s', strtotime($row->event_date)),
				'venue'				=> $row->venue,
				'event_type_name'	=> $row->event_type_name,
				'totalAmount'		=> $service['amount'],
				'serviceCount'		=> $service['count'],
				'loc'				=> $loc->getLocation($row->city_id)
			);
		}

		return $data;
	}

	public function getApproval($vendor_id){

		$sql = "select
       				event_name, sb.book_id, sb.event_id, event_date, vendor_service_name, sb.amount, venue, city_id, event_type_name
					from service_book sb 
					    inner join event e on sb.event_id = e.event_id
					    inner join event_type et on e.event_type_id = et.event_type_id
					    inner join vendor_service vs on sb.vendor_service_id = vs.vendor_service_id
					where sb.status = 0 and vs.vendor_id=".$vendor_id;
		$data = [];
		$res = $this->connect()->query($sql);

		if ($res->num_rows > 0){
			while ($row = $res->fetch_object()){
				$data[] = $row;
			}
		}
		return $data;
	}
}

if (isset($_GET['ajax'])){
	$book = new Book();

	if (isset($_GET['remove_cart'])){
		$id = $_GET['service_cart_id'];

		$res = $book->removeCartItem($id);

		if ($res == 1){
			echo json_encode($book->addToCart($_SESSION['user_id']));
		} else {
			echo json_encode("error");
		}
	}
	elseif (isset($_GET['addToCart'])){
		$id = $_GET['service_id'];

		$res = $book->addCartItem($id);
		echo json_encode($res);
	}
}
