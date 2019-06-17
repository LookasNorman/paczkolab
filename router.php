<?php

//Load DB class
use DBmysql;
//parsing URL
$uriPathInfo = $_SERVER['REQUEST_URI'];
//explode path info
$path = explode('/', $uriPathInfo);
$requestClass = $path[1];
//class name
$requestClass = preg_replace('#[^0-9a-zA-Z]#', '', $requestClass);//remove all non alfanum chars from request
$className = ucfirst(strtolower($requestClass));
//Load class
use $className;

//Load DB config
require (__DIR__ . '/config.php');

