-- Criação do Banco de Dados
CREATE DATABASE biblioteca;
USE biblioteca;


-- Tabela de Autores
CREATE TABLE autores (
id_autor INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL
);


-- Tabela de Livros
CREATE TABLE livros (
id_livro INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(150) NOT NULL,
ano_publicacao INT,
id_autor INT,
FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);


-- Tabela de Clientes
CREATE TABLE clientes (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
telefone VARCHAR(20)
);


-- Tabela de Empréstimos
CREATE TABLE emprestimos (
id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
id_cliente INT,
id_livro INT,
data_emprestimo DATE,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
FOREIGN KEY (id_livro) REFERENCES livros(id_livro)
);

