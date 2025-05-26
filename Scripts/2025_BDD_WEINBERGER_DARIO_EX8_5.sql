-- Implémente fonctionnalité => gére les dispo du matériel. 
-- Administrateurs doit => ajouter, modifier et supprimer (périodes de dispo pour chaque matériel.)

-- Ajouter des disponibilités pour le matériel #3
INSERT INTO Disponibilite (id_materiel, date_debut, date_fin) VALUES
(3, '2025-06-01', '2025-06-10'),
(3, '2025-06-15', '2025-06-20');

-- Modifier la disponibilité avec id_disponibilite = 1 (hypothèse)
UPDATE Disponibilite
SET date_debut = '2025-06-02', date_fin = '2025-06-12'
WHERE id_disponibilite = 1;

-- Supprimer la disponibilité avec id_disponibilite = 2 (hypothèse)
DELETE FROM Disponibilite
WHERE id_disponibilite = 2;