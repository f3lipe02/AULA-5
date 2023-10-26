CREATE DATABASE library;

USE library;

CREATE TABLE editoras(
id_editora int,
nome varchar(45),
cnpj char(14),
PRIMARY KEY(id_editora)
);

CREATE TABLE livros(
id_livro INT,
titulo VARCHAR(45),
lancamento INT,
id_editora INT,
PRIMARY KEY(id_livro),
FOREIGN KEY (id_editora) REFERENCES editoras(id_editora)
);

#Cadastrando editora
insert into editoras (id_editora, nome, cnpj)
values (1, 'intrinseca', '05660045000106');

insert into editoras (id_editora, nome, cnpj)
values (2, 'Atlas', '61080370000766');


insert into editoras (id_editora, nome, cnpj)
values (3, 'Camelot/Arthur ConanDyle', '‎6587817874');

----

#Cadastrando livros
insert into livros (id_livro, titulo, lancamento, id_editora)
VALUES (100, 'uma breve história do tempo', 1988, 1);
select*from livros;

insert into livros (id_livro, titulo, lancamento, id_editora)
VALUES (99, 'Livro das fobias e manias', 2023, 1);
select*from livros;

insert into livros (id_livro, titulo, lancamento, id_editora)
VALUES (49, 'Administração', 2023, 2);
select*from livros;

insert into livros (id_livro, titulo, lancamento, id_editora)
VALUES (48, 'Gestão de Pessoas', 2023, 2);
select*from livros;

insert into livros (id_livro, titulo, lancamento, id_editora)
VALUES (45, 'Sherlock Holmes', 1887, 3);
select*from livros;

----

SELECT * FROM livros WHERE id_editora = 3;

SELECT * FROM livros WHERE id_editora = 2;

SELECT * FROM livros WHERE id_editora = 1;





