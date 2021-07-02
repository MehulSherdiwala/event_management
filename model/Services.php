<?php
require_once 'autoload.php';

class Services extends Database {
	public function getServicesType($id = 0): array
	{
		if ($id == 0)
		{
			if (gettype($id) == 'string'){
				$sql = "select * from service where service_name like '%$id%'";
			} else
			{
				$sql = "select * from service";
			}
			$res = $this->connect()->query($sql);

			$services = [];
			while ($row = $res->fetch_object())
			{
				$services[] = $row;
			}
		} else
		{
			$sql = "select * from service where service_id=" . $id;

			$res = $this->connect()->query($sql);

			$row = $res->fetch_object();

			$services = array(
				'service_id' => $row->service_id,
				'service_name' => $row->service_name,
				'image' => $row->image,
			);
		}
		return $services;
	}

	public function getUserEventServices($event_id,$vendor_id = 0): array
	{

		if ($vendor_id ==0)
		{
			$sql = "select vs.vendor_service_id,sb.amount,deposit,commission,payment_mode,description,vendor_service_name,vs.image,service_name,status from service_book sb inner join vendor_service vs on sb.vendor_service_id = vs.vendor_service_id inner join service s on vs.service_id = s.service_id where sb.event_id=" . $event_id;

			$res = $this->connect()->query($sql);

			$service = [];
			while ($row = $res->fetch_object())
			{
				$service[] = $row;
			}
		} else {

			$sql = "select vs.vendor_service_id,sb.amount,deposit,commission,payment_mode,description,vendor_service_name,vs.image,service_name from service_book sb inner join vendor_service vs on sb.vendor_service_id = vs.vendor_service_id inner join service s on vs.service_id = s.service_id where sb.event_id=" . $event_id . " and vs.vendor_id=". $vendor_id;

			$res = $this->connect()->query($sql);

			$service = [];
			while ($row = $res->fetch_object())
			{
				$service[] = $row;
			}
		}
		return $service;
	}

	public function getVendorService($id = 0,$flag = FALSE){
		if ($id == 0){
			$sql = "select vendor_name,vendor_service_id,vendor_service_name,description,amount,vs.image from vendor_service vs inner join service s on vs.service_id = s.service_id inner join vendor v on vs.vendor_id = v.vendor_id";

			$res = $this->connect()->query($sql);

			$service = [];
			while ($row = $res->fetch_object())
			{
				$service[] = array(
					'vendor_name' => $row->vendor_name,
					'vendor_service_id' => $row->vendor_service_id,
					'vendor_service_name' => $row->vendor_service_name,
					'description' => $row->description,
					'amount' => $row->amount,
					'image' => $row->image,
				);
			}
		} elseif ($id != 0 && $flag){
			$sql = "select s.service_id,vendor_name,vendor_service_id,vendor_service_name,description,amount,vs.image from vendor_service vs inner join service s on vs.service_id = s.service_id inner join vendor v on vs.vendor_id = v.vendor_id where vs.vendor_service_id=".$id;

			$row = $this->connect()->query($sql)->fetch_object();

			$service= array(
				'service_id' => $row->service_id,
				'vendor_service_id' => $row->vendor_service_id,
				'vendor_service_name' => $row->vendor_service_name,
				'description' => $row->description,
				'amount' => $row->amount,
				'image' => $row->image,
				'vendor_name' => $row->vendor_name,
			);
		}
		else{
			$sql = "select service_name,vendor_service_id,vendor_service_name,description,amount,vs.image from vendor_service vs inner join service s on vs.service_id = s.service_id inner join vendor v on vs.vendor_id = v.vendor_id where v.vendor_id=".$id;

			$res = $this->connect()->query($sql);

			$service = [];
			while ($row = $res->fetch_object())
			{
				$service[] = array(
					'service_name' => $row->service_name,
					'vendor_service_id' => $row->vendor_service_id,
					'vendor_service_name' => $row->vendor_service_name,
					'description' => $row->description,
					'amount' => $row->amount,
					'image' => $row->image,
				);
			}
		}
		return $service;
	}

	public function getVendorServiceByService($id,$search = '', $flag = TRUE){
		if ($flag)
		{
			if ($search != ''){
				$sql = "select org_name, amount from vendor_service vs inner join vendor v on vs.vendor_id = v.vendor_id where vendor_service_name like '%$search%' and vs.service_id=" . $id;
			} else
			{
				$sql = "select org_name, amount from vendor_service vs inner join vendor v on vs.vendor_id = v.vendor_id where vs.service_id=" . $id;
			}
			$res = $this->connect()->query($sql);

			$service = [];
			while ($row = $res->fetch_object())
			{
				$service[] = array(
					'org_name' => $row->org_name,
					'amount' => $row->amount,
				);
			}
		} else {
			$sql = "select org_name,city_id,v.vendor_id,vendor_service_id,vendor_service_name,description,amount,vs.image from vendor_service vs inner join vendor v on vs.vendor_id = v.vendor_id where vs.service_id=".$id;

			$res = $this->connect()->query($sql);

			$service = [];
			while ($row = $res->fetch_object())
			{
				$service[] = array(
					'city_id' => $row->city_id,
					'vendor_id' => $row->vendor_id,
					'org_name' => $row->org_name,
					'vendor_service_id' => $row->vendor_service_id,
					'vendor_service_name' => $row->vendor_service_name,
					'description' => $row->description,
					'amount' => $row->amount,
					'image' => $row->image,
				);
			}
		}
		return $service;
	}

	public function getVendorServiceRate($id = 0, $byService = FALSE){
		if ($id == 0){
			$sql = "select avg(rate) as rate,ur.vendor_id,vendor_name,vendor_service_name,vendor_service_rate_id from vendor_service ur inner join vendor_service_rate vsr on ur.vendor_service_id = vsr.vendor_service_id inner join vendor u on ur.vendor_id = u.vendor_id group by vsr.vendor_service_id";
			$res = $this->connect()->query($sql);

			$data = array();
			while ($row = $res->fetch_object())
			{
				$data[] = array(
					'vendor_service_rate_id' => $row->vendor_service_rate_id,
					'vendor_id' => $row->vendor_id,
					'vendor_name' => $row->vendor_name,
					'vendor_service_name' => $row->vendor_service_name,
					'rate' => $row->rate
				);
			}

		} elseif ($id > 0 && $byService){
			$sql = "select avg(rate) as rate from vendor_rate where vendor_id=". $id;
			$row = $this->connect()->query($sql)->fetch_object();

			$data = $row->rate;

		} else{
			$sql = "select rate,user_name,vendor_service_name,vendor_service_rate_id from vendor_service ur inner join vendor_service_rate vsr on ur.vendor_service_id = vsr.vendor_service_id inner join user u on vsr.user_id = u.user_id where vendor_id=".$id;
			$res = $this->connect()->query($sql);

			$data = array();
			while ($row = $res->fetch_object())
			{
				$data[] = array(
					'vendor_service_rate_id' => $row->vendor_service_rate_id,
					'user_name' => $row->user_name,
					'vendor_service_name' => $row->vendor_service_name,
					'rate' => $row->rate
				);
			}

		}
		return $data;
	}

	public function getVendorServiceReivew($vendor_id = 0){
		if ($vendor_id == 0)
		{
			$sql = "select review,ur.vendor_id,vendor_name,vendor_service_name,vendor_service_review_id,user_name from vendor_service ur inner join vendor_service_review vsr on ur.vendor_service_id = vsr.vendor_service_id inner join vendor u on ur.vendor_id = u.vendor_id inner join user u2 on vsr.user_id = u2.user_id";
			$res = $this->connect()->query($sql);

			$data = array();
			while ($row = $res->fetch_object())
			{
				$data[] = array(
					'vendor_service_review_id' => $row->vendor_service_review_id,
					'vendor_service_name' => $row->vendor_service_name,
					'vendor_name' => $row->vendor_name,
					'user_name' => $row->user_name,
					'review' => $row->review
				);
			}
		}else{
			$sql = "select review,review_date,vendor_service_name,vendor_service_review_id,user_name from vendor_service ur inner join vendor_service_review vsr on ur.vendor_service_id = vsr.vendor_service_id inner join user u2 on vsr.user_id = u2.user_id where vendor_id=".$vendor_id;
			$res = $this->connect()->query($sql);

			$data = array();
			while ($row = $res->fetch_object())
			{
				$data[] = array(
					'vendor_service_review_id' => $row->vendor_service_review_id,
					'vendor_service_name' => $row->vendor_service_name,
					'review_date' => $row->review_date,
					'user_name' => $row->user_name,
					'review' => $row->review
				);
			}
		}
		return $data;
	}
}

if (isset($_GET['ajax']) && $_GET['ajax'])
{
	$services = new Services();

	if (isset($_GET['event_id'], $_GET['event_service']))
	{
		$servicesList = $services->getUserEventServices($_GET['event_id']);
		echo json_encode($servicesList);
	} else if (isset($_GET['event_vendor_service_id'], $_GET['event_vendor_service']))
	{
		$servicesList = $services->getUserEventServices($_GET['event_vendor_service_id'],$_SESSION['vendor_id']);
		echo json_encode($servicesList);
	} else if (isset($_GET['service_id']))
	{
		$servicesList = $services->getServicesType($_GET['service_id']);
		echo json_encode($servicesList);
	} else if (isset($_GET['vendor_service_id']))
	{
		$servicesList = $services->getVendorService($_GET['vendor_service_id'],TRUE);
		echo json_encode($servicesList);
	} else
	{
		$servicesList = $services->getServicesType();
		echo json_encode($servicesList);
	}
}
