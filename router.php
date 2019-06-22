<?php
require_once __DIR__ . '/vendor/autoload.php';
//Load DB config
require (__DIR__ . '/config.php');
//connect to DB
$conn = new DBmysql();
$errorDB = $conn->getError();

//new router class
$router = new Router();
//get request method
$method = $router->getRequestMethod();

//get class name and path id
$classNamePathId = $router->getClassAndId();

//check if class name is set
if ($classNamePathId['className']) {
    $classFile = __DIR__.'/class/'.$classNamePathId['className'].'.php';
    require_once $classFile;
}

//check if path is set
$pathId = $classNamePathId['pathId'];

    if (!isset($response['error']) && $classNamePathId['className']) {//process request if no db error
        include_once __DIR__.'/restEndPoints/'.$classNamePathId['className'].'.php';
    }


header('Content-Type: application/json');//return json header

if (isset($errorDB)) {
    header("HTTP/1.0 400 Bad Request");//return proper http code if error
}

//return the result from DB as json
echo json_encode($response);