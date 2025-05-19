-- Création de la table Utilisateur
CREATE TABLE Utilisateur (
  id_utilisateur SERIAL PRIMARY KEY,
  nom VARCHAR(50),
  prenom VARCHAR(50),
  email VARCHAR(100) UNIQUE,
  statut VARCHAR(20)
);

-- Insertion de données dans Utilisateur
INSERT INTO Utilisateur (nom, prenom, email, statut) VALUES
('Dupont', 'Jean', 'jean.dupont@example.com', 'étudiant'),
('Martin', 'Claire', 'claire.martin@example.com', 'étudiant'),
('Petit', 'Luc', 'luc.petit@example.com', 'enseignant'),
('Durand', 'Sophie', 'sophie.durand@example.com', 'étudiant'),
('Lemoine', 'Julien', 'julien.lemoine@example.com', 'admin'),
('Bernard', 'Emma', 'emma.bernard@example.com', 'étudiant'),
('Moreau', 'Hugo', 'hugo.moreau@example.com', 'enseignant'),
('Roux', 'Nina', 'nina.roux@example.com', 'étudiant'),
('Garcia', 'Léa', 'lea.garcia@example.com', 'étudiant'),
('Faure', 'Thomas', 'thomas.faure@example.com', 'étudiant');

-- Création de la table Materiel
CREATE TABLE Materiel (
  id_materiel SERIAL PRIMARY KEY,
  nom VARCHAR(100),
  description TEXT,
  quantite_totale INT,
  quantite_disponible INT,
  categorie VARCHAR(50)
);

-- Insertion de données dans Materiel
INSERT INTO Materiel (nom, description, quantite_totale, quantite_disponible, categorie) VALUES
('Vidéo-projecteur', 'Projecteur HD 1080p', 5, 3, 'audiovisuel'),
('Caméra HD', 'Caméra portable pour tournage', 4, 2, 'audiovisuel'),
('PC Portable', 'Laptop 16Go RAM, i7', 10, 7, 'informatique'),
('Tablette', 'Tablette tactile 10 pouces', 6, 4, 'informatique'),
('Microphone', 'Micro USB cardioïde', 3, 3, 'audiovisuel'),
('Oscilloscope', 'Oscilloscope numérique 100 MHz', 2, 1, 'électronique'),
('Arduino Kit', 'Kit complet Arduino Uno', 8, 5, 'électronique'),
('Multimètre', 'Multimètre numérique', 10, 9, 'électronique'),
('Casque VR', 'Casque de réalité virtuelle', 2, 2, 'informatique'),
('Routeur Wifi', 'Routeur TP-Link AC1200', 5, 4, 'réseau');

-- Création de la table Reservation
CREATE TABLE Reservation (
  id_reservation SERIAL PRIMARY KEY,
  id_utilisateur INT REFERENCES Utilisateur(id_utilisateur),
  id_materiel INT REFERENCES Materiel(id_materiel),
  date_debut DATE,
  date_fin DATE
);

-- Insertion de données dans Reservation
INSERT INTO Reservation (id_utilisateur, id_materiel, date_debut, date_fin) VALUES
(1, 3, '2025-06-01', '2025-06-07'),
(2, 1, '2025-06-03', '2025-06-05'),
(4, 5, '2025-06-02', '2025-06-04'),
(5, 7, '2025-06-01', '2025-06-06'),
(6, 2, '2025-06-03', '2025-06-07');
