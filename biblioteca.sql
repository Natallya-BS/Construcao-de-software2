-- Nome do Banco de Dados: Biblioteca
-- Descrição: Este banco de dados é projetado para gerenciar uma biblioteca, incluindo livros, autores e empréstimos.

-- Criação do Banco de Dados
CREATE DATABASE Biblioteca;
USE Biblioteca;

-- Criação da Tabela Autores
CREATE TABLE Autores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50),
    data_nascimento DATE
);

-- Criação da Tabela Livros
CREATE TABLE Livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    autor_id INT,
    ano_publicacao YEAR,
    genero VARCHAR(50),
    FOREIGN KEY (autor_id) REFERENCES Autores(id)
);

-- Criação da Tabela Emprestimos
CREATE TABLE Emprestimos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro_id INT,
    data_emprestimo DATE,
    data_devolucao DATE,
    usuario VARCHAR(100),
    FOREIGN KEY (livro_id) REFERENCES Livros(id)
);

-- Inserindo Dados de Exemplo na Tabela Autores
INSERT INTO Autores (nome, nacionalidade, data_nascimento) VALUES
('J.K. Rowling', 'Britânica', '1965-07-31'),
('George Orwell', 'Britânico', '1903-06-25'),
('Agatha Christie', 'Britânica', '1890-09-15');

-- Inserindo Dados de Exemplo na Tabela Livros
INSERT INTO Livros (titulo, autor_id, ano_publicacao, genero) VALUES
('Harry Potter e a Pedra Filosofal', 1, 1997, 'Fantasia'),
('1984', 2, 1949, 'Ficção Científica'),
('Assassinato no Expresso do Oriente', 3, 1934, 'Mistério');

-- Inserindo Dados de Exemplo na Tabela Emprestimos
INSERT INTO Emprestimos (livro_id, data_emprestimo, data_devolucao, usuario) VALUES
(1, '2024-09-01', '2024-09-15', 'Alice'),
(2, '2024-09-05', '2024-09-20', 'Bob'),
(3, '2024-09-10', '2024-09-24', 'Carlos');

-- Fim da Documentação
