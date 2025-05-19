-- Diminue la quantité disponible du matériel avec l’ID 5 de 1 unité
UPDATE Materiel
SET quantite_disponible = quantite_disponible - 1
WHERE id_materiel = 5;
