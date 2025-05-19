-- Sélectionne les utilisateurs qui ont le statut "étudiant"
SELECT *
FROM Utilisateur
WHERE statut = 'étudiant';

-- Sélectionne le matériel avec moins de 2 exemplaires disponibles
SELECT *
FROM Materiel
WHERE quantite_disponible < 2;

-- Sélectionne les réservations en cours à la date actuelle
SELECT *
FROM Reservation
WHERE CURRENT_DATE BETWEEN date_debut AND date_fin;
