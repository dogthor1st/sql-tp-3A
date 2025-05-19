-- Affiche les informations sur le matériel réservé par l'utilisateur avec l'ID 3
SELECT m.id_materiel, m.nom, m.description, r.date_debut, r.date_fin
FROM Materiel m
JOIN Reservation r ON m.id_materiel = r.id_materiel
WHERE r.id_utilisateur = 3;
