<?php
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    $sizes = Size::loadAll();
    $response = [];
    foreach ($sizes as $size) {
        $response [] = json_decode(json_encode($size));
    }
}