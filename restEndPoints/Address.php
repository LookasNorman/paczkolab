<?php

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    if (!$pathId) {
        $addresses = Address::loadAll();
    } else {
        $addresses = Address::load($pathId);
    }
    $response = [];
    foreach ($addresses as $address) {
        $response [] = $address;
    }

} elseif ($_SERVER['REQUEST_METHOD'] === 'PATCH') {
    parse_str(file_get_contents("php://input"), $patchVars);
    $address = new Address($patchVars['id']);
    $address->setCity($patchVars['city']);
    $address->setCode($patchVars['code']);
    $address->setStreet($patchVars['street']);
    $address->setFlat($patchVars['flat']);
    $address->save();

    $response = $address;
} elseif ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $address = new Address();
    $address->setCity($_POST['city']);
    $address->setCode($_POST['code']);
    $address->setStreet($_POST['street']);
    $address->setFlat($_POST['flat']);

    $address->save();

    $response = $address;
} elseif ($_SERVER['REQUEST_METHOD'] === 'DELETE') {
    parse_str(file_get_contents("php://input"), $deleteVars);
    $address = new Address($deleteVars['id']);
    $address->delete();
}