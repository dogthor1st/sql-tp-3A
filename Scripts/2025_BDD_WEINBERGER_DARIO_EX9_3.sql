-- Modif contraintes SQL existantes => prendre compte retours matériel et retards éventuels lors mise à jour des réservations.
-- Ajout colonne date retour
ALTER TABLE Reservation
ADD COLUMN IF NOT EXISTS date_retour_effectif DATE;


-- Création table Retour du materiel
CREATE TABLE IF NOT EXISTS RetourMateriel (
    id_retour SERIAL PRIMARY KEY,
    id_reservation INT REFERENCES Reservation(id_reservation),
    date_retour DATE NOT NULL,
    retard BOOLEAN
);


-- Exemple : retour pour réservation 1
INSERT INTO RetourMateriel (id_reservation, date_retour, retard)
VALUES (
    1,
    '2025-06-10',
    (SELECT '2025-06-10' > date_fin FROM Reservation WHERE id_reservation = 1)
);

-- Met à jour date effective de retour dans Reservation
UPDATE Reservation
SET date_retour_effectif = '2025-06-10'
WHERE id_reservation = 1;
