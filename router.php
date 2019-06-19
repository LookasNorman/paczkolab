<?php

//Load DB config
require (__DIR__ . '/config.php');
//connect to DB
$conn = new DBmysql();
$errorDB = $conn->getError();
//check if the class parametr is set
//if (!isset($errorDB)) {//process request if no db error
//    include_once __DIR__.'/restEndPoints/Size.php';
//}

//$_SERVER['REQUEST_METHOD'] = 'POST';
//get class name from URI
$uriPathInfo = $_SERVER['REQUEST_URI'];
//explode path info
$path = explode('/', $uriPathInfo);
$requestClass = $path[2];

//load class file
$requestClass = preg_replace('#[^0-9a-zA-Z]#', '', $requestClass);//remove all non alfanum chars from request
$className = ucfirst(strtolower($requestClass));

$classFile = __DIR__.'/class/'.$className.'.php';
require_once $classFile;

######### END DYNAMIC LOAD #########

$pathId = isset($path[3]) ? $path[3] : null;
if (!isset($response['error'])) {//process request if no db error
    include_once __DIR__.'/restEndPoints/'.$className.'.php';
}

header('Content-Type: application/json');//return json header

if (isset($errorDB)) {
    header("HTTP/1.0 400 Bad Request");//return proper http code if error
}

//return the result from DB as json
echo json_encode($response);