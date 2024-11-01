-- Elimine a tabela "especies" do banco de dados
DROP TABLE IF EXISTS especies;

-- Exclua todos os animais com peso superior a 200 quilogramas
DELETE FROM Animais
WHERE peso > 200;

-- Atualize o nome "Pateta" para "Goofy"
UPDATE Animais
SET nome = 'Goofy'
WHERE nome = 'Pateta';

-- Ajuste o peso do animal "Garfield" para 10 quilogramas
UPDATE Animais
SET peso = 10.00
WHERE nome = 'Garfield';

-- Remova todos os registros de animais cujo nome comece com a letra 'C'
DELETE FROM Animais
WHERE nome LIKE 'C%';

-- Altere a cor de todos os gatos para "laranja"
UPDATE Animais
SET cor = 'laranja'
WHERE tipo = 'gato';  -- Supondo que exista uma coluna 'tipo'

-- Adicione um campo "altura" para armazenar a altura dos animais
ALTER TABLE Animais
ADD altura DECIMAL(10,2);

-- Insira uma coluna "observacao" para notas adicionais sobre os animais
ALTER TABLE Animais
ADD observacao VARCHAR(255);

-- Remova a coluna "cor" da tabela de animais
ALTER TABLE Animais
DROP COLUMN cor;

-- Modifique o campo "nome" para permitir até 80 caracteres
ALTER TABLE Animais
MODIFY nome VARCHAR(80);

-- Exclua todos os gatos e cachorros
DELETE FROM Animais
WHERE nome IN ('Garfield', 'Goofy');  -- Atualizando para o novo nome

-- Retire a coluna "nasc" que continha a data de nascimento
ALTER TABLE Animais
DROP COLUMN nasc;

-- Exclua todos os registros da tabela "Animais"
DELETE FROM Animais;
