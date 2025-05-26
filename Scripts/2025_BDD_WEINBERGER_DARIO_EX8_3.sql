-- Modifie les contraintes SQL existantes => prend compte contraintes de dispo lors création et update des réservations. 
CREATE OR REPLACE FUNCTION verifier_disponibilite()
RETURNS TRIGGER AS $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM Disponibilite d
    WHERE d.id_disponibilite = NEW.id_disponibilite
      AND NEW.date_debut >= d.date_debut
      AND NEW.date_fin <= d.date_fin
  ) THEN
    RAISE EXCEPTION 'Réservation hors de la disponibilité.';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_verifier_dispo
BEFORE INSERT OR UPDATE ON Reservation
FOR EACH ROW
WHEN (NEW.id_disponibilite IS NOT NULL)
EXECUTE FUNCTION verifier_disponibilite();
