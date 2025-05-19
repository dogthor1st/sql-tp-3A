-- Diminue la quantité disponible pour tout le matériel actuellement emprunté,
-- avec une date de fin de réservation dans plus de 2 jours
UPDATE Materiel
SET quantite_disponible = quantite_disponible - 1
WHERE id_materiel IN (
    SELECT r.id_materiel
    FROM Reservation r
    WHERE CURRENT_DATE BETWEEN r.date_debut AND r.date_fin
      AND r.date_fin > CURRENT_DATE + INTERVAL '2 days'
);
