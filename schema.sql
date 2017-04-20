--#création de la table  Utilisateur, gardant l'ensemble des ID utilisateur
CREATE TABLE Utilisateur(ID INTEGER,PRIMEY KEY(ID)); 

--#Creation table Professor 
CREATE TABLE Prof(
ID_user INTEGER NOT NULL, 
nom VARCHAR(50), 
prenom VARCHAR(50), 
PRIMARY KEY(ID_user),
CONSTRAINT fkp FOREIGN KEY (ID_user)
REFERENCES utilisateur (ID)); 

--#Création table Formation 
CREATE TABLE formation(
Id_f INTEGER, 
nom_spe ENUM('INFO','PSO','MTX','EES','PEIP'), 
anne_formation INTEGER, 
typef ENUM ('FC','ETD','APP'), 
PRIMARY KEY (Id_f)); 

--#Création table Cours
CREATE TABLE cours(
nom VARCHAR(50),
code_Id VARCHAR(50), 
coef INTEGER, 
PRIMARY KEY (code_Id)); 

--#Création table admin 
CREATE TABLE admin(
ID_user INTEGER, 
nom VARCHAR(50), 
prenom VARCHAR(50), 
poste VARCHAR(50), 
PRIMARY KEY (ID_user), 
CONSTRAINT fku FOREIGN (ID_user)
REFERENCES utilisateur (ID)); 

--#Créaion table salle 
CREATE TABLE salle
nom VARCHAR(50), 
numbat VARCHAR(50),
PRIMARY KEY (nom,numbat)); 

--#Création table promo 
CREATE TABLE promo(
Id_promo INTEGER,
nom_parrain VARCHAR(100),
anneeD YEAR, 
anneeF YEAR, 
PRIMARY KEY (Id_promo)); 
-----------------------------------------------------------------
----------------------------------------------------------------
--#Création  table relationnel 
--#Création table etudiant 
CREATE TABLE etudiant(
ID_user INTEGER, 
num_etudiant INTEGER, 
nom VARCHAR(50), 
prenom VARCHAR(50), 
id_promo INTEGER,
id_formation INTEGER, 
PRIMARY KEY (num_etudiant), 
CONSTRAINT fkeu FOREIGN KEY (ID_user)
REFERENCES utilisateur (ID), 

CONSTRAINT fkef FOREIGN KEY (id_formation)
REFERENCES formation (Id_f), 

CONSTRAINT fkep FOREIGN KEY (id_promo)
REFERENCES promo (Id_promo)); 

--#Création relation professor et formation 
CREATE TABLE responsable_formation(
ID_prof INTEGER, 
ID_f INTEGER, 
PRIMARY KEY (ID_prof), #LA CLE  EST INCOMPLETE

CONSTAINT fkpu FOREIGN KEY (ID_prof)
REFERENCES prof (ID_user), 

CONSTRAINT fkrf FOREIGN KEY (ID_f)
REFERENCES formation (Id_f)); 

--#Création respo_adminf 
CREATE TABLE respo_adminf(
ID_adm INTEGER, 
ID_f INTEGER, 
PRIMARY KEY (ID_adm), 
CONSTRAINT fkpa FOREIGN KEY (ID_adm)
REFERENCES admin (ID_user), 

CONSTRAINT fkrf FOREIGN KEY (ID_f)
REFERENCES formation (Id_f));

--#Crétion relation respo promo 
CREATE TABLE respo_promo(
ID_prof INTEGER, 
ID_promo INTEGER, 
PRIMARY KEY (ID_prof), 

CONSTRAINT fkrpp FOREIGN KEY (ID_prof)
REFERENCES prof (ID_user), 

CONSTRAINT fkrpr FOREIGN KEY (ID_promo)
REFERENCES promo (Id_promo));

--#création reservation salle 
CREATE TABLE reservation_salle(
id_cours VARCHAR(100), 
nom_salle VARCHAR(100), 
num_bat INTEGER, 
heurD TIME, 
heurF TIME, 
jour  DATE, 
PRIMARY KEY (id_cours, nom_salle, num_bat,heurD,jour), 
CONSTRAINT fkc FOREIGN KEY (id_cours)
REFRENCES cours (code_Id), 
CONSTRAINT fks FOREIGN KEY (nom_salle,num_bat)
REFERENCES salle (nom, numbat)); 

---#Création relation cours formation 
CREATE TABLE coursformation (
ID_cour VARCHAR(100), 
ID_f INTEGER,
PRIMARY KEY (ID_cour, ID_f), 
CONSTRAINT fkcfc FOREIGN KEY (ID_cour)
REFERENCES cours (code_Id), 
CONSTRAINT fkcff FOREIGN KEY (ID_f)
REFERENCES formation (Id_f));

 



