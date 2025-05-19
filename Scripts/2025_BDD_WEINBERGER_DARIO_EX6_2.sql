-- Supprime toutes les réservations dont la date de fin est antérieure à aujourd'hui
DELETE FROM Reservation
WHERE date_fin < CURRENT_DATE;
