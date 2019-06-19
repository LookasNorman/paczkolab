<?php

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $sizes = Size::loadAll();
    $response = [];
    foreach ($sizes as $size) {
        $response [] = json_decode(json_encode($size));
    }
} elseif ($_SERVER['REQUEST_METHOD'] === 'PATCH') {

} elseif ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $size = new Size();
    $size->setPrice($_POST['price']);
    $size->setSize($_POST['size']);
    $size->save();

    $response = json_decode(json_encode($size));
}
