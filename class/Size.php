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
    public function __construct()
    {


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
        if ($this->id > 0) {
            //update
//            $sql = "UPDATE books SET title=:title, description=:description, author_id=:author_id WHERE id=:id";
//            $stmt = self::$db->prepare($sql);
//            $stmt->execute(
//                [
//                    'id'          => $this->id,
//                    'title'       => $this->title,
//                    'description' => $this->description,
//                    'author_id'   => $this->author_id,
//                ]
//            );
        } else {
            $dbConn = new DBmysql();
            $param = [
                'price' => $this->price,
                'size' => $this->size
            ];
            $query = "INSERT INTO Size SET price=:price, size=:size";

            $stmt = $dbConn->query($query);
            $stmt->execute($param);
            $stmt->lastInsertId();
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
        $query = "SELECT price, size, id FROM Size";

        $dbConn->query($query);
        $sizes = $dbConn->resultSet();
        $sizesList = [];
        foreach ($sizes as $dbSize) {
            $size = new Size($dbConn);
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