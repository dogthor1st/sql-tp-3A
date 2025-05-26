-- Modif table "reservation", ajour colonne "id_disponibilite" (clé étrangère référençant la table "disponibilite"). 
ALTER TABLE Reservation
ADD COLUMN id_disponibilite INTEGER;
ALTER TABLE Reservation
ADD CONSTRAINT fk_disponibilite_reservation
FOREIGN KEY (id_disponibilite)
REFERENCES Disponibilite(id_disponibilite)
ON DELETE SET NULL;
