-----this script  can be used with Postgres 
--------------------------------------------------
------Debut de la transaction pour les donnees de base 
----------------------------------------------------------
Begin transaction; 

---implementation table utilisation----------------- X
INSERT INTO Utilisateur VALUES (1); 
INSERT INTO Utilisateur VALUES (2);
INSERT INTO Utilisateur VALUES (3);
INSERT INTO Utilisateur VALUES (4); 
INSERT INTO Utilisateur VALUES (5); 
INSERT INTO Utilisateur VALUES (6);
INSERT INTO Utilisateur VALUES (7); 
INSERT INTO Utilisateur VALUES (8); 
INSERT INTO Utilisateur VALUES (9); 
INSERT INTO Utilisateur VALUES (10); 
INSERT INTO Utilisateur VALUES (11); 
INSERT INTO Utilisateur VALUES (12); 
INSERT INTO Utilisateur VALUES (13); 
INSERT INTO Utilisateur VALUES (14); 
INSERT INTO Utilisateur VALUES (15); 

----implementation table etudiant----------------------- X
INSERT INTO Etudiant
 VALUES (1,22391,'MBOURRA','MAX','P002',106); 
INSERT INTO Etudiant 
VALUES (2,22392,'RICHARD','JULY','P002',106); 
INSERT INTO Etudiant 
VALUES (3,22393,'MARTIN','SEBASTIEN','P002',106); 
INSERT INTO Etudiant 
VALUES (4,22394,'SUN','RUI','P002',106); 
INSERT INTO Etudiant 
VALUES (5,22500,'ERRADI','ISMAIL','P002',106);

------IMPLEMENTATION TABLE  PROF----------------------------- X
INSERT INTO Prof VALUES(6,'POLO','SYLVAIN'); 
INSERT INTO Prof VALUES(7, 'PETIT','MAGALI'); 
INSERT INTO Prof VALUES(8,'MAILLET','AGUSTINE'); 
INSERT INTO Prof VALUES(9,'AURORA', 'ZIDANE'); 
INSERT INTO Prof VALUES(10,'GIRAUD','LILOU'); 

-------IMPLEMENTATION TABLE ADMIN -----------------------------
----ID, NOM, PRENOM , POSTE  X
INSERT INTO Admin VALUES(11,'PAMELA','CELILE','CHARGER RELATION INTERNATIONAL'); 
INSERT INTO Admin VALUES(12,'HUBERT','GERARD','RESPONSABLE COMMINITACION'); 
INSERT INTO Admin VALUES(13,'MARCELINE','ALIZE','SECRETAIRE'); 
INSERT INTO Admin VALUES(14, 'ROCHER','ALEXANDRE','SECRETAIRE'); 
INSERT INTO Admin VALUES(15,'CHIPOLATA', 'LORRAN','DIRECTEUR'); 

-------IMPLEMENTATION TABLE FORMATION -----------------------------
-------ID_f, NOM_SPE,ANNEE,type_f -------------------------x-------
INSERT INTO Formation VALUES(100,'PIEP',1,'ETD'); 
INSERT INTO Formation VALUES(101,'PIEP',2,'ETD'); 

INSERT INTO Formation VALUES(102,'INFO',1,'ETD'); 
INSERT INTO Formation VALUES(103,'MTX',1,'ETD'); 
INSERT INTO Formation VALUES(104,'EES',1,'ETD'); 
INSERT INTO Formation VALUES(105,'PSO',1,'ETD');
 
INSERT INTO Formation VALUES(106,'INFO',2,'ETD'); 
INSERT INTO Formation VALUES(107,'MTX',2,'ETD'); 
INSERT INTO Formation VALUES(108,'EES',2,'ETD');
INSERT INTO Formation VALUES(109,'PSO',2,'ETD');

INSERT INTO Formation VALUES(110,'INFO',3,'ETD');
INSERT INTO Formation VALUES(111,'MTX',3,'ETD');
INSERT INTO Formation VALUES(112,'EES',3,'ETD');
INSERT INTO Formation VALUES(113,'PSO',3,'ETD');

INSERT INTO Formation VALUES(114,'INFO',1,'APP');
INSERT INTO Formation VALUES(115,'MTX',1,'APP');
INSERT INTO Formation VALUES(116,'EES',1,'APP');
INSERT INTO Formation VALUES(117,'PSO',1,'APP');
      
INSERT INTO Formation VALUES(118,'INFO',2,'APP');
INSERT INTO Formation VALUES(119,'MTX',2,'APP');
INSERT INTO Formation VALUES(120,'EES',2,'APP');
INSERT INTO Formation VALUES(121,'PSO',2,'APP');

INSERT INTO Formation VALUES(122,'INFO',3,'APP');
INSERT INTO Formation VALUES(123,'MTX',3,'APP');
INSERT INTO Formation VALUES(124,'EES',3,'APP');
INSERT INTO Formation VALUES(125,'PSO',3,'APP');

INSERT INTO Formation VALUES(126,'INFO',1,'FC');
INSERT INTO Formation VALUES(127,'MTX',1,'FC');
INSERT INTO Formation VALUES(128,'EES',1,'FC');
INSERT INTO Formation VALUES(129,'PSO',1,'FC');

INSERT INTO Formation VALUES(130,'INFO',2,'FC');
INSERT INTO Formation VALUES(131,'MTX',2,'FC');
INSERT INTO Formation VALUES(132,'EES',2,'FC');
INSERT INTO Formation VALUES(133,'PSO',2,'FC');

INSERT INTO Formation VALUES(134,'INFO',3,'FC');
INSERT INTO Formation VALUES(135,'MTX',3,'FC');
INSERT INTO Formation VALUES(136,'EES',3,'FC');
INSERT INTO Formation VALUES(137,'PSO',3,'FC');

INSERT INTO Formation VALUES(138,'PEIPC',1,'ETD'); 
INSERT INTO Formation VALUES(139,'CI',1,'ETD');
INSERT INTO Formation VALUES(140,'CI',1,'APP');  
INSERT INTO Formation VALUES(141,'CI',1,'FC');

INSERT INTO Formation VALUES(142,'CI',2,'ETD');
INSERT INTO Formation VALUES(143,'CI',2,'APP');  
INSERT INTO Formation VALUES(144,'CI',2,'FC');

INSERT INTO Formation VALUES(145,'CI',3,'ETD');
INSERT INTO Formation VALUES(146,'CI',3,'APP');  
INSERT INTO Formation VALUES(147,'CI',3,'FC');

------FIN FORMATION ---------------------------------------
------ TABLE COURS -------------------------------------------
------NON , CODE_ID(VARCHAR), COEF INTEGER -------------------
INSERT INTO Cours VALUES('ANGLAIS','D1C1-1',3); 
INSERT INTO Cours VALUES('PROJET PERSONNEL PROFESSIONNEL 1','D1C1-2',1);
INSERT INTO Cours VALUES('MANAGMENT EQUIPE ','D1C2-1',2);
INSERT INTO Cours VALUES('DROIT SOCIAL & CONTRATS','D1C2-2',3);
INSERT INTO Cours VALUES('ECO CONCEPTION','D1C2-3',2);

-------TABLE SALLE --------------------------------------------
-------NOM , NUM BAT ----------------------------------------
INSERT INTO Salle  VALUES('A100','620'); 
INSERT INTO Salle  VALUES('A101','620'); 
INSERT INTO Salle  VALUES('B014','620');
INSERT INTO Salle  VALUES('GRAND AMPHI','640');
INSERT INTO Salle  VALUES('PETIT AMPHI','640');
INSERT INTO Salle  VALUES('A105','620'); 

-----------TABLE PROMO ----------------------------------------
------ID_PROMO,NOM_PARRIN, ANNE_DEBUT, ANNE_FIN ----------------
INSERT INTO Promo VALUES('P001','AUCUN',2015,2017); 
INSERT INTO Promo VALUES('P002','KEYSIGHT',2015,2018);
INSERT INTO Promo VALUES('P003','METROPOLIS',2013,2016);
INSERT INTO Promo VALUES('P004','THALES',2016,2019);

---------TABLE GROUPE ------------------------------
------ID_F, ID_G, ID_C -------------------------------- 
INSERT INTO Groupe VALUES(142,'G1','D1C1-1','P002');  
INSERT INTO Groupe VALUES(142,'G2','D1C1-1','P002');
INSERT INTO Groupe VALUES(142,'G3','D1C1-1','P002');
INSERT INTO Groupe VALUES(142,'G4','D1C1-1','P002');   


-------- TABLE MAIL ----------------------------------------
-----ID_MAIL, ID_DEST, ID_EXP, MESSAGE ---------------------

INSERT INTO Mail VALUES (1000, 8, 1,'BONJOUR MONSIEUR POUR  VOTRE REPONSE '); 
INSERT INTO Mail VALUES (1001,2, 1,'VOILA LES DOCUMENTS DEMANDE. PASSE UNE BONSOIRE CORDIALEMENT  ETUDIANT X '); 
INSERT INTO Mail VALUES (1002,13,2,'BONHJOUR SVS<DCSXN<ZDX WX DS SD'); 


-----RELATION PROFESSEUR FORMATIONS---------------------------
-----TABLE RESPO_FORMATION------------------------------------
-----ID_PROF, ID_FORMA ---------------------------------------

INSERT INTO Responsable_formation VALUES(6,100); 
INSERT INTO Responsable_formation VALUES(7,129);
INSERT INTO Responsable_formation VALUES(10,110);

---RELATION ADMIN FORMATION ---------------------------------
---TABLE  RESPONSABLE ADMIN --------------------------------
---ID_adm, ID_F -------------------------------------------
 
INSERT INTO Respo_adminf VALUES (12,100); 
INSERT INTO Respo_adminf VALUES (13,129);
INSERT INTO Respo_adminf VALUES (14,110);  
 
---RELATION RESPO PROMO  TABLE RESPO_PROMO --------------------
---ID_PROF , ID_PROMO ----------------------------------------

INSERT INTO Respo_promo VALUES(6,'P002'); 
INSERT INTO Respo_promo VALUES(10,'P001');

---RELATION COURS FORMATION  TABLE COURSFORMATION  ------------
---ID_COUR, ID_F ---------------------------------------------

INSERT INTO Coursformation VALUES('D1C1-1', 100); 
INSERT INTO Coursformation VALUES('D1C2-3', 110);
INSERT INTO Coursformation VALUES('D1C1-2', 130);
 
------RELATION RESERVATION SALLE ----------------------
-----TABLE  RESERVATION SALLE -----------------------
-----ID_COURS , NOM_SALLE, NUM_BAT, HEURE_D, HEURE_F ,JOUR,ID_F,ID_GROUPE -------

INSERT INTO Reservation_salle VALUES('D1C1-1','A100','620','08:20:00','10:20:00','2017-02-14',142,'G1');
INSERT INTO Reservation_salle VALUES('D1C1-1','A105','620','08:20:00','10:20:00','2017-02-14',142,'G2'); 
INSERT INTO Reservation_salle VALUES('D1C1-1','A101','620','08:20:00','10:20:00','2017-02-14',142,'G3');

------RELATION  PARTICIPANT AU COURS-----------------------------
---------TALE PARTICIPANT -------------------------------------
------ID_Cours, ID_F, ID_G, ID_userE,ID_promo -----------------------------

INSERT INTO Participant_CG VALUES ('D1C1-1',142,'G1',1,'P002'); 
INSERT INTO Participant_CG VALUES ('D1C1-1',142,'G1',2,'P002'); 
INSERT INTO Participant_CG VALUES ('D1C1-1',142,'G2',3,'P002'); 
INSERT INTO Participant_CG VALUES ('D1C1-1',142,'G2',4,'P002'); 
 

-----RELATION ETUDIANT ET PROMO, ETUDIANT COMPOSANT LA PROMO------
----ID_COURS , ID_PROMO -----------------------------------------

INSERT INTO Compo_promo VALUES (1,'P002'); 
INSERT INTO Compo_promo VALUES (2,'P002'); 
INSERT INTO Compo_promo VALUES (3,'P002');
INSERT INTO Compo_promo VALUES (4,'P002');
 
----RELATION  PROF ET LES COURS QU'IL DISPANSE -----------------
--- ID_COURS , ID_PROF , ANNEE OÙ LE COUR ---------------------

INSERT INTO Prof_cours VALUES ('D1C1-1',7,2015); 
INSERT INTO Prof_cours VALUES ('D1C1-1',8,2015); 
INSERT INTO Prof_cours VALUES ('D1C1-1',9,2015); 
 
---RELATION ENTRE NOTE ET ETUDIANT -----------------------------
--ID_USER(ETUDIANT) , ID_COURS, NOTE ---------------------------

INSERT INTO Note_etudiant VALUES (1, 'D1C1-1', 8); 
INSERT INTO Note_etudiant VALUES (2, 'D1C1-1',12); 
INSERT INTO Note_etudiant VALUES (3, 'D1C1-1',11); 
INSERT INTO Note_etudiant VALUES (4, 'D1C1-1',15); 

commit; 
end transaction; 





  


 
  


