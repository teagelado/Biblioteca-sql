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