-- Compte le nombre total de réservations entre deux dates
SELECT COUNT(*) AS total_reservations
FROM Reservation
WHERE date_debut >= '2025-06-01' AND date_fin <= '2025-06-30';
