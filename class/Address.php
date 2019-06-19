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
            $address->code = $dbAddress['postal_code'];
            $address->street = $dbAddress['street'];
            $address->flat = $dbAddress['flat_number'];

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