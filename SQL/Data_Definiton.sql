BEGIN TRAN;

CREATE TABLE Adresse(
    AdresseID int  IDENTITY(1,1) PRIMARY KEY,
    CodePostal int,
	AdresseLine NVARCHAR(150),
	Ville NVARCHAR(20),
);

CREATE TABLE Libraire(
    LibraireID int  IDENTITY(1,1) PRIMARY KEY,
    Nom NVARCHAR(50),
    AdresseID int,
    NumeroTel NVARCHAR(30),
);

ALTER TABLE Libraire
ADD CONSTRAINT FK_Librarie_Adresse
FOREIGN KEY (AdresseID) REFERENCES Adresse(AdresseID);

CREATE TABLE MaisonEdition(
    MdeID int  IDENTITY(1,1) PRIMARY KEY,
    Nom NVARCHAR(50),
    AdresseID int,
    Email NVARCHAR(50),
    NumeroTel  NVARCHAR(30),
);

ALTER TABLE MaisonEdition
ADD CONSTRAINT FK_MaisonEdition_Adresse
FOREIGN KEY (AdresseID) REFERENCES Adresse(AdresseID);


CREATE TABLE Auteur(
    AuteurID int IDENTITY(1,1) PRIMARY KEY,
    Nom NVARCHAR(50),
	Prenom NVARCHAR(50),
	Sexe NVARCHAR(10)
);

CREATE TABLE Genre(
GenreID int identity(1,1) PRIMARY KEY,
NumeroEtagere int,
GenreName nvarchar(50)
);

CREATE TABLE Editeur(
    EditeurID int  IDENTITY(1,1) PRIMARY KEY,
    Nom NVARCHAR(50),
    Prenom NVARCHAR(50),
    Email NVARCHAR(50),
    NumeroTel  NVARCHAR(30),
    MdeID int,
);

ALTER TABLE Editeur
ADD CONSTRAINT FK_Editeur_MaisonEdition
FOREIGN KEY (MdeID) REFERENCES MaisonEdition(MdeID);

CREATE TABLE Livre(
    LivreID int IDENTITY(1,1) PRIMARY KEY,
    ISBN NVARCHAR(20),
    Titre nvarchar(100), 
	EmissionDate DATE,
	NumeroPage int,
    Langue NVARCHAR(20),
	LanguesTraduites NVARCHAR(100),
    QuantiteStock int,
    AuteurID int,
    MdeID int,
    GenreID int,
    EditeurID int,
);

ALTER TABLE Livre
ADD CONSTRAINT FK_Livre_Genre
FOREIGN KEY (GenreID) REFERENCES Genre(GenreID);

ALTER TABLE Livre
ADD CONSTRAINT FK_Livre_MaisonEdition
FOREIGN KEY (MdeID) REFERENCES MaisonEdition(MdeID);

ALTER TABLE Livre
ADD CONSTRAINT FK_Livre_Auteur
FOREIGN KEY (AuteurID) REFERENCES Auteur(AuteurID);


ALTER TABLE Livre
ADD CONSTRAINT FK_Livre_Editeur
FOREIGN KEY (EditeurID) REFERENCES Editeur(EditeurID);


CREATE TABLE Edition(
    EditionID int IDENTITY(1,1) PRIMARY KEY,
    EditionDate DATE,
    LivreID int,
);

ALTER TABLE Edition
ADD CONSTRAINT FK_Edition_Livre
FOREIGN KEY (LivreID) REFERENCES Livre(LivreID);


CREATE TABLE Client(
    ClientID int IDENTITY(1,1) PRIMARY KEY,
    Nom NVARCHAR(50),
	Prenom NVARCHAR(50),
	Sexe NVARCHAR(10),
	Profession NVARCHAR(10),
	Age int,
	Nationalite NVARCHAR(20)
);


CREATE TABLE Acheter(
    TransactionNo int  IDENTITY(1,1) PRIMARY KEY,
    Prix int,
    LibraireID int,
    ClientID int,
    LivreID int,
);

ALTER TABLE Acheter
ADD CONSTRAINT FK_Acheter_Libraire
FOREIGN KEY (LibraireID) REFERENCES Libraire(LibraireID);

ALTER TABLE Acheter
ADD CONSTRAINT FK_Acheter_Client
FOREIGN KEY (ClientID) REFERENCES Client(ClientID);

ALTER TABLE Acheter
ADD CONSTRAINT FK_Acheter_Livre
FOREIGN KEY (LivreID) REFERENCES Livre(LivreID);

CREATE TABLE Employe(
    EmployeID int  IDENTITY(1,1) PRIMARY KEY,
    Nom  NVARCHAR(50),
    Prenom  NVARCHAR(50),
    DateDebut DATE,
	Salarie int
);

CREATE TABLE Caissiere(
    CaissiereID int  IDENTITY(1,1) PRIMARY KEY,
	NumeroCaisse int,
    EmployeID int,
);

ALTER TABLE Caissiere
ADD CONSTRAINT FK_Caissiere_Employe
FOREIGN KEY (EmployeID) REFERENCES Employe(EmployeID);


CREATE TABLE OuvrierdEntrepot(
    OuvrierdEntrepotID int  IDENTITY(1,1) PRIMARY KEY,
	NumeroEntrepot int,
    EmployeID int,
);

ALTER TABLE OuvrierdEntrepot
ADD CONSTRAINT FK_OuvrierdEntrepot_Employe
FOREIGN KEY (EmployeID) REFERENCES Employe(EmployeID);


CREATE TABLE EResponsable(
    EResponsableID int  IDENTITY(1,1) PRIMARY KEY,
	NumeroEtagere int,
    EmployeID int,
);

ALTER TABLE EResponsable
ADD CONSTRAINT FK_EResponsable_Employe
FOREIGN KEY (EmployeID) REFERENCES Employe(EmployeID);


CREATE TABLE Gestionnaire(
    GestionnaireID int  IDENTITY(1,1) PRIMARY KEY,
	Titre NVARCHAR(50),
    EmployeID int,
);

ALTER TABLE Gestionnaire
ADD CONSTRAINT FK_Gestionnaire_Employe
FOREIGN KEY (EmployeID) REFERENCES Employe(EmployeID);

COMMIT TRAN;