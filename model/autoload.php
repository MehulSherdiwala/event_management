<?php
	spl_autoload_register(function ($className){
		include __DIR__ . '/' . str_replace('\\', "/",$className) . '.php';
	});

	define('base_url','http://localhost/event_management/');
//	define('base_url','http://192.168.0.111/event_management/');
	session_start();
