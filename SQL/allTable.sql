DROP TABLE `Parcel`;
DROP TABLE `User`;
DROP TABLE `Address`;
DROP TABLE `Size`;CREATE TABLE Address (
                      id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                      city varchar(32) NOT NULL,
                      postal_code varchar(10) NOT NULL,
                      street varchar(192) NOT NULL,
                      flat_number varchar(192) NOT NULL
);INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (1, 'Ostrzeszów',
     '41-137',
      'Modlińska',
       '30A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (2, 'Sosnowiec',
     '52-011',
      'Ściegiennego Piotra',
       '33A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (3, 'Mielec',
     '33-533',
      'Świętokrzyska',
       '58A/61');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (4, 'Świdnica',
     '13-629',
      'Modrzewiowa',
       '31/46');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (5, 'Kolonowskie',
     '96-781',
      'Lompy Józefa',
       '18A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (6, 'Szczecinek',
     '95-778',
      'Tęczowa',
       '13A/54');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (7, 'Bełchatów',
     '69-147',
      'Płocka',
       '36');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (8, 'Sandomierz',
     '32-121',
      'Krucza',
       '69A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (9, 'Zgorzelec',
     '04-239',
      'Modrzewiowa',
       '26A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (10, 'Lublin',
     '85-404',
      'Puławska',
       '92/10');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (11, 'Siedlce',
     '59-404',
      'Czarnieckiego Stefana',
       '01/36');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (12, 'Czarna Woda',
     '11-883',
      'Plebiscytowa',
       '89A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (13, 'Czeladź',
     '89-068',
      'Puszkina Aleksandra',
       '87A/12');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (14, 'Zborowskie',
     '17-505',
      'Świętokrzyska',
       '23A/29');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (15, 'Łaziska Górne',
     '21-009',
      'Działkowa',
       '45A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (16, 'Ostrów Mazowiecka',
     '82-471',
      'Południowa',
       '10');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (17, 'Olsztyn',
     '75-455',
      'Staromiejska',
       '74/04');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (18, 'Śrem',
     '57-006',
      'Dmowskiego Romana',
       '52A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (19, 'Zakopane',
     '93-067',
      'Spółdzielcza',
       '17');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (20, 'Ostrołęka',
     '77-310',
      'Rzeczna',
       '63A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (21, 'Magdalenka',
     '67-159',
      'Leszczynowa',
       '44/19');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (22, 'Leszno',
     '26-661',
      'Łąkowa',
       '05A/06');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (23, 'Kłodzko',
     '67-334',
      'Powstańców Śląskich',
       '16A/48');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (24, 'Rumia',
     '41-673',
      'Rataja Macieja',
       '47');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (25, 'Swarzędz',
     '89-713',
      'Cisowa',
       '97A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (26, 'Przędzel',
     '27-753',
      'Saperów',
       '61');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (27, 'Bełchatów',
     '01-353',
      'Kasprzaka Marcina',
       '78A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (28, 'Boguszów-Gorce',
     '20-446',
      'Patriotów',
       '35');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (29, 'Kołobrzeg',
     '57-831',
      'Barlickiego Norberta',
       '89/35');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (30, 'Rynarzewo',
     '21-418',
      'Wesoła',
       '81');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (31, 'Krapkowice',
     '73-307',
      'Spółdzielcza',
       '66A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (32, 'Bielawa',
     '42-288',
      'Dolna',
       '65');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (33, 'Pruszcz Gdański',
     '37-380',
      'Spacerowa',
       '34A/00');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (34, 'Kołobrzeg',
     '39-024',
      'Czarnieckiego Stefana',
       '06A/81');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (35, 'Lędziny',
     '07-374',
      'Targowa',
       '60/21');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (36, 'Pruszcz Gdański',
     '48-849',
      'Grzybowa',
       '77/58');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (37, 'Olkusz',
     '87-668',
      'Patriotów',
       '97/01');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (38, 'Luboń',
     '56-538',
      'Królowej Jadwigi',
       '99');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (39, 'Ełk',
     '39-124',
      'Struga Andrzeja',
       '73A/89');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (40, 'Babienica',
     '85-835',
      'Wyspiańskiego Stanisława',
       '58/65');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (41, 'Gdynia',
     '06-775',
      'Limanowskiego Bolesława',
       '32/35');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (42, 'Turek',
     '93-635',
      'Czwartaków',
       '05');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (43, 'Kluczbork',
     '18-221',
      'Kalinowa',
       '96');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (44, 'Koszwały',
     '36-082',
      'Liliowa',
       '11A/47');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (45, 'Śrem',
     '79-004',
      'Kościelna',
       '98A/24');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (46, 'Lublin',
     '35-821',
      'Bytomska',
       '85A/81');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (47, 'Szczecin',
     '92-839',
      'Wodna',
       '14A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (48, 'Zawiercie',
     '75-775',
      'Kwiatkowskiego Eugeniusza',
       '92A/86');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (49, 'Krotoszyn',
     '05-096',
      'Perłowa',
       '63A/35');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (50, 'Rybnik',
     '61-245',
      'Kartuska',
       '17A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (51, 'Wałbrzych',
     '14-688',
      'Gnieźnieńska',
       '58A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (52, 'Tczew',
     '49-253',
      'Tuwima Juliana',
       '87/31');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (53, 'Jelenia Góra',
     '31-611',
      'Jesionowa',
       '75/29');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (54, 'Kolonowskie',
     '83-559',
      'Barlickiego Norberta',
       '82');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (55, 'Bielawa',
     '19-994',
      'Osiedlowa',
       '20A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (56, 'Wągrowiec',
     '71-415',
      'Mostowa',
       '81/56');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (57, 'Jastrzębie',
     '98-206',
      'Mickiewicza Adama',
       '10');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (58, 'Ostrzeszów',
     '88-678',
      'Hutnicza',
       '83/78');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (59, 'Jarosław',
     '29-700',
      'Kusocińskiego Janusza',
       '68A/66');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (60, 'Orzesze',
     '21-113',
      'Odrodzenia',
       '63/81');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (61, 'Bytom',
     '33-651',
      'Pola Wincentego',
       '28A/92');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (62, 'Jadowniki',
     '23-846',
      'Tulipanowa',
       '66A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (63, 'Czechowice-Dziedzice',
     '68-182',
      'Szafirowa',
       '37A/67');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (64, 'Kuźnica Masłońska',
     '35-930',
      'Przemysłowa',
       '14A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (65, 'Dębica',
     '13-879',
      'Kleeberga Franciszka',
       '13/08');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (66, 'Ząbki',
     '89-335',
      'Traugutta Romualda',
       '79A/78');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (67, 'Bydgoszcz',
     '63-057',
      'Popiełuszki Jerzego',
       '67A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (68, 'Kętrzyn',
     '37-361',
      'Dworska',
       '31/84');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (69, 'Katowice',
     '16-997',
      'Łukasiewicza Ignacego',
       '48A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (70, 'Orzesze',
     '58-976',
      'Leśmiana Bolesława',
       '45');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (71, 'Gorlice',
     '90-795',
      'Cmentarna',
       '74A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (72, 'Radomsko',
     '49-083',
      'Ptasia',
       '09/56');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (73, 'Chrzanów',
     '89-282',
      'Kołobrzeska',
       '49/52');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (74, 'Bolesławiec',
     '76-388',
      'Piekarska',
       '64A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (75, 'Gdynia',
     '83-178',
      'Kresowa',
       '39/87');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (76, 'Wałbrzych',
     '22-288',
      'Wojska Polskiego',
       '92A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (77, 'Myszków',
     '94-112',
      'Dolna',
       '93A/87');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (78, 'Starogard Gdański',
     '74-023',
      'Szmaragdowa',
       '25');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (79, 'Bytom',
     '74-268',
      'Wodna',
       '83A/97');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (80, 'Gorlice',
     '09-023',
      'Klonowa',
       '72A/43');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (81, 'Żary',
     '17-154',
      'Gościnna',
       '71A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (82, 'Wrocław',
     '66-573',
      'Rataja Macieja',
       '60/21');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (83, 'Zgorzelec',
     '15-369',
      'Małopolska',
       '03A/65');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (84, 'Puławy',
     '18-077',
      'Koszykowa',
       '12A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (85, 'Ławy',
     '18-452',
      'Siemiradzkiego Henryka',
       '40A/76');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (86, 'Ełk',
     '25-373',
      'Rybnicka',
       '98A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (87, 'Mokrzyska',
     '84-125',
      'Rubinowa',
       '16');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (88, 'Przemyśl',
     '05-563',
      'Niecała',
       '13A/23');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (89, 'Zawiercie',
     '30-074',
      'Prusa Bolesława',
       '32/66');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (90, 'Elbląg',
     '74-819',
      'Gdyńska',
       '38');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (91, 'Gdańsk',
     '03-162',
      'Górnośląska',
       '50/75');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (92, 'Świdnik',
     '02-571',
      'Bytomska',
       '58A/21');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (93, 'Kwidzyn',
     '33-508',
      'Iwaszkiewicza Jarosława',
       '08A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (94, 'Olkusz',
     '38-904',
      'Rynek',
       '06');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (95, 'Opole',
     '47-165',
      'Pułaskiego Kazimierza',
       '25');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (96, 'Mielec',
     '45-299',
      'Południowa',
       '76A/21');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (97, 'Gdynia',
     '16-940',
      'Niedziałkowskiego Mieczysława',
       '67');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (98, 'Kłobuck',
     '63-388',
      'Handlowa',
       '39A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (99, 'Chojnice',
     '92-619',
      'Wolności',
       '91A');INSERT INTO `Address` (`id`, `city`, `postal_code`, `street`, `flat_number`) 
    VALUES
    (100, 'Bydgoszcz',
     '38-262',
      'Grottgera Artura',
       '03A');CREATE TABLE Size (
                      id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                      size varchar(2) NOT NULL,
                      price decimal(7,2)
);INSERT INTO `Size` (`id`, `size`, `price`)
    VALUES (1, 'S', 10);INSERT INTO `Size` (`id`, `size`, `price`)
    VALUES (2, 'M', 20);INSERT INTO `Size` (`id`, `size`, `price`)
    VALUES (3, 'L', 30);INSERT INTO `Size` (`id`, `size`, `price`)
    VALUES (4, 'XL', 40);CREATE TABLE User (
                         id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                         name varchar(62) NOT NULL,
                         surname varchar(10) NOT NULL,
                         credits int(10) NOT NULL,
                         address_id INT UNSIGNED,
                         FOREIGN KEY (`address_id`) REFERENCES `Address`(`id`)
);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (1,
     'Gabriela',
     'Sawicki',
      42,
       21);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (2,
     'Natan',
     'Pawlak',
      369,
       74);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (3,
     'Aleks',
     'Cieślak',
      731,
       81);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (4,
     'Adam',
     'Duda',
      569,
       81);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (5,
     'Nadia',
     'Kaczmarek',
      966,
       17);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (6,
     'Szymon',
     'Sobczak',
      401,
       71);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (7,
     'Ada',
     'Walczak',
      403,
       19);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (8,
     'Maja',
     'Mazur',
      530,
       4);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (9,
     'Marika',
     'Kamińska',
      761,
       58);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (10,
     'Klaudia',
     'Dąbrowska',
      154,
       6);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (11,
     'Julita',
     'Walczak',
      3,
       63);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (12,
     'Julia',
     'Urbańska',
      170,
       86);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (13,
     'Kacper',
     'Zając',
      608,
       76);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (14,
     'Michał',
     'Wróbel',
      284,
       85);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (15,
     'Lidia',
     'Kwiatkowska',
      397,
       69);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (16,
     'Rozalia',
     'Wróbel',
      17,
       25);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (17,
     'Dawid',
     'Czerwiński',
      608,
       20);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (18,
     'Helena',
     'Grabowski',
      246,
       18);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (19,
     'Kazimierz',
     'Lewandowska',
      644,
       55);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (20,
     'Artur',
     'Adamczyk',
      446,
       81);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (21,
     'Kinga',
     'Michalak',
      757,
       84);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (22,
     'Tomasz',
     'Nowakowski',
      389,
       58);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (23,
     'Olaf',
     'Tomaszewski',
      926,
       2);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (24,
     'Adam',
     'Czerwiński',
      819,
       13);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (25,
     'Nicole',
     'Włodarczyk',
      64,
       78);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (26,
     'Kornel',
     'Sokołowski',
      646,
       7);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (27,
     'Julia',
     'Gajewski',
      565,
       68);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (28,
     'Miłosz',
     'Wojciechowska',
      949,
       46);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (29,
     'Konstanty',
     'Sawicka',
      449,
       82);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (30,
     'Krystyna',
     'Mazurek',
      210,
       98);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (31,
     'Anastazja',
     'Walczak',
      129,
       65);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (32,
     'Justyna',
     'Adamczyk',
      801,
       82);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (33,
     'Rafał',
     'Krawczyk',
      315,
       71);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (34,
     'Aniela',
     'Sikora',
      727,
       20);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (35,
     'Julita',
     'Krawczyk',
      939,
       53);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (36,
     'Roksana',
     'Kozłowski',
      164,
       28);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (37,
     'Lena',
     'Ostrowski',
      113,
       91);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (38,
     'Tadeusz',
     'Adamczyk',
      949,
       99);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (39,
     'Eliza',
     'Pietrzak',
      908,
       52);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (40,
     'Tadeusz',
     'Olszewska',
      95,
       95);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (41,
     'Sebastian',
     'Błaszczyk',
      502,
       7);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (42,
     'Maksymilian',
     'Zakrzewski',
      857,
       46);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (43,
     'Paulina',
     'Sikorska',
      361,
       42);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (44,
     'Tymoteusz',
     'Kubiak',
      391,
       46);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (45,
     'Artur',
     'Zakrzewska',
      676,
       34);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (46,
     'Daniel',
     'Borowska',
      607,
       90);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (47,
     'Paweł',
     'Maciejewski',
      293,
       26);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (48,
     'Ada',
     'Zakrzewski',
      117,
       34);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (49,
     'Ewelina',
     'Rutkowski',
      110,
       69);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (50,
     'Borys',
     'Baranowski',
      466,
       78);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (51,
     'Eryk',
     'Urbański',
      700,
       16);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (52,
     'Alan',
     'Dąbrowski',
      907,
       39);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (53,
     'Alex',
     'Ziółkowski',
      590,
       99);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (54,
     'Magdalena',
     'Lis',
      49,
       88);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (55,
     'Miłosz',
     'Mazurek',
      23,
       78);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (56,
     'Aurelia',
     'Kowalska',
      708,
       40);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (57,
     'Joanna',
     'Dudek',
      174,
       56);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (58,
     'Bartek',
     'Szulc',
      951,
       54);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (59,
     'Dorota',
     'Czarnecka',
      89,
       66);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (60,
     'Melania',
     'Rutkowska',
      554,
       87);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (61,
     'Roksana',
     'Wysocka',
      711,
       58);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (62,
     'Olgierd',
     'Sadowska',
      39,
       72);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (63,
     'Bruno',
     'Ziółkowski',
      914,
       32);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (64,
     'Klara',
     'Zakrzewski',
      354,
       38);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (65,
     'Adrian',
     'Pawlak',
      577,
       69);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (66,
     'Gabriel',
     'Grabowska',
      927,
       14);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (67,
     'Aniela',
     'Zając',
      402,
       2);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (68,
     'Robert',
     'Mróz',
      922,
       100);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (69,
     'Jeremi',
     'Ziółkowska',
      521,
       52);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (70,
     'Tola',
     'Wasilewska',
      95,
       82);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (71,
     'Róża',
     'Olszewski',
      506,
       36);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (72,
     'Melania',
     'Sokołowski',
      440,
       75);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (73,
     'Dorota',
     'Szymczak',
      219,
       57);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (74,
     'Liwia',
     'Kozłowski',
      2,
       57);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (75,
     'Elżbieta',
     'Piotrowska',
      957,
       2);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (76,
     'Fryderyk',
     'Zawadzka',
      270,
       56);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (77,
     'Anna',
     'Kołodziej',
      247,
       38);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (78,
     'Dawid',
     'Sokołowski',
      394,
       37);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (79,
     'Izabela',
     'Laskowski',
      923,
       36);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (80,
     'Małgorzata',
     'Konieczny',
      615,
       37);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (81,
     'Sandra',
     'Urbański',
      63,
       36);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (82,
     'Franciszek',
     'Sadowska',
      463,
       77);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (83,
     'Albert',
     'Lis',
      820,
       7);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (84,
     'Bianka',
     'Ostrowski',
      244,
       66);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (85,
     'Anita',
     'Marciniak',
      41,
       100);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (86,
     'Albert',
     'Cieślak',
      31,
       48);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (87,
     'Alan',
     'Baran',
      245,
       14);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (88,
     'Piotr',
     'Błaszczyk',
      598,
       60);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (89,
     'Nataniel',
     'Nowak',
      673,
       36);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (90,
     'Zofia',
     'Górecka',
      737,
       9);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (91,
     'Jeremi',
     'Wasilewska',
      846,
       55);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (92,
     'Michalina',
     'Lewandowski',
      309,
       90);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (93,
     'Albert',
     'Wojciechowski',
      317,
       21);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (94,
     'Klara',
     'Pawłowski',
      604,
       78);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (95,
     'Przemysław',
     'Szewczyk',
      284,
       69);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (96,
     'Konrad',
     'Dudek',
      682,
       55);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (97,
     'Juliusz',
     'Wasilewski',
      153,
       66);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (98,
     'Oskar',
     'Ostrowski',
      452,
       42);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (99,
     'Nadia',
     'Jasińska',
      297,
       22);INSERT INTO `User` (`id`, `name`, `surname`, `credits`, `address_id`) 
    VALUES
    (100,
     'Mariusz',
     'Włodarczyk',
      466,
       50);CREATE TABLE Parcel (
                        id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                        user_id int UNSIGNED,
                        size_id int UNSIGNED,
                        address_id int UNSIGNED,
                        FOREIGN KEY (address_id) REFERENCES Address(id),
                        FOREIGN KEY (size_id) REFERENCES Size(id),
                        FOREIGN KEY (user_id) REFERENCES User(id)
);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (1,
    62,
    1,
    31);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (2,
    97,
    2,
    56);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (3,
    77,
    4,
    64);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (4,
    55,
    3,
    2);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (5,
    38,
    1,
    67);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (6,
    15,
    2,
    30);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (7,
    54,
    2,
    8);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (8,
    65,
    2,
    27);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (9,
    75,
    4,
    83);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (10,
    71,
    2,
    43);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (11,
    67,
    4,
    98);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (12,
    66,
    4,
    41);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (13,
    64,
    3,
    45);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (14,
    4,
    4,
    73);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (15,
    100,
    1,
    74);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (16,
    85,
    1,
    97);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (17,
    46,
    1,
    36);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (18,
    5,
    3,
    58);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (19,
    78,
    1,
    95);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (20,
    47,
    2,
    20);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (21,
    70,
    1,
    58);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (22,
    9,
    4,
    44);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (23,
    100,
    1,
    16);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (24,
    89,
    3,
    84);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (25,
    3,
    1,
    7);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (26,
    31,
    1,
    67);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (27,
    45,
    2,
    85);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (28,
    51,
    2,
    83);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (29,
    68,
    4,
    26);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (30,
    19,
    1,
    65);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (31,
    23,
    2,
    94);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (32,
    1,
    3,
    45);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (33,
    86,
    3,
    68);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (34,
    26,
    3,
    25);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (35,
    37,
    4,
    32);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (36,
    96,
    3,
    19);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (37,
    68,
    4,
    52);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (38,
    10,
    3,
    83);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (39,
    81,
    4,
    42);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (40,
    31,
    2,
    61);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (41,
    53,
    3,
    82);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (42,
    64,
    1,
    8);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (43,
    23,
    1,
    20);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (44,
    87,
    3,
    75);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (45,
    48,
    1,
    69);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (46,
    2,
    1,
    26);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (47,
    6,
    2,
    39);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (48,
    95,
    2,
    20);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (49,
    48,
    4,
    87);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (50,
    31,
    4,
    92);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (51,
    89,
    3,
    52);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (52,
    88,
    3,
    29);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (53,
    56,
    1,
    32);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (54,
    37,
    3,
    29);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (55,
    61,
    4,
    10);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (56,
    100,
    4,
    56);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (57,
    58,
    4,
    40);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (58,
    22,
    2,
    27);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (59,
    62,
    4,
    73);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (60,
    94,
    1,
    98);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (61,
    50,
    3,
    38);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (62,
    70,
    4,
    100);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (63,
    23,
    4,
    90);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (64,
    81,
    4,
    85);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (65,
    76,
    2,
    20);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (66,
    72,
    1,
    12);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (67,
    31,
    2,
    37);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (68,
    5,
    4,
    17);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (69,
    58,
    3,
    54);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (70,
    15,
    4,
    4);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (71,
    61,
    1,
    63);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (72,
    27,
    4,
    32);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (73,
    38,
    2,
    80);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (74,
    85,
    2,
    56);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (75,
    3,
    2,
    42);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (76,
    23,
    2,
    72);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (77,
    5,
    2,
    33);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (78,
    70,
    3,
    15);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (79,
    55,
    4,
    91);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (80,
    6,
    3,
    47);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (81,
    47,
    2,
    90);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (82,
    12,
    3,
    69);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (83,
    55,
    2,
    77);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (84,
    68,
    2,
    84);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (85,
    77,
    1,
    65);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (86,
    45,
    2,
    37);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (87,
    64,
    4,
    87);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (88,
    4,
    2,
    93);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (89,
    81,
    1,
    84);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (90,
    78,
    4,
    37);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (91,
    14,
    1,
    57);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (92,
    19,
    4,
    97);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (93,
    11,
    3,
    8);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (94,
    38,
    3,
    25);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (95,
    70,
    1,
    3);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (96,
    35,
    1,
    25);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (97,
    74,
    2,
    15);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (98,
    49,
    1,
    61);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (99,
    60,
    4,
    55);INSERT INTO `Parcel` (`id`, `user_id`, `size_id`, `address_id`)
    VALUES
    (100,
    43,
    3,
    95);