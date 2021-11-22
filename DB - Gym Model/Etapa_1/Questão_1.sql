CREATE TABLE alunos (
id_aluno NUMBER(6) NOT NULL,
cpf NUMBER(11) NOT NULL,
nome VARCHAR(100) NOT NULL,
sexo CHAR(1),
data_nascimento DATE NOT NULL,

CONSTRAINT PK_ALUNOS PRIMARY KEY(id_aluno),
CONSTRAINT AK_CPF UNIQUE(cpf),
CONSTRAINT CK_SEXO CHECK(sexo in ('F','M','I'))
);

create table avaliacoes (
    id_avaliacao numeric(7) not null,
    data_avaliacao date not null,
    peso numeric(4,1) not null,
    altura numeric (3,2) not null,
    imc numeric (3,1) not null,
    perimetro_cintura numeric (3) not null,
    perimetro_biceps numeric (3) not null,
    perimetro_peito numeric (3) not null,
    perimetro_quadriceps numeric (3) not null,
    id_aluno numeric (6) not null,

    constraint PK_AVALIACOES primary key (id_avaliacao),
    constraint FK_ALUNOS foreign key (id_aluno) references alunos (id_aluno)
);
create table professores (
id_professor number(4) not null,
nome varchar(100) not null,
constraint pk_professores primary key(id_professor)
);

CREATE TABLE treinos (
id_treino NUMBER(8) not null,
data_inicio date not null,
data_termino date ,
id_aluno NUMBER(6) not null,
id_professor NUMBER(4) not null,
constraint PK_TREINOS primary key(id_treino),
constraint FK_ID_ALUNO foreign key (id_aluno) references alunos (id_aluno),
constraint FK_ID_PROFESSOR foreign key (id_professor) references professores (id_professor)
);

create table series (
    id_treino NUMBER (8) not null,
    id_serie char (1) not null,
    descricao varchar (500) not null,    
    constraint PK_SERIES primary key (id_serie, id_treino),
    constraint FK_TREINOS foreign key (id_treino) references treinos (id_treino)
);

create table aparelhos (
id_aparelho number(3) not null,
nome varchar(100) not null,
localizacao varchar(200),
foto varchar(1000),
constraint pk_aparelhos primary key(id_aparelho)
);

create table series_aparelhos (
    id_treino number(8) not null,
    id_serie char(1) not null,
    id_aparelho number(3) not null,
    cargas number(3),
    repeticoes number(3),
    descanso varchar(500),
    
    constraint PK_SERIES_APARELHOS primary key(id_treino, id_serie, id_aparelho),
    constraint FK_SERIES_TREINO foreign key(id_treino, id_serie) references series(id_treino, id_serie),
    constraint FK_APARELHOS foreign key(id_aparelho) references aparelhos(id_aparelho)
);

CREATE TABLE AULA_REGISTRO (
ID_AULA_REGISTRO NUMBER(10) NOT NULL,
DATA_HORA_ENTRADA timestamp default current_timestamp,
data_hora_saida timestamp default current_timestamp,
id_treino number(8) not null,
id_serie char(1) not null,
constraint pk_aula_registro primary key (id_aula_registro),
constraint fk_aula_registro foreign key (id_treino, id_serie) references series(id_treino, id_serie)
);