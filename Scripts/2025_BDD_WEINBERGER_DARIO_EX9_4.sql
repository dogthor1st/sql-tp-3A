-- Implémente fonctionnalité permettant de calculer automatiquement le retard sur le retour du matériel, si applicable.

UPDATE RetourMateriel rm
SET retard = (
    SELECT rm.date_retour > r.date_fin
    FROM Reservation r
    WHERE r.id_reservation = rm.id_reservation
);



