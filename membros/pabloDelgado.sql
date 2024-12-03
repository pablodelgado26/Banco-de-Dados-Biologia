CREATE TABLE carreiras (
    id_carreira SERIAL PRIMARY KEY,
    profissao VARCHAR(150),
    descricao TEXT,
    url_imagem_carreira TEXT
);

CREATE TABLE usuarios (
    id_usuario SERIAL PRIMARY KEY,
    nome TEXT,
    email TEXT
);

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

INSERT INTO usuarios (nome, email) VALUES
('João Silva', 'joao.silva@gmail.com'),
('Maria Oliveira', 'maria.oliveira@gmail.com'),
('José Santos', 'jose.santos@gmail.com'),
('Ana Pereira', 'ana.pereira@gmail.com'),
('Pedro Carvalho', 'pedro.carvalho@gmail.com');
