-- Affiche le nombre d’emprunts pour chaque utilisateur, ordonné par numéro d'étudiant.
SELECT u.id_utilisateur, u.nom, u.prenom, 
       COALESCE(COUNT(r.id_reservation), 0) AS nb_emprunts
FROM Utilisateur u
LEFT JOIN Reservation r ON u.id_utilisateur = r.id_utilisateur
GROUP BY u.id_utilisateur, u.nom, u.prenom
ORDER BY u.id_utilisateur;
