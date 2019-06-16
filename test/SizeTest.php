<?php

use PHPUnit\Framework\TestCase;

class SizeTest extends TestCase
{
    public function testSizeId()
    {
        $object = new Size($id, $size, $price);
        $this->assertIsInt($object->getId(), "id is numeric");
        $this->assertGreaterThan($object->getId() > 0, $object->getId());
        $this->assertfalse($object->checkIfIdExists());
    }

    public function testIsSizeSet()
    {
        $object = new Size($id, $size, $price);
        $this->assertIsString($this->getSize());
        $this->assertContains($object->getSize(), ['S', 'M', 'L', 'XL']);
    }

    public function testPrice()
    {
        $object = new Size($id, $size, $price);
        $this->assertIsFloat($object->getPrice(), "id is numeric");
        $this->assertGreaterThan($object->getPrice() > 0, $object->getPrice());
    }

    public function testAddSize()
    {
        $object = new Size($id, $size, $price);
        $sqlSelectAllFromSizes = "SELECT * FROM sizes";
        $resultBefore = $connection->query($sqlSelectAllFromSizes)->rowCount();
        $object->save();
        $resultAfter = $connection->query($sqlSelectAllFromSizes)->rowCount();
        $this->assertNotEquals();
    }

    public function testUpdateSize(Size $sizeObject)
    {
        $id = $sizeObject->getId();
        $size = $sizeObject->getSize();
        $price = $sizeObject->getPrice();

        $sqlGetSize = "SELECT size FROM sizes WHERE id =".$id;
        $resultBefore = $connection->query($sqlGetSize)->fetch();
        $sqlUpdateSize = "UPDATE size SET () WHERE id =".$object->getId();
        $resultAfter = $connection->query($sqlUpdateSize)->fetch();
    }

    public function testDeleteSize()
    {

    }
}