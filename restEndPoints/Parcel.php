<?php

if ($method === 'GET') {
    $parcels = Parcel::loadAll();
    $response = [];
    foreach ($parcels as $parcel) {
        $response [] = $parcel;
    }
} elseif ($method === 'PATCH') {
    parse_str(file_get_contents("php://input"), $patchVars);
    $parcel = new Parcel($patchVars['id']);
    $parcel->setUserId($patchVars['user_id']);
    $parcel->setSizeId($patchVars['size_id']);
    $parcel->setAddressId($patchVars['address_id']);
    $parcel->save();

    $response = $parcel;
} elseif ($method === 'POST') {
    $parcel = new Parcel();
    $parcel->setUserId($_POST['user_id']);
    $parcel->setSizeId($_POST['size_id']);
    $parcel->setAddressId($_POST['address_id']);
    $parcel->save();

    $response = $parcel;
} elseif ($method === 'DELETE') {
    parse_str(file_get_contents("php://input"), $deleteVars);
    $parcel = new Parcel($deleteVars['id']);
    $parcel->delete();
}