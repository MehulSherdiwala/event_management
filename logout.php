<?php
require_once 'model/autoload.php';

session_destroy();

header('Location: index.php');
