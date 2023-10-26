-- Excluindo banco de dados
DROP DATABASE cine_senai_max;

-- Criando banco de dados
create database cine_senai_max;

-- Ativando banco de dados
use cine_senai_max;

-- Criando tabela filmes
CREATE TABLE filmes (
	id_filme int,
    titulo VARCHAR(60),
    genero VARCHAR(45),
    duracao int,
    ano_lancamento INT,
    preco_aluguel DOUBLE,
    primary key(id_filme)
);

-- Criando tabela atores
CREATE TABLE atores (
	id_ator INT,
    nome_ator VARCHAR(60),
    ano_nascimento INT,
    nacionalidade VARCHAR(20),
    sexo VARCHAR(10),
    PRIMARY KEY(id_ator)
);
describe filmes;

describe atores;

-- Crie aqui a tabela de atuações


CREATE TABLE atuacoes(
id_filme int,
id_ator int
);

insert into filmes(id_filme, titulo, genero, duracao, ano_lancamento, preco_aluguel)
values (80, 'Carandiru', 'Drama', 145, 2003, 4.99);
select*from filmes;

insert into atores (id_ator, nome_ator, ano_nascimento, nacionalidade, sexo)
values (150, 'Rodrigo Santoro', 1975, 'Brasileiro', 'masculino');
select*from atores;

insert into atores (id_ator, nome_ator, ano_nascimento, nacionalidade, sexo)
values (151, 'Wagner Moura', 1976, 'Brasileiro', 'masculino');

insert into atuacoes (id_filme, id_ator)
values (80, 150);
select*from atuacoes;

insert into atuacoes (id_filme, id_ator)
values (80, 151);
select*from atuacoes;

insert into filmes(id_filme, titulo, genero, duracao, ano_lancamento, preco_aluguel)
values (100, 'O homem sem futuro', 'Comédia', 145, 2003, 4.99);

insert into atuacoes (id_filme, id_ator)
values (100, 151);
select*from atuacoes


