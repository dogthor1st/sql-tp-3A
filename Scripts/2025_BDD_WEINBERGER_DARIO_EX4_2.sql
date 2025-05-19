-- Compte le nombre d'utilisateurs uniques ayant fait au moins une réservation
SELECT COUNT(DISTINCT id_utilisateur) AS nb_utilisateurs_ayant_reserve
FROM Reservation;
