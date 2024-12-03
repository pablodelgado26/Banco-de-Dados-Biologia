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

-- insert professores

INSERT INTO professores (nome) VALUES
('Eva'),
('Paula Jubilut');

-- insert carreiras

INSERT INTO carreiras (profissao, descricao, url_imagem_carreira) VALUES
('Biólogo', 'Profissional que estuda os seres vivos', NULL),
('Biomédico', 'Profissional que estuda as doenças e os agentes causadores', NULL),
('Zoólogo', 'Profissional que estuda os animais', NULL),
('Ictiologia', 'Profissional que estuda os peixes', NULL),
('Etologia', 'Profissional que estuda o comportamento animal', NULL),
('Bioética', 'Profissional que estuda a ética na biologia', NULL),
('Bioinformática', 'Profissional que estuda a informática na biologia', NULL),
('Ecoturismo', 'Profissional que estuda o turismo ecológico', NULL),
('Biologia Molecular', 'Profissional que estuda a biologia molecular', NULL),
('Análises Clínicas', 'Profissional que faz análises clínicas', NULL);

-- insert usuarios

INSERT INTO usuarios (nome, email) VALUES
('João Silva', 'joao.silva@gmail.com'),
('Maria Oliveira', 'maria.oliveira@gmail.com'),
('José Santos', 'jose.santos@gmail.com'),
('Ana Pereira', 'ana.pereira@gmail.com'),
('Pedro Carvalho', 'pedro.carvalho@gmail.com');