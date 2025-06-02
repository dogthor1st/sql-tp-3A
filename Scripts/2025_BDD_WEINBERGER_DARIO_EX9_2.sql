-- Modif table "Reservation" ajout colonne "date_retour_effectif" (enregistre date matériel rendu)
ALTER TABLE Reservation
ADD COLUMN date_retour_effectif DATE;
