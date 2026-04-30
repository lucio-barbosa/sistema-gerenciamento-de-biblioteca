CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

CREATE TABLE genero (
    id_genero INT AUTO_INCREMENT PRIMARY KEY,
    genero VARCHAR(100) NOT NULL UNIQUE 
);

CREATE TABLE cargo (
    id_cargo INT AUTO_INCREMENT PRIMARY KEY,
    cargo VARCHAR(100) NOT NULL UNIQUE 
);

CREATE TABLE livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicacao INT NOT NULL,
    quantidade INT NOT NULL DEFAULT 0,
    id_genero INT NOT NULL,

    CONSTRAINT fk_livro_genero
        FOREIGN KEY (id_genero)
        REFERENCES genero(id_genero)
);

CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_cargo INT NOT NULL,

    CONSTRAINT fk_funcionario_cargo
        FOREIGN KEY (id_cargo)
        REFERENCES cargo(id_cargo)
);

CREATE TABLE emprestimo (
    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    data_emprestimo DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    data_devolucao_prevista DATETIME NOT NULL,
    data_devolucao DATETIME NULL,
    id_cliente INT NOT NULL,
    id_livro INT NOT NULL,
    id_funcionario INT NOT NULL,

    CONSTRAINT fk_emprestimo_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),

    CONSTRAINT fk_emprestimo_livro
        FOREIGN KEY (id_livro)
        REFERENCES livro(id_livro),

    CONSTRAINT fk_emprestimo_funcionario
        FOREIGN KEY (id_funcionario)
        REFERENCES funcionario(id_funcionario)
);