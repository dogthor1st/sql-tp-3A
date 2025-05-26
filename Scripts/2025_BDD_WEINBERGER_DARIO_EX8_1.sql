-- Mise à jour du modèle de données existant en ajoutant une nouvelle table "disponibilite"
CREATE TABLE Disponibilite (
    id_disponibilite SERIAL PRIMARY KEY,
    id_materiel INTEGER NOT NULL,
    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,
    CONSTRAINT fk_materiel_disponibilite
        FOREIGN KEY (id_materiel)
        REFERENCES Materiel(id_materiel)
        ON DELETE CASCADE
);
