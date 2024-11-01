CREATE TABLE Animais (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    nasc DATE NOT NULL,
    peso DECIMAL(10, 2) CHECK (peso > 0),
    cor VARCHAR(50),
    tipo VARCHAR(50) NOT NULL
);
