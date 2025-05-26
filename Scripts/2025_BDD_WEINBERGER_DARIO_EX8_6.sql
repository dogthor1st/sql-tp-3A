-- Teste de l'application 
-- Réservations avec différentes périodes pour vérifier que les contraintes de disponibilité sont correctement appliquées.

-- Insére une période valide
INSERT INTO reservation (id_utilisateur, id_materiel, date_debut, date_fin, id_disponibilite)
VALUES (1, 3, '2025-06-03', '2025-06-08', 1);

-- Insére une résa invalide
INSERT INTO reservation (id_utilisateur, id_materiel, date_debut, date_fin, id_disponibilite)
VALUES (2, 3, '2025-06-13', '2025-06-14', NULL);

-- Test de la requête de disponibilité
SELECT
    CASE
        WHEN EXISTS (
            SELECT 1 FROM Disponibilite d
            WHERE d.id_materiel = 3
              AND d.date_debut <= '2025-06-13'
              AND d.date_fin >= '2025-06-14'
        ) THEN 'OK'
        ELSE 'KO'
    END AS disponibilite;


-- Test d'une résa chevauchant en partie une autre
INSERT INTO reservation (id_utilisateur, id_materiel, date_debut, date_fin, id_disponibilite)
VALUES (3, 3, '2025-06-10', '2025-06-16', NULL);
