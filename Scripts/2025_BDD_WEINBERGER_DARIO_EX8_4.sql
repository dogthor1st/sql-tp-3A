-- Implémente fonctionnalité => vérification dispo d'un matériel (période donnée) avant permettre réservation. 
-- Si matériel non dispo, affichez un message d'erreur approprié. 
SELECT
    CASE
        WHEN EXISTS (
            SELECT 1 FROM Disponibilite d
            WHERE d.id_materiel = 3
              AND d.date_debut <= '2025-06-07'
              AND d.date_fin >= '2025-06-01'
        ) THEN 'OK'
        ELSE 'KO'
    END AS disponibilite;