--INSERT INTO Adresse
INSERT INTO Adresse VALUES (
    34387 ,
    'Gülbahar, Altan Erbulak Sokagi No:14 D:2 Kat:3, Sisli',
    'İstanbul'
);
INSERT INTO Adresse VALUES (
      34367,
    'Cumhuriyet Caddesi, No:36, Kat 1, Daire 3 Seyhan Apartmani Harbiye Mahallesi, Sisli',
    'İstanbul'
);
INSERT INTO Adresse VALUES (
        34110 ,
    'Alemdar, Ticarethane Sk. no:15,Fatih',
    'İstanbul'
);
INSERT INTO Adresse VALUES (
     34360,
    '19 Mayis Mahallesi Golden Plaza No: 3 Kat: 10, Sisli',
    'İstanbul'
);
INSERT INTO Adresse VALUES (
     34378,
    'Tesvikiye Mah. Akkavak Sok. Izgü Apt. No:15 B Blok D:4 Sisli ',
    'İstanbul'
);
INSERT INTO Adresse VALUES (
      34823,
    'İstiklal Caddesi Meselik Sokak No: 2 Beyoglu ',
    'İstanbul'
);
INSERT INTO Adresse VALUES (
     34000 ,
    'Üniversite, Civan Sk. No:330, Avcilar',
    'İstanbul'
);
INSERT INTO Adresse VALUES (
    35874,
    'Sair Esref Bulvari No:28 Kat:3 Daire:3, Çankaya',
    'İzmir'
);
INSERT INTO Adresse VALUES (
    34903,
    'Bahçekent Veteriner Klinigi, 1.Blok 24/AP, Esenyurt Hadimköy Yolu',
    'İstanbul'
);
INSERT INTO Adresse VALUES (
     06974,
    'Ofis:Batikent Kardelen Mahallesi Igdir Yolu Caddesi 1207 Sokak Petrolis Dubleksleri No:1 Atölye:Ostim 29 sokak',
    'Ankara'
);
INSERT INTO Adresse VALUES (
     16220,
    'Ulu Mahallesi Kibris sehitleri Caddesi Yesil Han 52/4 No:66',
    'Bursa'
);

--INSERT INTO Libraire
INSERT INTO Libraire VALUES (
    'BenÇi Kitapevi',
    9,
    '(0212) 56738 91'
);


--INSERT INTO Auteur
INSERT INTO Auteur VALUES ('Christie','Agatha','Kadin');
INSERT INTO Auteur VALUES ('Karaosmanoglu', 'Yakup Kadri', 'Erkek');
INSERT INTO Auteur VALUES ('Ümit','Ahmet', 'Erkek');
INSERT INTO Auteur VALUES ('Brown', 'Dan', 'Erkek');
INSERT INTO Auteur VALUES ( 'Safak','Elif',  'Kadin');
INSERT INTO Auteur VALUES ( 'King','Stephen', 'Erkek');
INSERT INTO Auteur VALUES ('Goethe','Johann Wolfgang von','Erkek');
INSERT INTO Auteur VALUES ('Hugo','Victor','Erkek');
INSERT INTO Auteur VALUES ( 'Edib Adivar','Halide', 'Kadin');
INSERT INTO Auteur VALUES ('Woolf', 'Virgiana', 'Kadin');


--INSERT INTO MaisonEdition
INSERT INTO MaisonEdition VALUES (
    'Altin Kitaplar',
    1,
    'iletisim@altinkitaplar.com.tr',
    '(0212) 446 38 88'
);
INSERT INTO MaisonEdition VALUES (
    'İletisim Yayinclik',
    2,
    'iletisim@iletisim.com.tr',
    '(0212) 516 22 60'
);
INSERT INTO MaisonEdition VALUES (
    'Everest Yayinlari',
    3,
    'info@everestyayinlari.com',
    '(0212) 511 53 03'
);
INSERT INTO MaisonEdition VALUES (
    'Dogan Kitap',
    4,
    'satis@dogankitap.com.tr',
    '(0212) 373 77 00.'
);
INSERT INTO MaisonEdition VALUES (
    'Can Yayinlari',
    5,
    'yayinevi@canyayinlari.com',
    '(0212) 252 59 88'
);
INSERT INTO MaisonEdition VALUES (
    'İs Bankasi Kültür Yayinlari',
    6,
    ' bilgi@iskultur.com.tr',
    '(0212) 252 3991'
);
INSERT INTO MaisonEdition VALUES (
    'İndigo Kitap',
    7,
    'siparis@indigokitap.com',
    '(0212) 43817 83'
);

--INSERT INTO Genre

INSERT INTO Genre VALUES (401,'Tarihi Kurgu');
INSERT INTO Genre VALUES (402,'Polisiye');
INSERT INTO Genre VALUES (403,'Biyografi');
INSERT INTO Genre VALUES (404,'Kurgu');
INSERT INTO Genre VALUES (405,'Gerilim');
INSERT INTO Genre VALUES (406,'Otobiyografik Kurgu');
INSERT INTO Genre VALUES (407, 'Trajedi');
INSERT INTO Genre VALUES (408, 'Deneme');
INSERT INTO Genre VALUES (409, 'Korku');

--INSET INTO Editeur
INSERT INTO Editeur VALUES ('Yilmaz','Naz','nazylmz@gmail.com','0536 645 9284',2);
INSERT INTO Editeur VALUES ('İnönü','Ertan','ertaninonuz@gmail.com','0595 682 0973',3);
INSERT INTO Editeur VALUES ('Sener','İzel','izel0sener@gmail.com','0509 237 1928',4);
INSERT INTO Editeur VALUES ('Seven','Tunahan','tunahanseven@gmail.com','0598 356 4783',5);
INSERT INTO Editeur VALUES ('Cruz','David','davidcruzz@gmail.com','1 408 436 3879',1);
INSERT INTO Editeur VALUES ('Snyder','Molly','mollysnyder@gmail.com','1 408 983 9873',1);
INSERT INTO Editeur VALUES ('Adams','Elizabeth','elizabethadams@gmail.com','1 408 467 2378',1);
INSERT INTO Editeur VALUES ('Taylor','Dana','danataylor@gmail.com','1 408 467 2344',7);
INSERT INTO Editeur VALUES ('Leclerc','René','reneleclerc@gmail.com','0133 487 2197',6);
INSERT INTO Editeur VALUES ('Weitzel','Toralf','toralfweitzel@gmail.com','4549 239 3478',5);


--INSERT INTO Livre
INSERT INTO Livre VALUES (
    '9780112873976', 
    'Dogu Ekspresinde Cinayet',
    '19340101',
    256,
    'İngilizce',
    'Türkçe, Fransizca, Mandarin',
    46,
    1,
    1,
    2,
    5
);

INSERT INTO Livre VALUES (
    '9789754700060', 
    'Yaban',
    '19320101',
    198,
    'Türkçe',
    'İnglizce, Almanca, Fransizca',
    38,
    2,
    2,
    1,
    1
);
INSERT INTO Livre VALUES (
    '9789752897373', 
    'Sis ve Gece',
    '19960101',
    270,
    'Türkçe',
    'İnglizce, Almanca, İtalyanca',
    53,
    3,
    3,
    4,
    2
);
INSERT INTO Livre VALUES (
    '9789752104037', 
    'Da vinci Sifresi',
    '20030318',
    495,
    'İngilizce',
    'Türkçe, Fransizca, İtalyanca, Mandarin, İspanyolca',
    63,
    4,
    1,
    5,
    6
);
INSERT INTO Livre VALUES (
    '9789759915315', 
    'Siyah Süt',
    '20070101',
    308,
    'Türkçe',
    'İngilizce, Fransizca, Korece',
    75,
    5,
    4,
    3,
    3
);
INSERT INTO Livre VALUES (
    '9789754051520', 
    'Hayvan Mezarligi',
    '19831114',
    375,
    'İngilizce',
    'Türkçe, Fransizca, İtalyanca, Latince',
    87,
    6,
    1,
    9,
    7
);
INSERT INTO Livre VALUES (
    '9789750738920', 
    'Genç Werherin Acilari',
    '17740929',
    164,
    'Almanca',
    'Türkçe, Fransizca, İtalyanca, İngilizce',
    68,
    7,
    5,
    6,
    10
);
INSERT INTO Livre VALUES (
    9786053324744, 
    'Sefiller',
    '18620101',
    512,
    'Fransizca',
    'Türkçe, Almanca, Latince, Mandarin, İtalyanca, İngilizce',
    97,
    8,
    6,
    7,
    9
);
INSERT INTO Livre VALUES (
    '9789750723322', 
    'Atesten Gömlek',
    '19920101',
    253,
    'Türkçe',
    'Fransizca, Almanca, İtalyanca, İngilizce',
    86,
    9,
    5,
    4,
    4
);
INSERT INTO Livre VALUES (
    '9786059144971', 
    'Kendine Ait Bir Oda',
    '19290101',
    172,
    'İngilizce',
    'Türkçe, Latince, İspanyolca, Mandarin, Fransizca, Almanca, İtalyanca, İngilizce',
    63,
    10,
    7,
    8,
    8
);


--INSERT INTO Edition
INSERT INTO Edition VALUES ('20191007',1);
INSERT INTO Edition VALUES ('20040101',2);
INSERT INTO Edition VALUES ('20190101',3);
INSERT INTO Edition VALUES ('20040101',4);
INSERT INTO Edition VALUES ('20070101',5);
INSERT INTO Edition VALUES ('20190924',6);
INSERT INTO Edition VALUES ('20180101',7);
INSERT INTO Edition VALUES ('20150101',8);
INSERT INTO Edition VALUES ('20070101',9);
INSERT INTO Edition VALUES ('20170101',10);

--INSERT INTO Client
INSERT INTO Client VALUES (
    'Zorlu',
    'Derya',
    'Kadin',
    'Doktor',
    '45',
    'Türk'
);
INSERT INTO Client VALUES (
    'Seven',
    'Sali',
    'Erkek',
    'Kasap',
    '52',
    'Türk'
);
INSERT INTO Client VALUES (
    'Çorlu',
    'Banu',
    'Kadin',
    'Çiçekçi',
    '35',
    'Türk'
);
INSERT INTO Client VALUES (
    'Green',
    'Denise',
    'Kadin',
    'Ögretmen',
    '29',
    'Amerikan'
);
INSERT INTO Client VALUES (
    'Mason',
    'Jacob',
    'Erkek',
    'Sporcu',
    '39',
    'Amerikan'
);
INSERT INTO Client VALUES (
    'King',
    'Alyssa',
    'Kadin',
    'Sarkici',
    '28',
    'İngiliz'
);
INSERT INTO Client VALUES (
    'Perrier',
    'Pauline',
    'Kadin',
    'Oyuncu',
    '55',
    'Fransiz'
);
INSERT INTO Client VALUES (
    'Maurice',
    'Bernard-Richard',
    'Erkek',
    'Tasarimci',
    '32',
    'Fransiz'
);
INSERT INTO Client VALUES (
    'Zorlu',
    'Derya',
    'Kadin',
    'Doktor',
    '45',
    'Türk'
);
INSERT INTO Client VALUES (
    'Monreal Amaya',
    'Demetrio',
    'Erkek',
    'Emekli',
    '64',
    'İspanyol'
);
INSERT INTO Client VALUES (
    'Cesaroni',
    'Gian',
    'Erkek',
    'Ögrenci',
    '21',
    'İtalyan'
);
INSERT INTO Client VALUES (
    'Seip',
    'Helga',
    'Kadin',
    'Polis',
    '42',
    'Alman'
);



--INSERT INTO Acheter
INSERT INTO Acheter VALUES (70, 1, 1, 1);
INSERT INTO Acheter VALUES (70, 1, 2, 1);
INSERT INTO Acheter VALUES (60, 1, 1, 2);
INSERT INTO Acheter VALUES (60, 1, 2, 2);
INSERT INTO Acheter VALUES (43, 1, 3, 3);
INSERT INTO Acheter VALUES (85, 1, 4, 4);
INSERT INTO Acheter VALUES (85, 1, 5, 4);
INSERT INTO Acheter VALUES (78, 1, 5, 5);
INSERT INTO Acheter VALUES (78, 1, 6, 5);
INSERT INTO Acheter VALUES (63, 1, 7, 6);
INSERT INTO Acheter VALUES (22, 1, 8, 7);
INSERT INTO Acheter VALUES (61, 1, 9, 8);
INSERT INTO Acheter VALUES (50, 1, 10, 9);
INSERT INTO Acheter VALUES (50, 1, 12, 9);
INSERT INTO Acheter VALUES (15, 1, 12, 10);
INSERT INTO Acheter VALUES (15, 1, 7, 10);

--INSERT INTO Employee
INSERT INTO Employe VALUES ('Demirel','Ali','20180421', 13452);
INSERT INTO Employe VALUES ('Çetin','Emel','20201208', 11872);
INSERT INTO Employe VALUES ('Arslan','Sefer','20150626', 15847);
INSERT INTO Employe VALUES ('Koç','Özgün','20220417', 9872);
INSERT INTO Employe VALUES ('Güçlü','Burcu','20130719',15483);
INSERT INTO Employe VALUES ('Aksu','Seda','20200830', 10598);
INSERT INTO Employe VALUES ('Yaman','Alp','20170214', 12973);
INSERT INTO Employe VALUES ('Yilmaz','Basak','20140724', 13857);
INSERT INTO Employe VALUES ('Keskin','Bilge','20101112', 17982);
INSERT INTO Employe VALUES ('Kürek','Ahmet','20150108', 14981);
INSERT INTO Employe VALUES ('Yilmaz','Basak','20140724', 13857);
INSERT INTO Employe VALUES ('Dumanli','Murat','20211223', 10120);
INSERT INTO Employe VALUES ('Hernandez','Susan','20221026', 9500);
INSERT INTO Employe VALUES ('West','Christopher','20210821', 10320);
INSERT INTO Employe VALUES ('Marius','Beckmann','20180902', 13786);
INSERT INTO Employe VALUES ('Güçlü','Zehra','20170514', 14230);

--INSERT INTO Caissiere
INSERT INTO Caissiere VALUES (1,1);
INSERT INTO Caissiere VALUES (2,2);

--INSERT INTO OuvrierdEntrepot
INSERT INTO OuvrierdEntrepot VALUES (1,3);
INSERT INTO OuvrierdEntrepot VALUES (2,4);
INSERT INTO OuvrierdEntrepot VALUES (3,16);

--INSERT INTO EResponsable
INSERT INTO EResponsable VALUES (401,6);
INSERT INTO EResponsable VALUES (402,7);
INSERT INTO EResponsable VALUES (403,8);
INSERT INTO EResponsable VALUES (404,15);
INSERT INTO EResponsable VALUES (405,10);
INSERT INTO EResponsable VALUES (406,11);
INSERT INTO EResponsable VALUES (407,12);
INSERT INTO EResponsable VALUES(408,13);
INSERT INTO EResponsable VALUES(409,14);

--INSERT INTO Gestionnaire
INSERT INTO Gestionnaire VALUES ('Lojistik Yöneticisi',9);
INSERT INTO Gestionnaire VALUES ('Finans Yöneticisi',5);