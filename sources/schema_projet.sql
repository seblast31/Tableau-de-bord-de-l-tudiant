

CREATE TABLE Utilisateur(ID INTEGER NOT NULL,PRIMARY KEY(ID)); 


CREATE TABLE Prof(
ID_user INTEGER NOT NULL, 
nom VARCHAR(50), 
prenom VARCHAR(50), 
PRIMARY KEY(ID_user),
CONSTRAINT fkp FOREIGN KEY (ID_user)
REFERENCES utilisateur (ID)); 


CREATE TABLE Formation(
Id_f INTEGER, 
nom_spe VARCHAR(50), 
anne_formation INTEGER, 
typef VARCHAR(50), 
PRIMARY KEY (Id_f));   


CREATE TABLE Cours( 
nom VARCHAR(50),
code_Id VARCHAR(50), 
coef INTEGER, 
PRIMARY KEY (code_Id)); 

 
CREATE TABLE Admin(
ID_user INTEGER, 
nom VARCHAR(50), 
prenom VARCHAR(50), 
poste VARCHAR(50), 
PRIMARY KEY (ID_user), 

CONSTRAINT fku FOREIGN  KEY (ID_user)
REFERENCES utilisateur (ID)); 


CREATE TABLE Salle(
nom VARCHAR(50), 
numbat VARCHAR(50),
PRIMARY KEY (nom,numbat)); 


CREATE TABLE Promo(
Id_promo VARCHAR(100),
nom_parrain VARCHAR(100),
anneeD INTEGER, 
anneeF INTEGER,
CHECK (anneeD > 1999 AND anneeD < 3000),
CHECK (anneeF > 1999 AND anneeF < 3000),   
PRIMARY KEY (Id_promo)); 

CREATE TABLE Groupe (
ID_F INTEGER, 
ID_GROUPE VARCHAR(50), 
ID_cours  VARCHAR(50),
ID_promo VARCHAR(50), 
PRIMARY KEY (ID_F,ID_GROUPE,ID_cours,ID_promo), 

CONSTRAINT fkgf FOREIGN KEY (ID_F)
REFERENCES Formation (Id_f), 

CONSTRAINT fkgc FOREIGN KEY (ID_cours)
REFERENCES Cours (code_Id), 
CONSTRAINT fkgp FOREIGN KEY (Id_promo)
REFERENCES Promo (Id_promo)); 


CREATE TABLE Mail(
ID_mail INTEGER, 
ID_dest INTEGER, 
ID_exp  INTEGER, 
message VARCHAR(500), 
PRIMARY KEY( ID_mail)); 


CREATE TABLE Etudiant(
ID_user INTEGER, 
num_etudiant INTEGER, 
nom VARCHAR(50), 
prenom VARCHAR(50), 
id_promo VARCHAR(50),
id_formation INTEGER, 
PRIMARY KEY (ID_user), 
CONSTRAINT fkeu FOREIGN KEY (ID_user)
REFERENCES Utilisateur (ID)); 

 
CREATE TABLE responsable_formation(
ID_prof INTEGER, 
ID_f INTEGER, 
PRIMARY KEY (ID_prof,ID_f),

CONSTRAINT fkpu FOREIGN KEY (ID_prof)
REFERENCES prof (ID_user), 

CONSTRAINT fkrf FOREIGN KEY (ID_f)
REFERENCES formation (Id_f)); 


CREATE TABLE respo_adminf(
ID_adm INTEGER, 
ID_f INTEGER, 
PRIMARY KEY (ID_adm,ID_f), 
CONSTRAINT fkpa FOREIGN KEY (ID_adm)
REFERENCES admin (ID_user), 

CONSTRAINT fkrf FOREIGN KEY (ID_f)
REFERENCES Formation (Id_f));

 
CREATE TABLE respo_promo(
ID_prof INTEGER, 
ID_promo VARCHAR(10), 
PRIMARY KEY (ID_prof,ID_promo), 

CONSTRAINT fkrpp FOREIGN KEY (ID_prof)
REFERENCES prof (ID_user), 

CONSTRAINT fkrpr FOREIGN KEY (ID_promo)
REFERENCES Promo (Id_promo));


CREATE TABLE reservation_salle(
id_cours VARCHAR(100), 
nom_salle VARCHAR(100), 
num_bat VARCHAR(50), 
heurD TIME, 
heurF TIME, 
jour  DATE, 
ID_F INTEGER, 
ID_GROUPE VARCHAR(50),
PRIMARY KEY (id_cours, nom_salle, num_bat,heurD,jour), 

CONSTRAINT fkc FOREIGN KEY (id_cours)
REFERENCES cours (code_Id), 

CONSTRAINT fks FOREIGN KEY (nom_salle,num_bat)
REFERENCES Salle (nom, numbat)); 

 
CREATE TABLE coursformation (
ID_cour VARCHAR(100), 
ID_f INTEGER,
PRIMARY KEY (ID_cour, ID_f), 
CONSTRAINT fkcfc FOREIGN KEY (ID_cour)
REFERENCES cours (code_Id), 

CONSTRAINT fkcff FOREIGN KEY (ID_f)
REFERENCES formation (Id_f));


CREATE TABLE Participant_CG( 
ID_Cours VARCHAR(50),
ID_F INTEGER, 
ID_G VARCHAR(50), 
ID_userE INTEGER, 
ID_promo VARCHAR(10), 
PRIMARY KEY (ID_Cours,ID_F,ID_G,ID_userE,ID_promo),

CONSTRAINT fkpc FOREIGN KEY(ID_F,ID_G,ID_Cours,ID_promo)
REFERENCES Groupe (ID_F,ID_GROUPE, ID_cours, ID_promo), 

CONSTRAINT fkpUE FOREIGN KEY (ID_userE)
REFERENCES Etudiant (ID_user)); 


CREATE TABLE Compo_promo(
ID_userE INTEGER, 
ID_promo VARCHAR(10), 
PRIMARY KEY (ID_userE,ID_promo), 
CONSTRAINT fkcp FOREIGN KEY(ID_userE)
REFERENCES Etudiant (ID_user), 
CONSTRAINT fkcpp FOREIGN KEY (ID_promo)
REFERENCES Promo (Id_promo)); 

 

CREATE TABLE Prof_cours(
ID_cours VARCHAR(50), 
ID_Prof  INTEGER, 
Annee INTEGER,
CHECK ( Annee > 1999 AND Annee < 3000),
PRIMARY KEY (ID_cours,ID_Prof, Annee), 

CONSTRAINT fkpcc FOREIGN KEY (ID_cours)
REFERENCES Cours (code_Id), 

CONSTRAINT fkpcp FOREIGN KEY (ID_Prof)
REFERENCES Prof (ID_user)); 

 
CREATE TABLE Note_etudiant(
ID_user INTEGER, 
ID_cours VARCHAR(50), 
Note INTEGER, 
PRIMARY KEY (ID_user,ID_cours,Note), 

CONSTRAINT fknee FOREIGN KEY(ID_user)
REFERENCES Etudiant (ID_user), 

CONSTRAINT fknec FOREIGN KEY (ID_cours)
REFERENCES Cours (code_Id));  
 
