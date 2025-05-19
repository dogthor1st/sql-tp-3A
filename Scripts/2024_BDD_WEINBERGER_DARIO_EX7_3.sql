-- Affiche les équipements ayant été emprunté plus de 3 fois
SELECT m.id_materiel, m.nom, COUNT(r.id_reservation) AS nb_emprunts
FROM Materiel m
JOIN Reservation r ON m.id_materiel = r.id_materiel
GROUP BY m.id_materiel, m.nom
HAVING COUNT(r.id_reservation) > 3;
