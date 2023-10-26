CREATE DATABASE estoque_senai;

USE estoque_senai;

CREATE TABLE produtos(
	id_produtos INT,
    nome VARCHAR(45),
    preco_unitario FLOAT,
    id_marca INT,
    PRIMARY KEY(id_produtos),
    FOREIGN KEY(id_marca) REFERENCES marcas(id_marca)
);

CREATE TABLE marcas(
	id_marca INT,
    nome VARCHAR(45),
    descricao VARCHAR(45),
    PRIMARY KEY(id_marca)
);

INSERT INTO marcas (id_marca, nome, descricao)
VALUE (1, "Eudora", "Cuidado Pessoal"), (2, "Logitech", "Periferico"), (3, "Apple", "SmartPhone");

INSERT INTO produtos ( id_produtos, nome, preco_unitario, id_marca)
VALUE (1, "Shampoo, Revela os cachos", 12.99, 1), (2, "Logitech G203", 98.99, 2), (3, "Iphone 15 Pro Max", 1499.99, 3);

SELECT * FROM produtos;
SELECT * FROm marcas;