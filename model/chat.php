<?php
require_once 'autoload.php';
date_default_timezone_set("Asia/kolkata");

$db = new Database();

if (isset($_GET['get_chat'])){
	$sql = "select * from message where user_id=".$_POST['user_id']." and vendor_id=".$_POST['vendor_id'];

	$res = $db->query($sql);
	$data = [];
	if ($res->num_rows > 0){
		while ($row = $res->fetch_object()){
			if($row->status == 0 && $row->sender != $_POST['sender'])
				$db->update('message', ['message_id', $row->message_id], ['status'=>1]);

			$chat_date = '';
			$compDate = date('Y-m-d',strtotime($row->datetime));
			if($compDate == date('Y-m-d')){
				$chat_date = "Today";
			}else if($compDate == date('Y-m-d',strtotime("-1 day"))){
				$chat_date = "Yesterday";
			} else {
				$chat_date = date('d-m-Y',strtotime($row->datetime));
			}

			$data[] = array(
				'message' => $row->message,
				'sender' => $row->sender,
				'datetime' => date('h:i:A',strtotime($row->datetime)),
				'type' => $row->type,
				'chat_date' => $chat_date,
			);
		}
	}


	echo json_encode($data);

} elseif (isset($_GET['send_msg'])){
	$data = array(
		'message' => $_POST['msg'],
		'vendor_id' => $_POST['vendor_id'],
		'user_id' => $_POST['user_id'],
		'sender' => $_POST['sender'],
		'type' => 0,
		'datetime' => date('Y-m-d H:i:s'),
	);

	$db->insert('message', $data);
} elseif (isset($_GET['get_users'])){
	if ($_POST['sender'] == 0)
	{
		$sql = "select vendor_name,vendor_id from vendor v where (select count(*) from message where vendor_id=v.vendor_id and user_id=" . $_POST['user_id'] . ") > 0";
		$res = $db->query($sql);
		$data=[];
		if ($res->num_rows > 0){
			while ($row = $res->fetch_object()){
				$data[] = array(
					'user_name' => $row->vendor_name,
					'user_id' => $row->vendor_id
				);
			}
		}
	} else {
		$sql = "select user_name,user_id from user u where (select count(*) from message where user_id=u.user_id and vendor_id=" . $_POST['vendor_id'] . ") > 0";
		$res = $db->query($sql);
		$data=[];
		if ($res->num_rows > 0){
			while ($row = $res->fetch_object()){
				$data[] = array(
					'user_name' => $row->user_name,
					'user_id' => $row->user_id
				);
			}
		}
	}
	echo json_encode($data);
} elseif (isset($_GET['get_msg'])){
	$sql = "select * from message where status = 0 and vendor_id=".$_POST['vendor_id']." and user_id=".$_POST['user_id']." and sender!=".$_POST['sender'];

	$res = $db->query($sql);
	if ($res->num_rows > 0){
		while($row = $res->fetch_object()){
			$db->update('message', ['message_id', $row->message_id], ['status'=>1]);
			$data[] = array(
				'message' => $row->message,
				'datetime' => date('h:i:A',strtotime($row->datetime)),
				'type' => $row->type,
			);
		}
	echo json_encode($data);
	}
} elseif (isset($_GET['get_user_detail'])){
	if ($_POST['sender'] == 0){
		$sql = "select * from vendor where vendor_id=".$_POST['id'];
		$row = $db->query($sql)->fetch_object()->vendor_name;
	} else {
		$sql = "select * from user where user_id=".$_POST['id'];
		$row = $db->query($sql)->fetch_object()->user_name;
	}
	$data = array(
		'user_name' => $row,
	);
	echo json_encode($data);
} elseif (isset($_GET['unseen'])){
	if ($_POST['sender'] == 0){
		$sql = "select count(*) as unseen,vendor_id as id from message where status = 0 and sender=1 and user_id=".$_POST['user_id']." group by vendor_id";
		$res = $db->query($sql);
	} else {
		$sql = "select count(*) as unseen,user_id as id from message where status = 0 and sender=0 and vendor_id=".$_POST['vendor_id']." group by user_id";
		$res = $db->query($sql);
	}
	$data=[];
	if ($res->num_rows > 0){
		while($row = $res->fetch_object()){
			$data[] = array(
				'id' => $row->id,
				'unseen' => $row->unseen,
			);
		}
	}
	echo json_encode($data);
}
