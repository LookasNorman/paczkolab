<?php

if ($method === 'GET') {
    if(!$pathId){
        $sizes = Size::loadAll();
    } else {
        $sizes = Size::load($pathId);
    }
    $response = [];
    foreach ($sizes as $size) {
        $response [] = $size;
    }
} elseif ($method === 'PATCH') {
    parse_str(file_get_contents("php://input"), $patchVars);
    $size = new Size($patchVars['id']);
    $size->setPrice($patchVars['price']);
    $size->setSize($patchVars['size']);
    $size->save();

    $response = $size;
} elseif ($method === 'POST') {
    $size = new Size();
    $size->setPrice($_POST['price']);
    $size->setSize($_POST['size']);
    $size->save();

    $response = $size;
} elseif ($method === 'DELETE') {
    parse_str(file_get_contents("php://input"), $deleteVars);
    $size = new Size($deleteVars['id']);
    $size->delete();
}
