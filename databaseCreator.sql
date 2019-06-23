CREATE DATABASE paczkolab;

USE paczkolab;

CREATE TABLE Size (
                      id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                      size varchar(5) NOT NULL,
                      price decimal(7,2)
);
CREATE TABLE Address (
                      id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                      city varchar(32) NOT NULL,
                      postal_code varchar(10) NOT NULL,
                      street varchar(192) NOT NULL,
                      flat_number varchar(192) NOT NULL
);
CREATE TABLE User (
                         id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                         name varchar(62) NOT NULL,
                         surname varchar(10) NOT NULL,
                         credits int(10) NOT NULL,
                         address_id INT UNSIGNED,
                         FOREIGN KEY (`address_id`) REFERENCES `Address`(`id`)
);
CREATE TABLE Parcel (
                        id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                        sender_id int UNSIGNED,
                        size_id int UNSIGNED,
                        recipient_id int UNSIGNED,
                        FOREIGN KEY (recipient_id) REFERENCES User(id),
                        FOREIGN KEY (size_id) REFERENCES Size(id),
                        FOREIGN KEY (sender_id) REFERENCES User(id)
);
