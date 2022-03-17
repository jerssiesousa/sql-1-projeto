CREATE TABLE pessoas (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT
    nome VARCHAR (40) NOT NULL
    nascimento DATE
);
-- CRIOU-SE TABELA VAZIA 


INSERT INTO pessoas (nome, nascimento) VALUE ('Jenniffer', '1994-09-16');
INSERT INTO pessoas (nome, nascimento) VALUE ('Wellington', '1993-04-13');
INSERT INTO pessoas (nome, nascimento) VALUE ('Nathally', '1990-05-22');
INSERT INTO pessoas (nome, nascimento) VALUE ('Joana', '1991-10-19');
INSERT INTO pessoas (nome, nascimento) VALUE ('Fábio', '1999-12-30');
INSERT INTO pessoas (nome, nascimento) VALUE ('Marcos', '1997-03-12');
INSERT INTO pessoas (nome, nascimento) VALUE ('Luana', '1996-08-09');
-- ADICIONOU-SE ELEMENTOS NOME E NASCIMENTO // A DATA SE ESCREVE EM MODELO AMERICANO


SELECT * FROM pessoas;
-- VISUALIZARÁ A TABELA PESSOAS POR COMPLETO 


SELECT nome FROM pessoas;
-- LISTARÁ A PENAS O ATRIBUTO `PESSOAS` 

UPDATE pessoas SET nome = 'Jheniffer Santos' WHERE id = 1;
-- MODIFICARÁ O NOME JHENNIFFER POR JHENIFFER SANTOS
UPDATE pessoas SET nome = 'Wellington Ferreira' WHERE id = 2;
UPDATE pessoas SET nome = 'Nathally Souza' WHERE id = 3;
UPDATE pessoas SET nome = 'Joana Vasconcelos' WHERE id = 4;
UPDATE pessoas SET nome = 'Fábio Carlos' WHERE id = 5;
UPDATE pessoas SET nome = 'Marcos Silva' WHERE id = 6;
UPDATE pessoas SET nome = 'Luana Rego' WHERE id = 7;


DELETE FROM pessoas WHERE id = 7;
-- APAGARÁ OS DADO DE LUANA REGO 

SELECT * FROM pessoas ORDER BY nome DESC;
-- SELECIONARÁ UM ATRIBUTO E REORGANIZARÁ EM ORDEM DECRESCENTE

ALTER TABLE pessoas ADD genero VARCHAR(1) NOT NULL AFTER nascimento;
-- ADICIONA NOVA COLUNA NA TABELA // AFTER PODE TAMBÉM SER ESCRITO BEFORE CASO QUEIRA ANTES DE ALGUM ATRIBUTO

UPDATE pessoas SET genero = 'f' WHERE id = 1;
UPDATE pessoas SET genero = 'm' WHERE id = 2;
UPDATE pessoas SET genero = 'f' WHERE id = 3;
UPDATE pessoas SET genero = 'f' WHERE id = 4;
UPDATE pessoas SET genero = 'm' WHERE id = 5;
UPDATE pessoas SET genero = 'm' WHERE id = 6;

SELECT COUNT(id) Gênero FROM pessoas GROUP BY Gênero;
-- CONTARÁ QUANTOS ID TEM GENEROS IDENTICOS
-- RETORNARÁ GENERO
--              3
--              3

