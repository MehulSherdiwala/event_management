<?php


class Database extends Encrypt {

	protected function connect(): \mysqli
	{
		return new mysqli('localhost','root','','event_management');
	}

	public function insert($tableName,$data): int
	{
		if (isset($data['password'])){
			$data['password'] = $this->getEncrypt($data['password']);
		}

		$field = '`' . (implode('`,`',array_keys($data))) . '`';
		$val = implode(',',array_map(function ($val){
			if (!is_numeric($val)){
				return sprintf("'%s'", $val);
			}
			return $val;
		},$data));

		$sql = "insert into $tableName ($field) values($val)";
		$con = $this->connect();
		$con->query($sql);
		return $con->insert_id;
	}

	public function update($tableName,$condition,$data): void
	{
		$set = "";
		$last_key = array_key_last($data);

		foreach ($data as $k => $item)
		{
			$set .= "$k =";
			if (!is_numeric($item))
				$set .= "'$item'";
			else
				$set .= $item;

			if($k != $last_key)
				$set .= ", ";
		}

		echo $sql = "update $tableName set $set where ".$condition[0]." = ".(!is_numeric($condition[1]) ? "'".$condition[1]."'" : $condition[1]);
		$this->connect()->query($sql);
	}

	public function delete($tableName,$condition): void
	{
		$sql = "delete from $tableName where ".$condition[0]." = ".(!is_numeric($condition[1]) ? "'".$condition[1]."'" : $condition[1]);
		$this->connect()->query($sql);
	}

	public function getId($email, $password, $type){
		if ($type == 'user'){
			$password = $this->getEncrypt($password);

			$sql = "select user_id from user where email='$email' and password = '$password'";
			$res = $this->connect()->query($sql);

			if ($res->num_rows > 0){
				return $res->fetch_object()->user_id;
			}

			return -1;
		} elseif ($type == 'vendor'){

			$password = $this->getEncrypt($password);

			$sql = "select vendor_id from vendor where email='$email' and password = '$password'";
			$res = $this->connect()->query($sql);

			if ($res->num_rows > 0){
				return $res->fetch_object()->vendor_id;
			}

			return -1;
		}
	}

}
