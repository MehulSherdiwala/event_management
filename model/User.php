<?php
require_once 'autoload.php';


class User extends Database {

	public function login(){
		if (isset($_POST['email'])){
			$email	= $_POST['email'];
			$password	= $this->getEncrypt($_POST['password']);

			$sql = "select user_id,user_name from user where email='$email' and password='$password'";
			$result = $this->connect()->query($sql);

			$numRows = $result->num_rows;

			if ($numRows > 0){
				$row	= $result->fetch_object();
				$_SESSION['user_id']	= $row->user_id;
				$_SESSION['user_name']	= $row->user_name;
				return TRUE;
			}
			return FALSE;
		}
	}

	public function getUsers($vendor_id = 0): ?array
	{

		if ($vendor_id == 0)
		{
			$sql = "select * from user inner join city c on user.city_id = c.city_id";
			$res = $this->connect()->query($sql);
			$numRows = $res->num_rows;
			$data = array();
			if ($numRows > 0)
			{
				while ($row = $res->fetch_object())
				{
					$data[] = array(
						'user_id' => $row->user_id,
						'user_name' => $row->user_name,
						'email' => $row->email,
						'address' => $row->address,
						'contact' => $row->contact,
						'status' => $row->status,
						'city_name' => $row->city_name,
						'gender' => ($row->gender == 1) ? 'Male' : 'Female',
					);
				}
			}
		}else{

			$sql = "select distinct user.user_id,user_name,email,address,contact,city_name,gender from user inner join city c on user.city_id = c.city_id inner join event e on user.user_id = e.user_id inner join service_book sb on e.event_id = sb.event_id inner join vendor_service vs on sb.vendor_service_id = vs.vendor_service_id where sb.status > 0 and vendor_id=".$vendor_id;
			$res = $this->connect()->query($sql);
			$numRows = $res->num_rows;
			$data = array();
			if ($numRows > 0)
			{
				while ($row = $res->fetch_object())
				{
					$data[] = array(
						'user_id' => $row->user_id,
						'user_name' => $row->user_name,
						'email' => $row->email,
						'address' => $row->address,
						'contact' => $row->contact,
						'city_name' => $row->city_name,
						'gender' => ($row->gender == 1) ? 'Male' : 'Female',
					);
				}
			}
		}
		return $data;
	}

	public function getStatus($user_id){
		$sql = "select status from user where user_id=".$user_id;
		return $this->connect()->query($sql)->fetch_object()->status;
	}

	public function getUserRate($user_id = 0){
		if ($user_id == 0){
			$sql = "select avg(rate) as rate,ur.user_id,user_name from user_rate ur inner join user u on ur.user_id = u.user_id group by ur.user_id";
			$res = $this->connect()->query($sql);

			$data = array();
			while ($row = $res->fetch_object())
			{
				$data[] = array(
					'user_id' => $row->user_id,
					'user_name' => $row->user_name,
					'rate' => $row->rate
				);
			}
			return $data;

		}
	}

	public function getUserReview($user_id = 0){
		if ($user_id == 0){
			$sql = "select review,ur.user_id,user_name,v.vendor_name,user_review_id from user_review ur inner join user u on ur.user_id = u.user_id inner join vendor v on ur.vendor_id = v.vendor_id";
			$res = $this->connect()->query($sql);

			$data = array();
			while ($row = $res->fetch_object())
			{
				$data[] = array(
					'user_review_id' => $row->user_review_id,
					'user_id' => $row->user_id,
					'user_name' => $row->user_name,
					'vendor_name' => $row->vendor_name,
					'review' => $row->review
				);
			}
			return $data;

		}
	}

	public function getUserRateReview($user_id,$vendor_id)
	{
		$sql 	= "select rate,user_rate_id from user_rate ur  where ur.vendor_id=$vendor_id and ur.user_id=$user_id";
		$sql2 	= "select review,user_review_id from user_review u where u.vendor_id=$vendor_id and u.user_id=$user_id";

		$data['rate'] = $this->connect()->query($sql)->fetch_object();
		$data['review'] = $this->connect()->query($sql2)->fetch_object();
		return $data;
	}

}

if (isset($_GET['ajax'])){
	$user = new User();
	if (isset($_GET['user']) && $_GET['user']=='status')
	{
		$user_id = $_GET['user_id'];
		echo json_encode($user->getStatus($user_id));
	}elseif (isset($_GET['user_rate_review'])){
		$user_id	= $_GET['user_id'];
		$vendor_id	= $_GET['vendor_id'];
		echo json_encode($user->getUserRateReview($user_id,$vendor_id));
	}
}
