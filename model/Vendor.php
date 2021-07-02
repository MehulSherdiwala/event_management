<?php
require_once 'autoload.php';


class Vendor extends Database {

	public function login(){
		if (isset($_POST['email'])){
			$email		= $_POST['email'];
			$password	= $this->getEncrypt($_POST['password']);

			$sql 	= "select vendor_id,vendor_name from vendor where email='$email' and password='$password'";
			$result = $this->connect()->query($sql);

			$numRows = $result->num_rows;

			if ($numRows > 0)
			{
				$row = $result->fetch_object();
				$_SESSION['vendor_id'] = $row->vendor_id;
				$_SESSION['vendor_name'] = $row->vendor_name;
				return TRUE;
			}
			return FALSE;
		}
	}


	public function getVendors(): ?array
	{
		$sql = "select * from vendor inner join city c on vendor.city_id = c.city_id";
		$res = $this->connect()->query($sql);
		$numRows = $res->num_rows;

		if ($numRows >0){
			$data = array();
			while ($row = $res->fetch_object())
			{
				$data[] = array(
					'vendor_id' => $row->vendor_id,
					'vendor_name' => $row->vendor_name,
					'email' => $row->email,
					'address' => $row->address,
					'contact' => $row->contact,
					'status' => $row->status,
					'city_name' => $row->city_name,
					'org_name' => $row->org_name,
				);
			}
			return $data;
		}
	}

	public function getStatus($vendor_id){
		$sql = "select status from vendor where vendor_id=".$vendor_id;
		return $this->connect()->query($sql)->fetch_object()->status;
	}

	public function getVendorRate($vendor_id = 0, $avg = FALSE){
		if ($vendor_id == 0){
			$sql = "select avg(rate) as rate,ur.vendor_id,vendor_name from vendor_rate ur inner join vendor u on ur.vendor_id = u.vendor_id group by ur.vendor_id";
			$res = $this->connect()->query($sql);

			$data = array();
			while ($row = $res->fetch_object())
			{
				$data[] = array(
					'vendor_id' => $row->vendor_id,
					'vendor_name' => $row->vendor_name,
					'rate' => $row->rate
				);
			}

		} elseif ($vendor_id > 0 && $avg){
			$sql = "select avg(rate) as rate from vendor_rate where vendor_id=". $vendor_id;
			$row = $this->connect()->query($sql)->fetch_object();
			$data = $row->rate;
		} else {
			$sql = "select rate,ur.vendor_rate_id,user_name from vendor_rate ur inner join user u on ur.user_id = u.user_id where ur.vendor_id=".$vendor_id;
			$res = $this->connect()->query($sql);

			$data = array();
			while ($row = $res->fetch_object())
			{
				$data[] = array(
					'vendor_rate_id' => $row->vendor_rate_id,
					'user_name' => $row->user_name,
					'rate' => $row->rate
				);
			}
		}
			return $data;
	}

	public function getVendorReivew($vendor_id = 0){
		if ($vendor_id == 0){
			$sql = "select review,ur.vendor_id,user_name,v.vendor_name,vendor_review_id from vendor_review ur inner join vendor v on ur.vendor_id = v.vendor_id inner join user u2 on ur.user_id = u2.user_id";
			$res = $this->connect()->query($sql);

			$data = array();
			while ($row = $res->fetch_object())
			{
				$data[] = array(
					'vendor_review_id' => $row->vendor_review_id,
					'vendor_id' => $row->vendor_id,
					'vendor_name' => $row->vendor_name,
					'user_name' => $row->user_name,
					'review' => $row->review
				);
			}

		}else {
			$sql = "select review,user_name,review_date,vendor_review_id from vendor_review ur inner join user u2 on ur.user_id = u2.user_id where vendor_id=".$vendor_id;
			$res = $this->connect()->query($sql);

			$data = array();
			while ($row = $res->fetch_object())
			{
				$data[] = array(
					'vendor_review_id' => $row->vendor_review_id,
					'review_date' => $row->review_date,
					'user_name' => $row->user_name,
					'review' => $row->review
				);
			}

		}
			return $data;
	}

}

if (isset($_GET['ajax']) && $_GET['vendor']=='status'){
	$vendor = new Vendor();
	$vendor_id = $_GET['vendor_id'];
	echo json_encode($vendor->getStatus($vendor_id));

}
