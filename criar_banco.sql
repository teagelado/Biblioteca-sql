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

USE biblioteca;


-- Inserindo autores
INSERT INTO autores (nome) VALUES
("Machado de Assis"),
("J. K. Rowling"),
("George Orwell");


-- Inserindo livros
INSERT INTO livros (titulo, ano_publicacao, id_autor) VALUES
("Dom Casmurro", 1899, 1),
("Harry Potter e a Pedra Filosofal", 1997, 2),
("1984", 1949, 3);


-- Inserindo clientes
INSERT INTO clientes (nome, telefone) VALUES
("Ana Silva", "1111-1111"),
("Carlos Pereira", "2222-2222"),
("João Souza", "3333-3333");


-- Inserindo empréstimos
INSERT INTO emprestimos (id_cliente, id_livro, data_emprestimo) VALUES
(1, 3, "2024-10-01"),
(2, 1, "2024-10-03"),
(3, 2, "2024-10-05");

USE biblioteca;


-- Listar todos os livros
SELECT * FROM livros;


-- Listar livros e seus autores
SELECT livros.titulo, autores.nome AS autor
FROM livros
JOIN autores ON livros.id_autor = autores.id_autor;


-- Buscar clientes que fizeram empréstimos
SELECT clientes.nome AS cliente, livros.titulo AS livro
FROM emprestimos
JOIN clientes ON emprestimos.id_cliente = clientes.id_cliente
JOIN livros ON emprestimos.id_livro = livros.id_livro;


-- Buscar livros publicados após o ano 1950
SELECT titulo FROM livros
WHERE ano_publicacao > 1950;