-- Affiche les équipements n’ayant jamais été empruntés
SELECT m.id_materiel, m.nom, m.description
FROM Materiel m
LEFT JOIN Reservation r ON m.id_materiel = r.id_materiel
WHERE r.id_reservation IS NULL;
