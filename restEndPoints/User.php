<?php

if ($method === 'GET') {
    if(!$pathId){
        $users = User::loadAll();
    } else {
        $users = User::load($pathId);
    }
    $response = [];
    foreach ($users as $user) {
        $response [] = $user;
    }
} elseif ($method === 'PATCH') {
    parse_str(file_get_contents("php://input"), $patchVars);
    $user = new User($patchVars['id']);
    $user->setName($patchVars['name']);
    $user->setSurname($patchVars['surname']);
    $user->setCredits($patchVars['credits']);
    $user->save();

    $response = $user;
} elseif ($method === 'POST') {
    $user = new User();
    $user->setName($_POST['name']);
    $user->setSurname($_POST['surname']);
    $user->setCredits($_POST['credits']);
    $user->setAddressId($_POST['address_id']);
    $user->save();

    $response = $user;
} elseif ($method === 'DELETE') {
    parse_str(file_get_contents("php://input"), $deleteVars);
    $user = new User($deleteVars['id']);
    $user->delete();
}