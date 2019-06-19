<?php

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $addresses = Address::loadAll();
    $response = [];
    foreach ($addresses as $address) {
        $response [] = json_decode(json_encode($address));
    }
}