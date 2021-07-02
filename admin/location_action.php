<?php
require_once "../model/autoload.php";

if (isset($_POST['country_add']))
{
	$country_name = $_POST['country_name'];


	$data = array(
		'country_name' => $country_name,
	);

	$db = new Database();
	$db->insert("country", $data);
	header("Location:" . base_url . "admin/country.php");

}
elseif (isset($_POST['country_edit']))
{

	$country_name = $_POST['country_name'];
	$id = $_POST['country_id'];

	$data = array(
		'country_name' => $country_name,
	);

	$db = new Database();
	$db->update("country", ['country_id', $id], $data);

	header("Location:" . base_url . "admin/country.php");
}
elseif (isset($_GET['country_delete']))
{
	$id = $_GET['country_id'];
	$db = new Database();
	$db->delete("country", ['country_id', $id]);
	header("Location:" . base_url . "admin/country.php");

}

elseif (isset($_POST['state_add']))
{
	$state_name = $_POST['state_name'];
	$country_id = $_POST['country_id'];


	$data = array(
		'state_name' => $state_name,
		'country_id' => $country_id,
	);

	$db = new Database();
	$db->insert("state", $data);
	header("Location:" . base_url . "admin/state.php");

}
elseif (isset($_POST['state_edit']))
{

	$state_name = $_POST['state_name'];
	$country_id = $_POST['country_id'];
	$id = $_POST['state_id'];

	$data = array(
		'state_name' => $state_name,
		'country_id' => $country_id,
	);

	$db = new Database();
	$db->update("state", ['state_id', $id], $data);

	header("Location:" . base_url . "admin/state.php");
}
elseif (isset($_GET['state_delete']))
{
	$id = $_GET['state_id'];
	$db = new Database();
	$db->delete("state", ['state_id', $id]);
	header("Location:" . base_url . "admin/state.php");
}
elseif (isset($_POST['city_add']))
{
	$city_name = $_POST['city_name'];
	$state_id = $_POST['state_id'];


	$data = array(
		'city_name' => $city_name,
		'state_id' => $state_id,
	);

	$db = new Database();
	$db->insert("city", $data);
	header("Location:" . base_url . "admin/city.php");

}
elseif (isset($_POST['city_edit']))
{

	$city_name = $_POST['city_name'];
	$state_id = $_POST['state_id'];
	$id = $_POST['city_id'];

	$data = array(
		'city_name' => $city_name,
		'state_id' => $state_id,
	);

	$db = new Database();
	$db->update("city", ['city_id', $id], $data);

	header("Location:" . base_url . "admin/city.php");
}
elseif (isset($_GET['city_delete']))
{
	$id = $_GET['city_id'];
	$db = new Database();
	$db->delete("city", ['city_id', $id]);
	header("Location:" . base_url . "admin/city.php");
}
