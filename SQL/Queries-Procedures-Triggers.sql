-- Her yayıncı tarafından yayınlanan kitapların ortalama sayfa sayısını yayıncıya göre gruplandırarak gösterin:
SELECT MaisonEdition.Nom, AVG(Livre.NumeroPage) as AveragePages
FROM Livre
JOIN MaisonEdition ON Livre.MdeID = MaisonEdition.MdeID
GROUP BY MaisonEdition.Nom;

-- Satılan miktara göre en popüler 5 kitap türünü seçin:
SELECT TOP 5 GenreName, SUM(QuantiteStock) as 'Total Stock'
FROM Livre
INNER JOIN Genre ON Livre.GenreID = Genre.GenreID
GROUP BY GenreName
ORDER BY SUM(QuantiteStock) DESC

-- 'İ' harfi ile başlayan bir şehirde bulunan bir yayıncı tarafından yayınlanan bir kitabı satın alan tüm müşterilerin adlarını seçin:
SELECT Nom, Prenom FROM Client
WHERE EXISTS (SELECT 1 FROM Livre
              INNER JOIN Editeur ON Livre.EditeurID = Editeur.EditeurID
              INNER JOIN MaisonEdition ON Editeur.MdeID = MaisonEdition.MdeID
              INNER JOIN Adresse ON MaisonEdition.AdresseID = Adresse.AdresseID
              WHERE Adresse.Ville LIKE 'İ%')


-- Kadın müşteriler tarafından en çok tercih edilen kitap türünü göster.
SELECT GenreName, COUNT(Livre.GenreID) as Count
FROM Livre
JOIN Acheter ON Livre.LivreID = Acheter.LivreID
JOIN Client ON Acheter.ClientID = Client.ClientID
JOIN Genre ON Livre.GenreID = Genre.GenreID
WHERE Client.Sexe = 'Kadin'
GROUP BY GenreName
ORDER BY Count DESC

-- Hem "Bilim Kurgu" hem de "Fantastik" türlerinde kitap yazmış tüm yazarların adlarını getir.
SELECT Nom, Prenom
FROM Auteur
JOIN Livre ON Auteur.AuteurID = Livre.AuteurID
JOIN Genre ON Livre.GenreID = Genre.GenreID
WHERE GenreName = 'Kurgu'
UNION
SELECT Nom, Prenom
FROM Auteur
JOIN Livre ON Auteur.AuteurID = Livre.AuteurID
JOIN Genre ON Livre.GenreID = Genre.GenreID
WHERE GenreName = 'Korku'

--Verilen İsim, Soyisim, Cinsiyet, Meslek, Yaş ve Millet bilgilerini 'Client' tablosuna ekle.
CREATE PROCEDURE InsertClient (@Nom NVARCHAR(50), @Prenom NVARCHAR(50), @Sexe NVARCHAR(10), @Profession NVARCHAR(10), @Age INT, @Nationalite NVARCHAR(20))
AS
BEGIN
    INSERT INTO Client (Nom, Prenom, Sexe, Profession, Age, Nationalite)
    VALUES (@Nom, @Prenom, @Sexe, @Profession, @Age, @Nationalite)
END

-- Örnek
EXEC InsertClient 'John', 'Doe', 'M', 'Developer', 30, 'US'


--'Editeur' tablosundaki bilgileri güncelle.
CREATE PROCEDURE UpdateEditeur (@EditeurID INT, @Nom NVARCHAR(50), @Prenom NVARCHAR(50), @Email NVARCHAR(50), @NumeroTel NVARCHAR(30), @MdeID INT)
AS
BEGIN
    UPDATE Editeur
    SET Nom = @Nom, Prenom = @Prenom, Email = @Email, NumeroTel = @NumeroTel, MdeID = @MdeID
    WHERE EditeurID = @EditeurID
END

-- Örnek
EXEC UpdateEditeur 1, 'Jane', 'Smith', 'jane.smith@example.com', '123-456-7890', 1


-- A stored procedure that deletes all books from the Livre table that were published before a certain date:
--Girilen tarihten önce basılmış kitapları 'Livre' tablosunda siler.
CREATE PROCEDURE deleteBooksBeforeDate (@date DATE)
AS
BEGIN
DELETE FROM Livre
WHERE EmissionDate < @date
END

-- Örnek
EXEC deleteBooksBeforeDate '2022-01-01'

-- Bu görünüm, Livre, Auteur, MaisonEdition, Genre, Editeur, Edition ve Adresse tablolarını birleştiren 
--ve belirli bir ville için bu tablolardan tüm sütunları döndüren bir sorguyu değiştirmek için kullanılabilir.

CREATE VIEW vw_BookDetails
AS
SELECT Livre.ISBN, Livre.Titre, Livre.EmissionDate, Livre.NumeroPage, Livre.Langue, Livre.QuantiteStock, Auteur.Nom as AuteurNom, Auteur.Prenom as AuteurPrenom,
MaisonEdition.Nom as MdeNom, Genre.GenreName, Editeur.Nom as EditeurNom, Editeur.Prenom as EditeurPrenom,
Edition.EditionDate, Adresse.Ville, Adresse.CodePostal, Adresse.AdresseLine
FROM Livre
INNER JOIN Auteur ON Livre.AuteurID = Auteur.AuteurID
INNER JOIN MaisonEdition ON Livre.MdeID = MaisonEdition.MdeID
INNER JOIN Genre ON Livre.GenreID = Genre.GenreID
INNER JOIN Editeur ON Livre.EditeurID = Editeur.EditeurID
INNER JOIN Edition ON Livre.LivreID = Edition.LivreID
INNER JOIN Adresse ON MaisonEdition.AdresseID = Adresse.AdresseID

-- Örnek
SELECT * FROM vw_BookDetails
WHERE Ville = 'İstanbul'

-- "Livre" tablosunun "Titre" sütununda Non-Clustered Index oluşturalım.
CREATE NONCLUSTERED INDEX IX_Livre_Titre ON Livre(Titre);

-- Bir kitap satıldığında stoğu güncelleyen bir tetikleyici:
CREATE TRIGGER tr_update_stock
ON Livre
AFTER UPDATE
AS 
BEGIN 
    IF UPDATE (QuantiteStock)
    BEGIN 
        IF EXISTS (SELECT 1 FROM inserted i WHERE i.QuantiteStock < 0)
        BEGIN 
            RAISERROR('Stock cannot be negative',16,1)
            ROLLBACK TRAN
        END
    END
END