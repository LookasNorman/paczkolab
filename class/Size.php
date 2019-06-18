<?php

class Size implements Action, JsonSerializable
{
    private $id;
    private $size;
    private $price;

    public static $dbConn;

    /**
     * Size constructor.
     * Set id to -1, size and price to null
     */
    public function __construct(DBmysql $dbConn)
    {
        self::$dbConn = $dbConn;

        $this->id = -1;
        $this->size = '';
        $this->price = '';
    }

    public function delete()
    {
        // TODO: Implement delete() method.
    }

    public function save()
    {
        // TODO: Implement save() method.
    }

    public function update()
    {
        // TODO: Implement update() method.
    }

    public static function load($id = null)
    {
        // TODO: Implement load() method.
    }

    public static function setDb(Database $db)
    {
        // TODO: Implement setDb() method.
    }

    public static function loadAll()
    {
        $dbConn = new DBmysql();
        $query = "SELECT * FROM Size";

        $stmt = $dbConn->query($query);
        $stmt->execute();

        $sizes = $stmt->fetchAll(PDO::FETCH_OBJ);
        $sizesList = [];
        foreach ($sizes as $dbSize) {
            $size = new Size($dbConn);
            $size->id = $dbSize->id;
            $size->size = $dbSize->size;
            $size->price = $dbSize->price;

            $sizesList [] = $size;
        }

        return $sizesList;

    }


    public function jsonSerialize()
    {
        return [
            'id'      => $this->id,
            'size'    => $this->size,
            'price'   => $this->price,

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
    public function getSize()
    {
        return $this->size;
    }

    /**
     * @param mixed $size
     */
    public function setSize($size)
    {
        $this->size = $size;
    }

    /**
     * @return mixed
     */
    public function getPrice()
    {
        return $this->price;
    }

    /**
     * @param mixed $price
     */
    public function setPrice($price)
    {
        $this->price = $price;
    }


}