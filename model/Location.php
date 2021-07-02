<?php
require_once 'autoload.php';

class Location extends Database {

	public function getCountry($id = 0){
		if ($id == 0){
			$sql = "select * from country";
			$res = $this->connect()->query($sql);
			$country = [];
			while ($row = $res->fetch_object()){
				$country[] = array(
					'country_id' => $row->country_id,
					'country_name' => $row->country_name
				);
			}
		} else {
			$sql = "select * from country where country_id=".$id;
			$row = $this->connect()->query($sql)->fetch_object();
			$country = array(
				'country_id' => $row->country_id,
				'country_name' => $row->country_name
			);
		}
		return $country;
	}

	public function getState($id = 0,$orderBy = ''){
		if ($id == 0){
			$sql = "select * from state inner join country c on state.country_id = c.country_id";
			$res = $this->connect()->query($sql);
			$state = [];
			while ($row = $res->fetch_object()){
				$state[] = array(
					'state_id' => $row->state_id,
					'state_name' => $row->state_name,
					'country_name' => $row->country_name
				);
			}
		}elseif ($orderBy != '' && $id > 0){
			$sql = "select * from state where country_id=".$id;
			$res = $this->connect()->query($sql);
			$state = [];
			while ($row = $res->fetch_object()){
				$state[] = array(
					'state_id' => $row->state_id,
					'state_name' => $row->state_name
				);
			}
		}
		else {
			$sql = "select * from state s inner join country c on s.country_id = c.country_id where s.state_id=".$id;
			$row = $this->connect()->query($sql)->fetch_object();
			$state = array(
				'state_id' => $row->state_id,
				'state_name' => $row->state_name,
				'country_id' => $row->country_id
			);
		}
		return $state;
	}

	public function getCity($id = 0, $orderBy = ''){
		if ($id == 0){
			$sql = "select * from state inner join city c on state.state_id = c.state_id";
			$res = $this->connect()->query($sql);
			$state = [];
			while ($row = $res->fetch_object()){
				$state[] = array(
					'city_id' => $row->city_id,
					'city_name' => $row->city_name,
					'state_name' => $row->state_name,
				);
			}
		} elseif ($orderBy != '' && $id > 0){
			$sql = "select * from city where state_id=".$id;
			$res = $this->connect()->query($sql);
			$state = [];
			while ($row = $res->fetch_object()){
				$state[] = array(
					'city_id' => $row->city_id,
					'city_name' => $row->city_name
				);
			}
		} else {
			$sql = "select * from state s inner join city c on s.state_id = c.state_id where c.city_id=".$id;
			$row = $this->connect()->query($sql)->fetch_object();
			$state = array(
				'city_id' => $row->city_id,
				'city_name' => $row->city_name,
				'state_id' => $row->state_id,
			);
		}
		return $state;
	}

	public function getLocation($city_id){
		$sql = "select * from city c inner join state s on c.state_id = s.state_id inner join country c2 on s.country_id = c2.country_id where c.city_id=".$city_id;

		$row = $this->connect()->query($sql)->fetch_object();

		return "$row->city_name, $row->state_name, $row->country_name";
	}

}

if (isset($_GET['ajax'])){
	$location = new Location();

	if (isset($_GET['country'])){
		$country_id = $_GET['country_id'];

		echo json_encode($location->getCountry($country_id));
	}
	elseif (isset($_GET['state'])){
		if (isset($_GET['state_id']))
		{
			$state_id = $_GET['state_id'];

			echo json_encode($location->getState($state_id));
		} else{
			$country_id = $_GET['country_id'];

			echo json_encode($location->getState($country_id,'country'));
		}
	}
	elseif (isset($_GET['city'])){
		if (isset($_GET['city_id']))
		{
			$city_id = $_GET['city_id'];

			echo json_encode($location->getCity($city_id));
		} else{
			$state_id = $_GET['state_id'];

			echo json_encode($location->getCity($state_id,'state'));
		}
	}
}
