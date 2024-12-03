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
('Vitor Emanuel', 'vitor.emanuel@gmail.com'),
('Maria Oliveira', 'maria.oliveira@gmail.com'),
('José Santos', 'jose.santos@gmail.com'),
('Ana Pereira', 'ana.pereira@gmail.com'),
('Pedro Carvalho', 'pedro.carvalho@gmail.com');

-- insert noticias

INSERT INTO
    ('Aracnídeos podem ser aliados na promoção da saúde humana
    https://faunanews.com.br/wp-content/uploads/2024/04/fauna-news-aracnideos-como-controladores-biologicos-na-saude-humana.webp
    https://faunanews.com.br/aracnideos-podem-ser-aliados-na-promocao-da-saude-humana/
    1');
    INSERT INTO
    ('UFPB promove III Encontro Paraibano de Biologia Celular e Molecular
    https://www.ufpb.br/ufpb/contents/noticias/ufpb-promove-iii-encontro-paraibano-de-biologia-celular-e-molecular/fotoangelicagouveia-181.jpg
    https://www.ufpb.br/ufpb/contents/noticias/ufpb-promove-iii-encontro-paraibano-de-biologia-celular-e-molecular
    2');
    INSERT INTO
    ('Biologia no Enem: quais assuntos mais caem na prova
    https://www.cnnbrasil.com.br/educacao/biologia-no-enem-quais-assuntos-mais-caem-na-prova/
    https://www.cnnbrasil.com.br/educacao/biologia-no-enem-quais-assuntos-mais-caem-na-prova/
    3');
    INSERT INTO
    ('OS LANÇAMENTOS DE PUBLICAÇÕES DA SBEM EM DIABETES E BIOLOGIA MOLECULAR
    https://www.endocrino.org.br/wp-content/uploads/2024/10/livros-feira-expositora.jpg
    https://www.endocrino.org.br/noticias/os-lancamentos-de-publicacoes-da-sbem-em-diabetes-e-biologia-molecular/
    4');
    INSERT INTO
    ('Análises filogenéticas aplicadas à epidemiologia molecular de doenças virais
    https://www.ufrgs.br/cbiot/admin-images/large/news-analises-filogeneticas-aplicadas-a-epidemiologia-molecular-de-doencas-virais-20240627105323.jpeg
    https://www.ufrgs.br/cbiot/noticias-e-eventos/analises-filogeneticas-aplicadas-a-epidemiologia-molecular-de-doencas-virais/11
    5');
    INSERT INTO
    ('Biologia molecular estuda processos genéticos
    https://cdn.bandnewsfmcuritiba.com/band/wp-content/uploads/2024/06/ai-generated-8563463_1280-850x560.jpg
    https://bandnewsfmcuritiba.com/biologia-molecular-estuda-processos-geneticos/
    6');
    INSERT INTO
    ('E se a gente conhecer dentro de um laboratório o que vemos nos livros de Biologia?
    http://comunica.ufu.br/sites/default/files/imagem-chamada/2024-10/IMG_6018.JPG
    https://comunica.ufu.br/noticias/2024/10/e-se-gente-conhecer-dentro-de-um-laboratorio-o-que-vemos-nos-livros-de-biologia
    7');
    INSERT INTO
    ('Litoral Norte terá curso de pós-graduação em biologia marinha a partir de 13 de setembro
    https://www.radarlitoral.com.br/upload/upnoticia/1724754998.jpg
    https://www.radarlitoral.com.br/noticias/24795/litoral-norte-tera-curso-de-pos-graduacao-em-biologia-marinha-a-partir-de-13-de-setembro
    8');
    INSERT INTO
    ('Estudo de SP desvenda via molecular importante para o controle do envelhecimento
    https://www.saopaulo.sp.gov.br/wp-content/uploads/2024/01/Vermes-da-especie-C-1024x572.jpeg
    https://www.saopaulo.sp.gov.br/spnoticias/ultimas-noticias/estudo-de-sp-desvenda-via-molecular-importante-para-o-controle-do-envelhecimento/
    9');
    INSERT INTO
    ('A misteriosa criatura marinha descoberta por cientistas na costa britânica
    https://ichef.bbci.co.uk/ace/ws/800/cpsprodpb/e6fd/live/8935bcb0-d7ca-11ee-a235-7fefc5f74f32.jpg.webp
    https://www.bbc.com/portuguese/articles/cv2ye02q0y2o
    10');
    INSERT INTO
    ('Novo ecossistema marinho com recife de até 60 metros de altura é descoberto na costa do ES
    https://s2-g1.glbimg.com/a-Q6V1CjxEwZLQ6QV-SVrPE8JDs=/0x0:1653x1101/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2024/7/D/1yNWs5Q9mW4sNwTUvxZg/monte-davis-lar-1289.jpg
    https://g1.globo.com/es/espirito-santo/noticia/2024/02/24/video-novo-ecossistema-marinho--recife-de-ate-60-metros-de-altura-e-descoberto-na-costa-do-es.ghtml
    11');
    INSERT INTO
    ('Estudo revela riqueza de anfíbios e répteis na Estação Biologia Marinha Augusto Ruschi, em Aracruz/ES
    https://www.gov.br/inma/pt-br/assuntos/noticias/estudo-revela-riqueza-de-anfibios-e-repteis-na-estacao-biologia-marinha-augusto-ruschi-em-aracruz-es/estudo-ebmar.png/@@images/fd667e2b-9856-4ce8-a361-221b2423349a.png
    https://www.gov.br/inma/pt-br/assuntos/noticias/estudo-revela-riqueza-de-anfibios-e-repteis-na-estacao-biologia-marinha-augusto-ruschi-em-aracruz-es
    12');
    INSERT INTO
    ('Área mais rica em peixes recifais do Atlântico precisa de mais proteção
    https://i0.wp.com/oeco.org.br/wp-content/uploads/2024/02/Fundo-Monte_Davis_LAR_1370.jpg?w=1920&ssl=1
    https://oeco.org.br/reportagens/area-mais-rica-em-peixes-recifais-do-atlantico-precisa-de-mais-protecao/
    13');
    INSERT INTO
    ('Pesquisadores avistam espécie de morcego-pescador sem registro há mais de uma década
    https://www2.dti.ufv.br/noticias/files/fotos/1724849821.png
    https://www2.dti.ufv.br/noticias/scripts/exibeNoticiaMulti.php?codNot=41799
    14');
    INSERT INTO
    ('Nova espécie de animal transparente que sobrevive até no espaço é descoberta em árvores da Unicamp
    https://s2-g1.glbimg.com/RsLbmbefyZF5vf4Ey8mw-RHUgXY=/0x0:2476x1284/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2024/C/o/w3Ziy3R1aCJw6qFj0apw/m-iniquum-microscopia-eletronica.jpg
    https://g1.globo.com/sp/campinas-regiao/terra-da-gente/noticia/2024/04/04/nova-especie-de-tardigrado-e-descoberto-em-musgo-de-arvores-do-instituto-de-biologia-da-unicamp.ghtml');

    --Inserções da tabela Entrevistas
INSERT INTO entrevistas (titulo, descricao, url_entrevista, id_professor) 
VALUES 
('Como conciliar os estudos com a rotina?', 'Como conciliar os estudos com a rotina" sugere um conteúdo focado em estratégias para equilibrar os estudos com outras atividades diárias, como trabalho, lazer e cuidados pessoais. A entrevista destaca dicas de gestão de tempo, organização, foco e como evitar sobrecarga, mantendo uma rotina produtiva e saudável. Este tipo de orientação é essencial para quem busca otimizar o aprendizado sem comprometer o bem-estar.', 'https://www.youtube.com/watch?v=pl-u54kw3Q8', 1),
('Temas mais cobrados nos vestibulares', 'Temas mais cobrados nos vestibulares" indica um conteúdo que aborda as matérias e assuntos que têm maior incidência nas provas de vestibular. A entrevista destaca as áreas de maior relevância, como atualidades, matemática, linguagens, ciências humanas e naturais, além de sugestões de como se preparar para essas questões específicas. O foco é orientar os candidatos a priorizar os temas que mais aparecem, aumentando suas chances de sucesso nas provas.', 'https://www.youtube.com/watch?v=V7dKkVg3En4', 1),
('Como funciona os estudos da biologia?', 'Como funciona os estudos da biologia?" sugere um conteúdo explicativo sobre os métodos e abordagens para estudar biologia de forma eficaz. A entrevista explica aspectos como a importância de entender os conceitos fundamentais, como células, genética e ecologia, além de estratégias de aprendizado como a utilização de diagramas, revisões periódicas e a prática de exercícios. O objetivo é ajudar os estudantes a organizar seus estudos e a dominar os tópicos essenciais dessa disciplina científica.', 'https://www.youtube.com/watch?v=zHLGaZtg-wo', 1);

--Inserções da tabela Aulas

INSERT INTO aulas (titulo, descricao, url_aula, id_professor) 
VALUES 
('Introdução à Biologia', 'Nessa videoaula de introdução à biologia, o professor Paulo Jubilut explica o que a Biologia estuda. Além disso, você irá aprender que a ciência da vida possui várias especialidades como a ecologia, bioquímica, citologia, genética, embriologia, fisiologia, botânica, biotecnologia e zoologia. Aprenda ainda a diferença entre o que é ciência e o que é tecnologia.', 'https://www.youtube.com/watch?v=t-gZtyd3RgI', 2),
('As doenças que mais caem no ENEM', 'A compreensão dos principais tipos de doenças, suas causas, consequências e formas de prevenção é essencial não apenas para o desempenho no ENEM, mas também para o entendimento da realidade atual em termos de saúde pública. Este video aborda as doenças que mais frequentemente aparecem nas questões do ENEM, destacando a importância de sua abordagem no contexto do exame e da educação em saúde.', 'https://www.youtube.com/watch?v=nc2Z5e85x7o', 2),
('Células-Tronco, Clonagem, Transgênicos e Teste de DNA - Revisão ENEM Biologia', 'No contexto do Exame Nacional do Ensino Médio (ENEM), temas relacionados à biotecnologia e avanços científicos, como células-tronco, clonagem, transgênicos e testes de DNA, são frequentemente abordados nas questões de Biologia. Esses tópicos envolvem complexos conhecimentos sobre genética, ética e suas aplicações práticas na medicina, na agricultura e em outras áreas da ciência.', 'https://www.youtube.com/watch?v=VYC9v9E9-xQ', 2);

--Inserções da tabela Autor_noticia

 INSERT INTO autor_noticias (nome, email) VALUES
('Kimberly da Silva Marta Silva', 'kimberly.silva@gmail.com'),
('Lucas Andrade', 'Lucas.andrade@gmail.com'),
('Mirella Cordeiro', 'Mirella.cordeiro@gmail.com'),
('Milena Gurgel Teles Bezerra', 'Milena.gurgel@gmail.com'),
('Tiago da Gräf', 'Tiago.gräf@gmail.com'),
(' Laercio Pereira', 'Laercio.pereira@gmail.com'),
('Ítana Santos', ' Ítana.santos@gmail.com'),
('Fernando Freitas', 'Fernando.freitas@gmail.com'),
(' Marcelo Mori', 'Marcelo.mori@gmail.com'),
('Peter Barry', 'Peter.barry@gmail.com'),
('G1', 'G1.globo@gmail.com'),
('Augusto Ruschi', 'Augusto.ruschi@gmail.com'),
('Aldem Bourscheit ', 'Aldem.bourscheit @gmail.com'),
('Deborah Gonçalves', ' Deborah.gonçalves@gmail.com'),
(' Larissa Fortunato', ' Larissa.fortunato@gmail.com');

--Inserções da tabela Simulados

INSERT INTO simulados (titulo, nivel_simulado, url_simulado) VALUES
('Simulado de Nível Básico', 'Básico', 'https://docs.google.com/forms/d/1pP8lAp_lHbW7zRDzYXZQ2UVOpyxygP1a0foWr4ktK3Y/viewform?edit_requested=true'),
('Simulado de Nível Intermediário', 'Intermediário', 'https://docs.google.com/forms/d/1OHZGESlB0UDcx47qfK8Brw8jDqdOVBLMYCaTgB6iw38/viewform?edit_requested=true'),
('Simulado de Nível Avançado', 'Avançado', 'https://docs.google.com/forms/d/1MP7_29-ajhHva62j1S3FCylU8jGLhpTOXoEXROHxTXE/viewform?edit_requested=true');
('Simulado de Nível Final', 'Final', 'https://docs.google.com/forms/d/1ApVg3jQ5wl_9-KTH3iU6756HIz9-_L6jVOgfQT4BrgA/viewform?edit_requested=true');