<?php

//Load DB config
require (__DIR__ . '/config.php');

//connect to DB
$conn = new DBmysql();
$errorDB = $conn->getError();
//check if the class parametr is set
$pathId = isset($path[2]) ? $path[2] : null;
if (!isset($errorDB)) {//process request if no db error
    include_once __DIR__.'/restEndPoints/Size.php';
}

header('Content-Type: application/json');//return json header

if (isset($errorDB)) {
    header("HTTP/1.0 400 Bad Request");//return proper http code if error
}

//return the result from DB as json
echo json_encode($response);