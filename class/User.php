<?php
class User implements Action, JsonSerializable
{
    private $id;
    private $name;
    private $surname;
    private $credits;
    private $addressId;

    public static $dbConn;

    /**
     * User constructor.
     * @param $id
     */
    public function __construct($id = -1)
    {
        $this->id = $id;
        $this->name = '';
        $this->surmane = '';
        $this->credits = '';
        $this->addressId = '';
    }

    public function save()
    {
        if ($this->id > 0) {
            $dbConn = new DBmysql();

            $query = "UPDATE User SET name=:name, surname=:surname, credits=:credits WHERE id=:id";

            $dbConn->query($query);
            $dbConn->bind('id', $this->id);
            $dbConn->bind('surname', $this->surname);
            $dbConn->bind('name', $this->name);
            $dbConn->bind('credits', $this->credits);
            $dbConn->execute();
            $id = $dbConn->lastInsertId();
            $this->id = $id;
        } else {
            $dbConn = new DBmysql();
            $query = "INSERT INTO User SET name=:name, surname=:surname, credits=:credits, address_id=:addressId";
            $dbConn->query($query);
            $dbConn->bind('name', $this->name);
            $dbConn->bind('surname', $this->surname);
            $dbConn->bind('credits', $this->credits);
            $dbConn->bind('addressId', $this->addressId);
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

            $query = "DELETE FROM User WHERE id=:id";

            $dbConn->query($query);
            $dbConn->bind('id', $this->id);
            $dbConn->execute();
            return $dbConn->rowCount() > 0;
        }
    }

    public static function load($id = null)
    {
        $dbConn = new DBmysql();

        $query = 'SELECT * FROM User WHERE id=:id';

        $dbConn->query($query);
        $dbConn->bind('id', $id);
        $users = $dbConn->resultSet();

        $usersList = [];
        foreach ($users as $dbUser){
            $user = new User();
            $user->id = $dbUser['id'];
            $user->name = $dbUser['name'];
            $user->surname = $dbUser['surname'];
            $user->credits = $dbUser['credits'];
            $user->addressId = $dbUser['address_id'];

            $usersList [] = $user;
        }

        return $usersList;
    }

    public static function loadAll()
    {
        $dbConn = new DBmysql();

        $query = 'SELECT * FROM User';

        $dbConn->query($query);
        $users = $dbConn->resultSet();

        $usersList = [];
        foreach ($users as $dbUser){
            $user = new User();
            $user->id = $dbUser['id'];
            $user->name = $dbUser['name'];
            $user->surname = $dbUser['surname'];
            $user->credits = $dbUser['credits'];
            $user->addressId = $dbUser['address_id'];

            $usersList [] = $user;
        }

        return $usersList;
    }

    public static function setDb(Database $db)
    {
        // TODO: Implement setDb() method.
    }

    public function jsonSerialize()
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'surname' => $this->surname,
            'credits' => $this->credits,
            'address_id' => $this->addressId
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
    public function getName()
    {
        return $this->name;
    }

    /**
     * @param mixed $name
     */
    public function setName($name)
    {
        $this->name = $name;
    }

    /**
     * @return mixed
     */
    public function getSurname()
    {
        return $this->surname;
    }

    /**
     * @param mixed $surmane
     */
    public function setSurname($surname)
    {
        $this->surname = $surname;
    }

    /**
     * @return mixed
     */
    public function getCredits()
    {
        return $this->credits;
    }

    /**
     * @param mixed $credits
     */
    public function setCredits($credits)
    {
        $this->credits = $credits;
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