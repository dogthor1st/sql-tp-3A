-- Mise à jour modèle de données => ajout nouvelle table "RetourMatériel" + 
-- colonnes : id_retour (clé primaire) 
--            id_reservation (clé étrangère référençant la table "Reservation") 
--            date_retour (date à laquelle le matériel a été rendu) 
--            retard (indicateur de retard, par exemple, un booléen)
CREATE TABLE RetourMateriel (
    id_retour SERIAL PRIMARY KEY,
    id_reservation INT REFERENCES Reservation(id_reservation) ON DELETE CASCADE,
    date_retour DATE NOT NULL,
    retard BOOLEAN
);
