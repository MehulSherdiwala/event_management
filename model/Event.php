<?php
require_once 'autoload.php';

class Event extends Database {

	public function getEnventType($id = 0){
		if ($id == 0)
		{
			if (gettype($id) == 'string'){
				$sql = "select * from event_type where event_type_name like '%$id%'";
			} else
			{
				$sql = "select * from event_type";
			}

			$res = $this->connect()->query($sql);

			$event = [];
			while ($row = $res->fetch_object())
			{
				$event[] = $row;
			}
		} else {
			$sql = "select * from event_type where event_type_id=".$id;

			$res = $this->connect()->query($sql);

			$row = $res->fetch_object();

			$event = array(
				'event_type_id' => $row->event_type_id,
				'event_type_name' => $row->event_type_name,
				'image' => $row->image,
			);
		}
		return $event;
	}

	public function getUserEvents($id = 0, $type = 'user'){
		if ($id == 0 && $type == 'user')
		{
			$sql = "select * from event inner join event_type et on event.event_type_id = et.event_type_id inner join city c on event.city_id = c.city_id inner join user u on event.user_id = u.user_id";

			$res = $this->connect()->query($sql);

			$event = [];
			while ($row = $res->fetch_object())
			{
				$event[] = array(
					'event_id' => $row->event_id,
					'event_name' => $row->event_name,
					'event_date' => $row->event_date,
					'venue' => $row->venue,
					'event_type_name' => $row->event_type_name,
					'city_name' => $row->city_name,
					'user_name' => $row->user_name,
				);
			}
		} else if($id != 0 && $type == 'vendor'){
			$sql = "select distinct event.event_id, user_name, event_type_name, event_name, city_name, venue, event_date from event inner join event_type et on event.event_type_id = et.event_type_id inner join city c on event.city_id = c.city_id inner join user u on event.user_id = u.user_id inner join service_book sb on event.event_id = sb.event_id inner join vendor_service vs on sb.vendor_service_id = vs.vendor_service_id where vendor_id = ".$id;

			$res = $this->connect()->query($sql);
			$event = [];

			while ($row = $res->fetch_object()){
				$event[] = array(
					'event_id' => $row->event_id,
					'event_name' => $row->event_name,
					'event_type_name' => $row->event_type_name,
					'user_name' => $row->user_name,
					'city_name' => $row->city_name,
					'venue' => $row->venue,
					'event_date' => $row->event_date,
				);
			}

		}
		else {
			/*--------------------- Pending --------------------------*/
			$sql = "select * from event_type where event_type_id=".$id;

			$res = $this->connect()->query($sql);

			$row = $res->fetch_object();

			$event = array(
				'event_type_id' => $row->event_type_id,
				'event_type_name' => $row->event_type_name,
				'image' => $row->image,
			);
		}
		return $event;
	}

}

if(isset($_GET['ajax']) && $_GET['ajax'])
{
	$event = new Event();

	if (isset($_GET['event_type_id'])){
		$eventList = $event->getEnventType($_GET['event_type_id']);
		echo json_encode($eventList);
	} else
	{

		$eventList = $event->getEnventType();
		echo json_encode($eventList);
	}
}
