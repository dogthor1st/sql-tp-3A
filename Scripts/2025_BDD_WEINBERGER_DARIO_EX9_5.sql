-- Implémente fonctionnalité => vérifie si retour est en retard + affiche montant pénalités (cas échéant). 
-- Ajout colonne pour pénalité
ALTER TABLE RetourMateriel
ADD COLUMN IF NOT EXISTS penalite NUMERIC DEFAULT 0;


-- Teste application => effecter retours matériel, certains à l'heure et d'autres en retard
-- => pour vérifier que contraintes correctement appliquées et que pénalités sont calculées de manière appropriée.

-- Exemple : la réservation 1 devait finir le 2025-06-10
INSERT INTO RetourMateriel (id_reservation, date_retour, retard, penalite)
SELECT
    r.id_reservation,
    DATE '2025-06-12',  -- date de retour réelle
    CASE WHEN DATE '2025-06-12' > r.date_fin THEN TRUE ELSE FALSE END,
    CASE 
        WHEN DATE '2025-06-12' > r.date_fin THEN (DATE '2025-06-12' - r.date_fin) * 5 
        ELSE 0 
    END
FROM Reservation r
WHERE r.id_reservation = 1;
