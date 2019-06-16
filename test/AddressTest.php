<?php

use PHPUnit\Framework\TestCase;

class AddressTest extends TestCase
{

    public function testAddAddress()
    {
        $city = 'Warszawa';
        $postalCode = '02-003';
        $street = 'Warszawska';
        $flatNumber = '23';

        $address = new Address($city, $postalCode, $street, $flatNumber);

        $this->assertInstanceOf(Address::class, $address);
        $this->assertSame($city, $address->getCity());
        $this->assertSame($postalCode, $address->getPostalCode());
        $this->assertSame($street, $address->getStreet());
        $this->assertSame($flatNumber, $address->getFlatNumber());

    }

    public function testUpdateAddress()
    {
        $address = new Address();
        $id = 2;

        $city = 'Warszawa';
        $postalCode = '02-003';
        $street = 'Warszawska';
        $flatNumber = '23';

        $newAddress = new Address($id, $city, $postalCode, $street, $flatNumber);

        $this->assertTrue($address->checkIfAddressExist($id));

        $address->updateAddress($id, $city, $postalCode, $street, $flatNumber);

        //do sprawdzenia
        $this->assertSame($newAddress, $address);

        $this->assertInstanceOf(Address::class, $address);
        $this->assertSame($city, $address->getCity());
        $this->assertSame($postalCode, $address->getPostalCode());
        $this->assertSame($street, $address->getStreet());
        $this->assertSame($flatNumber, $address->getFlatNumber());

    }

    public function testDeleteAddress()
    {
        $address = new Address();

    }

}