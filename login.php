<?php
require_once 'model/autoload.php';

$user 	= new User();
$vendor = new Vendor();

if($user->login()){
	echo 'index.php';
} elseif ($vendor->login()){
	echo 'vendor';
} else{
	echo "error";
}
