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
    public function __construct($id = -1)
    {
        $this->id = $id;
        $this->size = '';
        $this->price = '';
    }

    public function delete()
    {
        if ($this->id > 0) {
            $dbConn = new DBmysql();

            $query = "DELETE FROM Size WHERE id=:id";

            $dbConn->query($query);
            $dbConn->bind('id', $this->id);
            $dbConn->execute();
            return $dbConn->rowCount() > 0;
        }
    }

    public function save()
    {
        if ($this->id > 0) {
            $dbConn = new DBmysql();

            $query = "UPDATE Size SET price=:price, size=:size WHERE id=:id";

            $dbConn->query($query);
            $dbConn->bind('id', $this->id);
            $dbConn->bind('size', $this->size);
            $dbConn->bind('price', $this->price);
            $dbConn->execute();
            $id = $dbConn->lastInsertId();
            $this->id = $id;
        } else {
            $dbConn = new DBmysql();

            $query = "INSERT INTO Size SET price=:price, size=:size";

            $dbConn->query($query);
            $dbConn->bind('size', $this->size);
            $dbConn->bind('price', $this->price);
            $dbConn->execute();
            $id = $dbConn->lastInsertId();
            $this->id = $id;
        }

        return $this;
    }

    public function update()
    {
        // TODO: Implement save() method.
    }

    public static function load($id = null)
    {
        // TODO: Implement load() method.
    }

    public static function setDb(Database $db)
    {
        self::$dbConn = $db;
    }

    public static function loadAll()
    {
        $dbConn = new DBmysql();
        $query = "SELECT * FROM Size";

        $dbConn->query($query);
        $sizes = $dbConn->resultSet();
        $sizesList = [];
        foreach ($sizes as $dbSize) {
            $size = new Size();
            $size->id = $dbSize['id'];
            $size->size = $dbSize['size'];
            $size->price = $dbSize['price'];

            $sizesList [] = $size;
        }

        return $sizesList;

    }


    public function jsonSerialize()
    {
        return [
            'id' => $this->id,
            'size' => $this->size,
            'price' => $this->price,

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