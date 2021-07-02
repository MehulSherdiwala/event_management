<?php


class Admin extends Database {

	public function login(){
		if (isset($_POST['username'])){
			$username	= $_POST['username'];
			$password	= $this->getEncrypt($_POST['password']);

			$sql = "select admin_id,admin_name from admin where admin_name='$username' and password='$password'";
			$result = $this->connect()->query($sql);

			$numRows = $result->num_rows;

			if ($numRows > 0){
				$row	= $result->fetch_object();
				$_SESSION['admin_id']	= $row->admin_id;
				$_SESSION['admin_name']	= $row->admin_name;
				header('location:' . base_url . 'admin/');

			} else{
				return "Invalid Username or Password";
			}

		}
	}

}
