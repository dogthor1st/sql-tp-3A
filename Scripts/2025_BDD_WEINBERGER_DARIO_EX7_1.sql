-- Affiche tous les utilisateurs ayant emprunté au moins un équipement
SELECT DISTINCT u.id_utilisateur, u.nom, u.prenom
FROM Utilisateur u
JOIN Reservation r ON u.id_utilisateur = r.id_utilisateur;
