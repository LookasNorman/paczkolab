<?php

class UserAddress implements Action, JsonSerializable
{
    private $id;
    private $userId;
    private $addressId;

    /**
     * UserAddress constructor.
     * @param $id
     * @param $userId
     * @param $addressId
     */
    public function __construct($id = -1)
    {
        $this->id = $id;
        $this->userId = '';
        $this->addressId = '';
    }

    public function save()
    {
        // TODO: Implement save() method.
    }

    public function update()
    {
        // TODO: Implement update() method.
    }

    public function delete()
    {
        // TODO: Implement delete() method.
    }

    public static function load($id = null)
    {
        // TODO: Implement load() method.
    }

    public static function loadUser($userId = null)
    {
        $dbConn = new DBmysql();

        $query = 'SELECT * FROM User_address WHERE user_id=:userId';

        $dbConn->query($query);
        $dbConn->bind('userId', $userId);
        $usersAddress = $dbConn->resultSet();

        $usersAddressList = [];
        foreach ($usersAddress as $dbUserAddress){
            $userAddress = new UserAddress();
            $userAddress->id = $dbUserAddress['id'];
            $userAddress->userId = $dbUserAddress['user_id'];
            $userAddress->addressId = $dbUserAddress['address_id'];

            $usersAddressList [] = $userAddress;
        }

        return $usersAddressList;
    }

    public static function loadAll()
    {
        $dbConn = new DBmysql();

        $query = 'SELECT * FROM User_address';

        $dbConn->query($query);
        $usersAddress = $dbConn->resultSet();

        $usersAddressList = [];
        foreach ($usersAddress as $dbUserAddress){
            $userAddress = new UserAddress();
            $userAddress->id = $dbUserAddress['id'];
            $userAddress->userId = $dbUserAddress['user_id'];
            $userAddress->addressId = $dbUserAddress['address_id'];

            $usersAddressList [] = $userAddress;
        }

        return $usersAddressList;
    }

    public static function setDb(Database $db)
    {
        // TODO: Implement setDb() method.
    }

    public function jsonSerialize()
    {
        // TODO: Implement jsonSerialize() method.
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @return mixed
     */
    public function getUserId()
    {
        return $this->userId;
    }

    /**
     * @param mixed $userId
     */
    public function setUserId($userId)
    {
        $this->userId = $userId;
    }

    /**
     * @return mixed
     */
    public function getAddressId()
    {
        return $this->addressId;
    }

    /**
     * @param mixed $addressId
     */
    public function setAddressId($addressId)
    {
        $this->addressId = $addressId;
    }


}