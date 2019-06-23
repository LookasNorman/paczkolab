<?php

class Parcel implements Action, JsonSerializable
{
    private $id;
    private $senderId;
    private $sizeId;
    private $recipientId;

    public static $dbConn;

    /**
     * Parcel constructor.
     * @param $id
     */
    public function __construct($id = -1)
    {
        $this->id = $id;
        $this->senderId = '';
        $this->sizeId = '';
        $this->recipientId = '';
    }

    public function save()
    {
        if ($this->id > 0) {
            $dbConn = new DBmysql();

            $query = "UPDATE Parcel SET sender_id=:senderId, size_id=:sizeId, recipient_id=:recipientId WHERE id=:id";

            $dbConn->query($query);
            $dbConn->bind('id', $this->id);
            $dbConn->bind('sizeId', $this->sizeId);
            $dbConn->bind('senderId', $this->senderId);
            $dbConn->bind('recipientId', $this->recipientId);
            $dbConn->execute();
            $id = $dbConn->lastInsertId();
            $this->id = $id;
        } else {
            $dbConn = new DBmysql();

            $user = User::load($this->senderId);
            $credits = $user[0]->getCredits();
            $size = Size::load($this->sizeId);
            $price = $size[0]->getPrice();
//            var_dump($price);

            if($credits >= $price) {
                $query = "INSERT INTO Parcel SET sender_id=:senderId``, size_id=:sizeId, recipient_id=:recipientId";
                $dbConn->query($query);
                $dbConn->bind('senderId`', $this->senderId);
                $dbConn->bind('sizeId', $this->sizeId);
                $dbConn->bind('recipientId', $this->recipientId);
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
            $parcel->senderId = $dbParcel['sender_id'];
            $parcel->sizeId = $dbParcel['size_id'];
            $parcel->recipientId = $dbParcel['recipient_id'];

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
            $parcel->senderId = $dbParcel['sender_id'];
            $parcel->sizeId = $dbParcel['size_id'];
            $parcel->recipientId = $dbParcel['recipient_id'];

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
            'sender_id' => $this->senderId,
            'recipient_id' => $this->recipientId,
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
    public function getSenderId()
    {
        return $this->senderId;
    }

    /**
     * @param mixed $userId
     */
    public function setSenderId($senderId)
    {
        $this->senderId = $senderId;
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
    public function getRecipientId()
    {
        return $this->recipientId;
    }

    /**
     * @param mixed $addressId
     */
    public function setRecipientId($recipientId)
    {
        $this->recipientId = $recipientId;
    }


}