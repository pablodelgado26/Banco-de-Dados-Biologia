Tabelas e Relacionamentos:

Carreiras
id_carreira (PK)
profissao
descricao
url_imagem_carreira

Usuarios
id_usuario (PK)
nome
email

Simulados
id_simulado (PK)
titulo
nivel_simulado
url_simulado
id_usuario (FK → Usuarios.id_usuario)

Resultados
id_resultado (PK)
id_simulado (FK → Simulados.id_simulado)
id_usuario (FK → Usuarios.id_usuario)
data
acertos
erros

Autor_noticia
id_autor (PK)
nome
email

Noticias
id_noticia (PK)
titulo
url_imagem_noticia
url_noticia
id_autor (FK → Autor_noticia.id_autor)


Professores
id_professor (PK)
nome

Aulas
id_aula (PK)
titulo
descricao
url_aula
id_professor (FK → Professores.id_professor)

Entrevistas
id_entrevista (PK)
titulo
descricao
url_entrevista
id_professor (FK → Professores.id_professor)


Relacionamentos:
Usuarios - Simulados

Relacionamento 1:N (um usuário pode ter vários simulados).
Simulados - Resultados

Relacionamento 1:N (um simulado pode ter vários resultados).
Usuarios - Resultados

Relacionamento 1:N (um usuário pode ter vários resultados).
Autor_noticia - Noticias

Relacionamento 1:N (um autor pode criar várias notícias).
Professores - Aulas

Relacionamento 1:N (um professor pode ministrar várias aulas).
Professores - Entrevistas

Relacionamento 1:N (um professor pode participar de várias entrevistas).