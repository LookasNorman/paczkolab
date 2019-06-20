<?php

class Parcel implements Action, JsonSerializable
{
    private $id;
    private $userId;
    private $sizeId;
    private $addressId;

    public static $dbConn;

    /**
     * Parcel constructor.
     * @param $id
     */
    public function __construct($id = -1)
    {
        $this->id = $id;
        $this->userId = '';
        $this->sizeId = '';
        $this->addressId = '';
    }

    public function save()
    {
        if ($this->id > 0) {
            $dbConn = new DBmysql();

            $query = "UPDATE Parcel SET user_id=:userId, size_id=:sizeId, address_id=:addressId WHERE id=:id";

            $dbConn->query($query);
            $dbConn->bind('id', $this->id);
            $dbConn->bind('sizeId', $this->sizeId);
            $dbConn->bind('userId', $this->userId);
            $dbConn->bind('addressId', $this->addressId);
            $dbConn->execute();
            $id = $dbConn->lastInsertId();
            $this->id = $id;
        } else {
            $dbConn = new DBmysql();

            $user = User::load($this->userId);
            $credits = $user[0]->getCredits();
            $size = Size::load($this->sizeId);
            $price = $size[0]->getPrice();
//            var_dump($price);

            if($credits >= $price) {
                $query = "INSERT INTO Parcel SET user_id=:userId, size_id=:sizeId, address_id=:addressId";
                $dbConn->query($query);
                $dbConn->bind('userId', $this->userId);
                $dbConn->bind('sizeId', $this->sizeId);
                $dbConn->bind('addressId', $this->addressId);
                $dbConn->execute();
                $id = $dbConn->lastInsertId();
                $this->id = $id;
                $user[0]->setCredits($credits - $price);
                $user[0]->save();
            }
        }

        return $this;
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
        $dbConn = new DBmysql();

        $query = 'SELECT * FROM Parcel WHERE id=:id';

        $dbConn->query($query);
        $dbConn->bind('id', $id);
        $parcels = $dbConn->resultSet();

        $parcelsList = [];
        foreach ($parcels as $dbParcel){
            $parcel = new Parcel();
            $parcel->id = $dbParcel['id'];
            $parcel->userId = $dbParcel['user_id'];
            $parcel->sizeId = $dbParcel['size_id'];
            $parcel->addressId = $dbParcel['address_id'];

            $parcelsList [] = $parcel;
        }

        return $parcelsList;

    }

    public static function loadAll()
    {
        $dbConn = new DBmysql();

        $query = 'SELECT * FROM Parcel';

        $dbConn->query($query);
        $parcels = $dbConn->resultSet();

        $parcelsList = [];
        foreach ($parcels as $dbParcel){
            $parcel = new Parcel();
            $parcel->id = $dbParcel['id'];
            $parcel->userId = $dbParcel['user_id'];
            $parcel->sizeId = $dbParcel['size_id'];
            $parcel->addressId = $dbParcel['address_id'];

            $parcelsList [] = $parcel;
        }

        return $parcelsList;

    }

    public static function setDb(Database $db)
    {
        // TODO: Implement setDb() method.
    }

    public function jsonSerialize()
    {
        return [
            'id' => $this->id,
            'user_id' => $this->userId,
            'address_id' => $this->addressId,
            'size_id' => $this->sizeId
        ];
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
    public function getSizeId()
    {
        return $this->sizeId;
    }

    /**
     * @param mixed $sizeId
     */
    public function setSizeId($sizeId)
    {
        $this->sizeId = $sizeId;
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