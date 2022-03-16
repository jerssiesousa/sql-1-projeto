CREATE TABLE pessoas (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT
    nome VARCHAR (40) NOT NULL
    nascimento DATE
);

INSERT INTO pessoas (nome, nascimento) VALUE ('Jenniffer', '1994-09-16');
INSERT INTO pessoas (nome, nascimento) VALUE ('Wellington', '1993-04-13');
INSERT INTO pessoas (nome, nascimento) VALUE ('Nathally', '1990-05-22');