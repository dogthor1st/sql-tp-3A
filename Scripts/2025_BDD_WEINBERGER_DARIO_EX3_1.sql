-- Affiche le nom, prénom et l'ID des utilisateurs ayant fait au moins une réservation
SELECT u.id_utilisateur, u.nom, u.prenom, r.id_reservation, r.date_debut, r.date_fin
FROM Utilisateur u
JOIN Reservation r ON u.id_utilisateur = r.id_utilisateur;
