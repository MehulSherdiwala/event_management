<?php
require_once '../model/autoload.php';
echo "<pre>";
print_r ($_POST);
echo "</pre>";

if (isset($_POST['vendor_name'])){
	$data = array(
		'vendor_name' => $_POST['vendor_name'],
		'contact' => $_POST['contact'],
		'address' => $_POST['address'],
		'org_name' => $_POST['org_name'],
		'city_id' => $_POST['city_id'],
	);

	$db = new Database();
	$db->update('vendor', ['vendor_id', $_SESSION['vendor_id']], $data);

	$_SESSION['vendor_name'] = $_POST['vendor_name'];
}
header('Location: profile.php');
