CREATE DATABASE site_biologia;

\c site_biologia

CREATE TABLE carreiras (
    id_carreira SERIAL PRIMARY KEY,
    profissao VARCHAR(150),
    descricao TEXT,
    url_imagem_carreira TEXT
);

CREATE TABLE usuarios (
    id_usuario SERIAL PRIMARY KEY,
    nome VARCHAR(150),
    email TEXT UNIQUE
);


CREATE TABLE simulados (
    id_simulado SERIAL PRIMARY KEY,
    titulo VARCHAR(100),
    nivel_simulado VARCHAR(50),
    url_simulado TEXT
);

CREATE TABLE resultados (
    id_resultado SERIAL PRIMARY KEY,
    id_simulado INTEGER,
    id_usuario INTEGER,
    data DATE DEFAULT CURRENT_DATE,
    acertos INTEGER,
    erros INTEGER,
    FOREIGN KEY (id_simulado) REFERENCES simulados(id_simulado),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

CREATE TABLE autor_noticia (
    id_autor SERIAL PRIMARY KEY,
    nome VARCHAR(150),
    email TEXT UNIQUE
);

CREATE TABLE noticias (
    id_noticia SERIAL PRIMARY KEY,
    titulo VARCHAR(150),
    url_imagem_noticia TEXT,
    url_noticia TEXT UNIQUE,
    id_autor INTEGER,
    FOREIGN KEY (id_autor) REFERENCES autor_noticia(id_autor)
);

CREATE TABLE professores (
    id_professor SERIAL PRIMARY KEY,
    nome VARCHAR(150)
);

CREATE TABLE aulas (
    id_aula SERIAL PRIMARY KEY,
    titulo VARCHAR(150),
    descricao TEXT,
    url_aula TEXT UNIQUE,
    id_professor INTEGER,
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

CREATE TABLE entrevistas (
    id_entrevista SERIAL PRIMARY KEY,
    titulo VARCHAR(150),
    descricao TEXT,
    url_entrevista TEXT UNIQUE,
    id_professor INTEGER,
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);


INSERT INTO professores (nome) VALUES
('Eva'),
('Paula Jubilut');