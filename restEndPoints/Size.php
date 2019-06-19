<?php

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $sizes = Size::loadAll();
    $response = [];
    foreach ($sizes as $size) {
        $response [] = json_decode(json_encode($size));
    }
} elseif ($_SERVER['REQUEST_METHOD'] === 'PATCH') {
    parse_str(file_get_contents("php://input"), $patchVars);
    $size = new Size($patchVars['id']);
    $size->setPrice($patchVars['price']);
    $size->setSize($patchVars['size']);
    $size->save();

    $response = json_decode(json_encode($size));
} elseif ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $size = new Size();
    $size->setPrice($_POST['price']);
    $size->setSize($_POST['size']);
    $size->save();

    $response = json_decode(json_encode($size));
}
