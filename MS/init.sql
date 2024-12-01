CREATE TABLE IF NOT EXISTS Utilisateur (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    date_creation DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Penalite (
    id INT AUTO_INCREMENT PRIMARY KEY,
    utilisateur_id INT NOT NULL,
    montant DECIMAL(10, 2) NOT NULL,
    description VARCHAR(255),
    date_penalite DATE NOT NULL,
    FOREIGN KEY (utilisateur_id) REFERENCES Utilisateur(id)
);

-- Insérer des données initiales
INSERT INTO Utilisateur (nom, prenom, email, date_creation) VALUES 
('Dupont', 'Jean', 'jean.dupont@example.com', '2024-11-30'),
('Martin', 'Sophie', 'sophie.martin@example.com', '2024-11-30');

INSERT INTO Penalite (utilisateur_id, montant, description, date_penalite) VALUES 
(1, 5.00, 'Retard de 3 jours', '2024-11-30'),
(2, 10.00, 'Retard de 7 jours', '2024-11-30');
