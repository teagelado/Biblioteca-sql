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