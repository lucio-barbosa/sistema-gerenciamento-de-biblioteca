
-- DROP DATABASE biblioteca;

-- Criação do banco de dados

CREATE DATABASE biblioteca;

-- Utilização do banco de dados

USE biblioteca;

CREATE TABLE genero(

  ID_GENERO INT AUTO_INCREMENT PRIMARY KEY,

  GENERO VARCHAR(100) NOT NULL

);

-- Criação da tabela Livro

CREATE TABLE livro (

  ID_LIVRO INT AUTO_INCREMENT PRIMARY KEY,

  TITULO VARCHAR(100) NOT NULL,

  AUTOR VARCHAR(100) NOT NULL,

  ANO_PUBLICACAO INT NOT NULL,

QUANTIDADE INT NOT NULL,

   ID_GENERO INT,

  FOREIGN KEY (ID_GENERO) REFERENCES genero(ID_GENERO)

);

-- Criação da tabela Cliente

CREATE TABLE  cliente(

  ID_CLIENTE INT AUTO_INCREMENT PRIMARY KEY,

  NOME VARCHAR(100) NOT NULL,

  EMAIL VARCHAR(100) NOT NULL,

  ENDERECO VARCHAR(200) NOT NULL,

  TELEFONE VARCHAR(20) NOT NULL

);

CREATE TABLE cargo(

  ID_CARGO INT AUTO_INCREMENT PRIMARY KEY,

  CARGO VARCHAR(100) NOT NULL

);

-- Criação da tabela Funcionario

CREATE TABLE  funcionario (

  ID_FUNCIONARIO INT AUTO_INCREMENT PRIMARY KEY,

  NOME VARCHAR(100) NOT NULL,

   ID_CARGO INT,

  FOREIGN KEY (ID_CARGO) REFERENCES cargo(ID_CARGO)

);

-- Criação da tabela Emprestimo

CREATE TABLE emprestimo (

  ID_EMPRESTIMO INT AUTO_INCREMENT PRIMARY KEY,

  ID_LIVRO INT,

  ID_CLIENTE INT,

  ID_FUNCIONARIO INT,

  DATA_EMPRESTIMO DATE NOT NULL,

  DATA_DEVOLUCAO_PREVISTA DATE NOT NULL,

  DATA_DEVOLUCAO DATE,

  FOREIGN KEY (ID_LIVRO) REFERENCES livro(ID_LIVRO),

  FOREIGN KEY (ID_CLIENTE) REFERENCES cliente(ID_CLIENTE),

  FOREIGN KEY (ID_FUNCIONARIO) REFERENCES funcionario(ID_FUNCIONARIO)

);

INSERT INTO genero (GENERO)

VALUES

    ('Romance'),

    ('Ficção Distópica'),

    ('Fantasia'),

    ('Realismo Mágico'),

    ('Infantil'),

    ('Aventura'),

    ('Ficção Política'),

    ('Ficção'),

    ('Romance Gótico');

INSERT INTO livro (TITULO , AUTOR , ANO_PUBLICACAO , ID_GENERO , QUANTIDADE)

VALUES

    ('Dom Quixote', 'Miguel de Cervantes', 1605, 1 ,1) ,

    ('1984', 'George Orwell', 1949, 8 ,1),

    ('Orgulho e Preconceito', 'Jane Austen', 1813, 1 ,1),

    ('O Senhor dos Anéis', 'J.R.R. Tolkien', 1954, 3 ,1),

    ('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, 3 ,1),

    ('Cem Anos de Solidão', 'Gabriel García Márquez', 1967, 4 ,1),

    ('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 1943, 5 ,1),

    ('O Grande Gatsby', 'F. Scott Fitzgerald', 1925, 1 ,1),

    ('Moby Dick', 'Herman Melville', 1851, 6 ,1),

    ('O Hobbit', 'J.R.R. Tolkien', 1937, 3 ,1),

    ('A Revolução dos Bichos', 'George Orwell', 1945, 8 ,1),

    ('Crime e Castigo', 'Fyodor Dostoevsky', 1866, 1 ,1),

    ('Ensaio sobre a Cegueira', 'José Saramago', 1995, 8 ,1),

    ('Ulisses', 'James Joyce', 1922, 1 ,1),

    ('O Retrato de Dorian Gray', 'Oscar Wilde', 1890, 9 ,1),

    ('As Aventuras de Tom Sawyer', 'Mark Twain', 1876, 6 ,1),

    ('A Metamorfose', 'Franz Kafka', 1915, 8 ,1),

    ('O Sol é para Todos', 'Harper Lee', 1960, 1 ,1),

    ('Os Miseráveis', 'Victor Hugo', 1862, 1 ,1),

    ('O Processo', 'Franz Kafka', 1925, 8 ,1);

INSERT INTO cliente (NOME , EMAIL, TELEFONE , ENDERECO)

VALUES

    ('Maria Silva', 'maria.silva@gmail.com', '(11) 9876-5432', 'Rua das Flores, 123'),

    ('João Santos', 'joao.santos@hotmail.com', '(21) 9999-8888', 'Avenida dos Sonhos, 456'),

    ('Ana Oliveira', 'ana.oliveira@yahoo.com', '(31) 5555-4444', 'Travessa das Estrelas, 789'),

    ('Pedro Souza', 'pedro.souza@gmail.com', '(48) 3333-2222', 'Rua do Bosque, 987'),

    ('Laura Mendes', 'laura.mendes@hotmail.com', '(85) 7777-6666', 'Avenida Principal, 654'),

    ('Carlos Rocha', 'carlos.rocha@yahoo.com', '(11) 2222-1111', 'Rua da Praia, 321'),

    ('Mariana Castro', 'mariana.castro@gmail.com', '(21) 8888-7777', 'Avenida das Árvores, 987'),

    ('Rafaela Lima', 'rafaela.lima@hotmail.com', '(31) 4444-3333', 'Travessa da Paz, 456'),

    ('Paulo Almeida', 'paulo.almeida@yahoo.com', '(48) 2222-3333', 'Rua das Montanhas, 789'),

    ('Juliana Torres', 'juliana.torres@gmail.com', '(85) 7777-8888', 'Avenida Central, 654'),

    ('Fernando Santos', 'fernando.santos@hotmail.com', '(11) 3333-4444', 'Rua do Campo, 321'),

    ('Isabela Costa', 'isabela.costa@yahoo.com', '(21) 6666-7777', 'Avenida dos Lagos, 987'),

    ('Lucas Pereira', 'lucas.pereira@gmail.com', '(31) 1111-2222', 'Travessa das Flores, 456'),

    ('Amanda Silva', 'amanda.silva@hotmail.com', '(48) 4444-5555', 'Rua do Mar, 789'),

    ('Rodrigo Fernandes', 'rodrigo.fernandes@yahoo.com', '(85) 5555-6666', 'Avenida da Praça, 654'),

    ('Larissa Oliveira', 'larissa.oliveira@gmail.com', '(11) 7777-8888', 'Rua das Águas, 321'),

    ('Gustavo Mendes', 'gustavo.mendes@hotmail.com', '(21) 2222-3333', 'Avenida das Colinas, 987'),

    ('Camila Rodrigues', 'camila.rodrigues@yahoo.com', '(31) 5555-6666', 'Travessa dos Lagos, 456'),

    ('Ricardo Almeida', 'ricardo.almeida@gmail.com', '(48) 7777-8888', 'Rua do Sol, 789'),

    ('Isabella Santos', 'isabella.santos@hotmail.com', '(85) 1111-2222', 'Avenida dos Ventos, 654');

INSERT INTO cargo (CARGO)

VALUES

    ('Bibliotecário'),

    ('Auxiliar de Biblioteca');

INSERT INTO funcionario (NOME , ID_CARGO )

VALUES

    ('João Silva', 1),

    ('Maria Santos', 2),

    ('Carlos Oliveira',1),

    ('Ana Souza', 2),

    ('Fernanda Mendes',1),

    ('Ricardo Rocha', 2),

    ('Mariana Castro', 1),

    ('Pedro Lima', 2),

    ('Camila Almeida', 1),

    ('Gustavo Torres', 2),

    ('Lucas Santos', 1),

    ('Isabela Costa', 2),

    ('Rodrigo Pereira', 1),

    ('Amanda Silva', 2),

    ('Marcelo Fernandes', 1),

    ('Larissa Oliveira', 2),

    ('Gustavo Mendes', 1),

    ('Camila Rodrigues', 2),

    ('Rafaela Costa', 1),

    ('Thiago Alves',2);

/*INSERT INTO  emprestimo (id_cliente, id_livro, data_emprestimo, data_devolucao)

VALUES

    (1, 3, '2022-01-10', '2022-01-17'),

    (2, 5, '2022-02-15', '2022-02-22'),

    (3, 2, '2022-03-20', '2022-03-27'),

    (4, 1, '2022-04-12', '2022-04-19'),

    (5, 4, '2022-05-18', '2022-05-25'),

    (6, 6, '2022-06-25', '2022-07-02'),

    (7, 8, '2022-07-08', '2022-07-15'),

    (8, 7, '2022-08-14', '2022-08-21'),

    (9, 10, '2022-09-19', '2022-09-26'),

    (10, 9, '2022-10-25', '2022-11-01'),

    (11, 12, '2022-11-30', '2022-12-07'),

    (12, 11, '2023-01-05', '2023-01-12'),

    (13, 14, '2023-02-10', '2023-02-17'),

    (14, 13, '2023-03-18', '2023-03-25'),

    (15, 16, '2023-04-24', '2023-05-01'),

    (16, 15, '2023-05-30', '2023-06-06'),

    (17, 18, '2023-06-26', '2023-07-03'),

    (18, 17, '2023-07-29', '2023-08-05'),

    (19, 20, '2023-08-15', '2023-08-22'),

    (20, 19, '2023-09-20', '2023-08-22');*/

INSERT INTO emprestimo (ID_CLIENTE , ID_LIVRO , ID_FUNCIONARIO , DATA_EMPRESTIMO , DATA_DEVOLUCAO_PREVISTA, DATA_DEVOLUCAO)

VALUES

    (1, 3, 1, '2022-01-10', '2022-01-17', '2022-01-17'),

    (2, 5, 2, '2022-02-15', '2022-02-22', NULL),

    (3, 2, 3, '2022-03-20', '2022-03-27', '2022-03-27'),

    (4, 1, 4, '2022-04-12', '2022-04-19', NULL),

    (5, 4, 5, '2022-05-18', '2022-05-25', '2022-05-25'),

    (6, 6, 6, '2022-06-25', '2022-05-25',  '2022-05-25'),

    (7, 8, 7, '2022-07-08', '2022-07-15', NULL),

    (8, 7, 8, '2022-08-14', '2022-08-21', '2022-08-21'),

    (9, 10, 9, '2022-09-19', '2022-09-26', '2022-09-26'),

    (10, 9, 10, '2022-10-25', '2022-11-01', '2022-11-01'),

    (11, 12, 11, '2022-11-30', '2022-12-07', NULL),

    (12, 11, 12, '2023-01-05', '2023-01-12', '2023-01-12'),

    (13, 14, 13, '2023-02-10', '2023-02-17', '2023-02-17'),

    (14, 13, 14, '2023-03-18', '2023-03-25', '2023-03-25'),

    (15, 16, 15, '2023-04-24', '2023-05-01', '2023-05-01'),

    (16, 15, 16, '2023-05-30', '2023-06-06', '2023-06-06'),

    (17, 18, 17, '2023-06-26', '2023-07-03', NULL),

    (18, 17, 18, '2023-07-29', '2023-06-05', NULL),

    (19, 20, 19, '2023-08-15', '2023-06-22', NULL),

    (20, 19, 20, '2023-09-20', '2023-06-22', NULL);

INSERT INTO emprestimo (ID_CLIENTE , ID_LIVRO , ID_FUNCIONARIO , DATA_EMPRESTIMO , DATA_DEVOLUCAO_PREVISTA, DATA_DEVOLUCAO)

VALUES

    (1, 3, 1, '2022-01-10', '2022-01-17', '2022-01-17'),

    (2, 5, 2, '2022-02-15', '2022-02-22', '2022-02-22'),

    (3, 2, 3, '2022-03-20', '2022-03-27', '2022-03-27'),

    (4, 1, 4, '2022-04-12', '2022-04-19', '2022-04-19'),

    (5, 4, 5, '2022-05-18', '2022-05-25', '2022-05-25'),

    (6, 6, 6, '2022-06-25', '2022-05-25',  '2022-05-25'),

    (7, 8, 7, '2022-07-08', '2022-07-15', '2022-07-15'),

    (8, 7, 8, '2022-08-14', '2022-08-21', '2022-08-21'),

    (9, 10, 9, '2022-09-19', '2022-09-26', '2022-09-26'),

    (10, 9, 10, '2022-10-25', '2022-11-01', '2022-11-01'),

    (11, 12, 11, '2022-11-30', '2022-12-07', '2022-12-07'),

    (12, 11, 12, '2023-01-05', '2023-01-12', '2023-01-12'),

    (13, 14, 13, '2023-02-10', '2023-02-17', '2023-02-17'),

    (14, 13, 14, '2023-03-18', '2023-03-25', '2023-03-25'),

    (15, 16, 15, '2023-04-24', '2023-05-01', '2023-05-01'),

    (16, 15, 16, '2023-05-30', '2023-06-06', '2023-06-06'),

    (17, 18, 17, '2023-06-26', '2023-07-03', '2023-07-03'),

    (18, 17, 18, '2023-07-29', '2023-06-05', '2023-06-05'),

    (19, 20, 19, '2023-08-15', '2023-06-22', '2023-06-22'),

    (20, 19, 20, '2023-09-20', '2023-06-22', '2023-06-22');
    
    SHOW TABLES;
    
    SELECT * FROM emprestimo;
    

