<?php
require_once '../model/autoload.php';
session_destroy();

header('location:' . base_url . 'admin/login.php');
