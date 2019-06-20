<?php

class Address implements Action, JsonSerializable
{
    private $id;
    private $city;
    private $code;
    private $street;
    private $flat;

    public static $dbConn;

    /**
     * Address constructor.
     * Set id to -1
     */
    public function __construct($id = -1)
    {
        $this->id = $id;
        $this->city = '';
        $this->code = '';
        $this->street = '';
        $this->flat = '';
    }


    public function save()
    {
        if ($this->id > 0) {
            $dbConn = new DBmysql();

            $query = "UPDATE Address SET city=:city, code=:code, street=:street, flat=:flat WHERE id=:id";

            $dbConn->query($query);
            $dbConn->bind('id', $this->id);
            $dbConn->bind('code', $this->code);
            $dbConn->bind('city', $this->city);
            $dbConn->bind('street', $this->street);
            $dbConn->bind('flat', $this->flat);
            $dbConn->execute();
            $id = $dbConn->lastInsertId();
            $this->id = $id;
        } else {
            $dbConn = new DBmysql();
            $query = "INSERT INTO Address SET city=:city, code=:code, street=:street, flat=:flat";
            $dbConn->query($query);
            $dbConn->bind('city', $this->city);
            $dbConn->bind('code', $this->code);
            $dbConn->bind('street', $this->street);
            $dbConn->bind('flat', $this->flat);
            $dbConn->execute();
            $id = $dbConn->lastInsertId();
            $this->id = $id;
        }

        return $this;
    }

    public function update()
    {
        // TODO: Implement update() method.
    }

    public function delete()
    {
        if ($this->id > 0) {
            $dbConn = new DBmysql();

            $query = "DELETE FROM Address WHERE id=:id";

            $dbConn->query($query);
            $dbConn->bind('id', $this->id);
            $dbConn->execute();
            return $dbConn->rowCount() > 0;
        }
    }

    public static function load($id = null)
    {
        $dbConn = new DBmysql();
        $query = "SELECT * FROM Address WHERE id=:id";

        $dbConn->query($query);
        $dbConn->bind('id', $id);
        $addresses = $dbConn->resultSet();
        $addressesList = [];
        foreach ($addresses as $dbAddress) {
            $address = new Address();
            $address->id = $dbAddress['id'];
            $address->city = $dbAddress['city'];
            $address->code = $dbAddress['code'];
            $address->street = $dbAddress['street'];
            $address->flat = $dbAddress['flat'];

            $addressesList [] = $address;
        }

        return $addressesList;
    }

    public static function loadAll()
    {
        $dbConn = new DBmysql();
        $query = "SELECT * FROM Address";

        $dbConn->query($query);
        $addresses = $dbConn->resultSet();
        $addressesList = [];
        foreach ($addresses as $dbAddress) {
            $address = new Address();
            $address->id = $dbAddress['id'];
            $address->city = $dbAddress['city'];
            $address->code = $dbAddress['code'];
            $address->street = $dbAddress['street'];
            $address->flat = $dbAddress['flat'];

            $addressesList [] = $address;
        }

        return $addressesList;

    }

    public function jsonSerialize()
    {
        return [
            'id' => $this->id,
            'city' => $this->city,
            'code' => $this->code,
            'street' => $this->street,
            'flat' => $this->flat,

        ];
    }

    public static function setDb(Database $db)
    {
        self::$dbConn = $db;
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
    public function getCity()
    {
        return $this->city;
    }

    /**
     * @param mixed $city
     */
    public function setCity($city)
    {
        $this->city = $city;
    }

    /**
     * @return mixed
     */
    public function getCode()
    {
        return $this->code;
    }

    /**
     * @param mixed $code
     */
    public function setCode($code)
    {
        $this->code = $code;
    }

    /**
     * @return mixed
     */
    public function getStreet()
    {
        return $this->street;
    }

    /**
     * @param mixed $street
     */
    public function setStreet($street)
    {
        $this->street = $street;
    }

    /**
     * @return mixed
     */
    public function getFlat()
    {
        return $this->flat;
    }

    /**
     * @param mixed $flat
     */
    public function setFlat($flat)
    {
        $this->flat = $flat;
    }


}