INSERT INTO ALUNOS(id_aluno,cpf,nome,sexo,data_nascimento) VALUES(1,01228232800,'Diego Souza', 'M', to_date('12/12/1995','dd-mm-yy'));
INSERT INTO ALUNOS(id_aluno,cpf,nome,sexo,data_nascimento) VALUES(2,26548932102,'Lucas Silva', 'M', to_date('12/11/1985','dd-mm-yy'));
INSERT INTO ALUNOS(id_aluno,cpf,nome,sexo,data_nascimento) VALUES(3,69853216547,'Ricardinho', 'M', to_date('12/10/1975','dd-mm-yy'));
INSERT INTO ALUNOS(id_aluno,cpf,nome,sexo,data_nascimento) VALUES(4,49671234097,'Godofredo', 'M', to_date('09/11/1987','dd-mm-yy'));
INSERT INTO ALUNOS(id_aluno,cpf,nome,sexo,data_nascimento) VALUES(5,58391025473,'Fredinson', 'M', to_date('25/12/1999','dd-mm-yy'));
INSERT INTO ALUNOS(id_aluno,cpf,nome,sexo,data_nascimento) VALUES(6,97964816214,'Roberta', 'F', to_date('06/08/1998','dd-mm-yy'));
INSERT INTO ALUNOS(id_aluno,cpf,nome,sexo,data_nascimento) VALUES(7,01259467381,'Paula', 'F', to_date('30/08/1977','dd-mm-yy'));
INSERT INTO ALUNOS(id_aluno,cpf,nome,sexo,data_nascimento) VALUES(8,96744378192,'Georgia', 'F', to_date('02/01/1965','dd-mm-yy'));
INSERT INTO ALUNOS(id_aluno,cpf,nome,sexo,data_nascimento) VALUES(9,12867598221,'Sofia', 'F', to_date('05/03/1982','dd-mm-yy'));
INSERT INTO ALUNOS(id_aluno,cpf,nome,sexo,data_nascimento) VALUES(10,87964539812,'Caroline', 'F', to_date('11/07/1984','dd-mm-yy'));


INSERT INTO PROFESSORES(id_professor,nome) VALUES(1,'Renato Portaluppi');
INSERT INTO PROFESSORES(id_professor,nome) VALUES(2,'Tite');
INSERT INTO PROFESSORES(id_professor,nome) VALUES(3,'Luiz Felipe Scolari');
INSERT INTO PROFESSORES(id_professor,nome) VALUES(4,'Tiago Nunes');


INSERT INTO AVALIACOES(id_avaliacao,data_avaliacao,peso,altura,imc,perimetro_cintura,perimetro_biceps,perimetro_peito,perimetro_quadriceps,id_aluno)
VALUES(1,to_date('11/05/2021','dd-mm-yy'), 70, 1.78, 22.1, 66, 38.4, 82, 41.8, 1);

INSERT INTO AVALIACOES(id_avaliacao,data_avaliacao,peso,altura,imc,perimetro_cintura,perimetro_biceps,perimetro_peito,perimetro_quadriceps,id_aluno)
VALUES(2,to_date('13/05/2021','dd-mm-yy'), 78, 1.86, 22.5, 63, 39.2, 78, 46.3, 2);

INSERT INTO AVALIACOES(id_avaliacao,data_avaliacao,peso,altura,imc,perimetro_cintura,perimetro_biceps,perimetro_peito,perimetro_quadriceps,id_aluno)
VALUES(3,to_date('14/05/2021','dd-mm-yy'), 83, 1.90, 23, 72, 43, 96, 51.7, 3);

INSERT INTO AVALIACOES(id_avaliacao,data_avaliacao,peso,altura,imc,perimetro_cintura,perimetro_biceps,perimetro_peito,perimetro_quadriceps,id_aluno)
VALUES(4,to_date('15/05/2021','dd-mm-yy'), 80, 1.73, 22.1, 66, 38.4, 82, 41.8, 4);

INSERT INTO AVALIACOES(id_avaliacao,data_avaliacao,peso,altura,imc,perimetro_cintura,perimetro_biceps,perimetro_peito,perimetro_quadriceps,id_aluno)
VALUES(5,to_date('16/05/2021','dd-mm-yy'), 55, 1.67, 19.7, 51, 35.5, 80, 46.5, 5);

INSERT INTO AVALIACOES(id_avaliacao,data_avaliacao,peso,altura,imc,perimetro_cintura,perimetro_biceps,perimetro_peito,perimetro_quadriceps,id_aluno)
VALUES(6,to_date('17/05/2021','dd-mm-yy'), 63, 1.54,  26.6, 52, 41.2, 86, 49.1, 6);

INSERT INTO AVALIACOES(id_avaliacao,data_avaliacao,peso,altura,imc,perimetro_cintura,perimetro_biceps,perimetro_peito,perimetro_quadriceps,id_aluno)
VALUES(7,to_date('18/05/2021','dd-mm-yy'), 77, 1.83, 23, 55, 40.9, 89, 45.4, 7);

INSERT INTO AVALIACOES(id_avaliacao,data_avaliacao,peso,altura,imc,perimetro_cintura,perimetro_biceps,perimetro_peito,perimetro_quadriceps,id_aluno)
VALUES(8,to_date('19/05/2021','dd-mm-yy'), 90, 1.79, 28.1, 68.2, 38.5, 86, 43.5, 8);

INSERT INTO AVALIACOES(id_avaliacao,data_avaliacao,peso,altura,imc,perimetro_cintura,perimetro_biceps,perimetro_peito,perimetro_quadriceps,id_aluno)
VALUES(9,to_date('20/05/2021','dd-mm-yy'), 79, 1.87, 22.6, 68, 39.2, 85, 43.4, 9);

INSERT INTO AVALIACOES(id_avaliacao,data_avaliacao,peso,altura,imc,perimetro_cintura,perimetro_biceps,perimetro_peito,perimetro_quadriceps,id_aluno)
VALUES(10,to_date('21/05/2021','dd-mm-yy'), 61, 1.70, 21.1, 62, 39.1, 86, 42.9, 10);

INSERT INTO TREINOS(id_treino,data_inicio,data_termino,id_aluno,id_professor) VALUES(1, to_date('12/05/2021','dd-mm-yy'), to_date('19/05/2021','dd-mm-yy'), 1, 3);
INSERT INTO TREINOS(id_treino,data_inicio,data_termino,id_aluno,id_professor) VALUES(2, to_date('13/05/2021','dd-mm-yy'), to_date('20/05/2021','dd-mm-yy'), 2, 1);
INSERT INTO TREINOS(id_treino,data_inicio,data_termino,id_aluno,id_professor) VALUES(3, to_date('14/05/2021','dd-mm-yy'), to_date('21/05/2021','dd-mm-yy'), 3, 4);
INSERT INTO TREINOS(id_treino,data_inicio,data_termino,id_aluno,id_professor) VALUES(4, to_date('15/05/2021','dd-mm-yy'), to_date('22/05/2021','dd-mm-yy'), 4, 1);
INSERT INTO TREINOS(id_treino,data_inicio,data_termino,id_aluno,id_professor) VALUES(5, to_date('16/05/2021','dd-mm-yy'), to_date('23/05/2021','dd-mm-yy'), 5, 3);
INSERT INTO TREINOS(id_treino,data_inicio,data_termino,id_aluno,id_professor) VALUES(6, to_date('17/05/2021','dd-mm-yy'), to_date('24/05/2021','dd-mm-yy'), 6, 2);
INSERT INTO TREINOS(id_treino,data_inicio,data_termino,id_aluno,id_professor) VALUES(7, to_date('18/05/2021','dd-mm-yy'), to_date('25/05/2021','dd-mm-yy'), 7, 2);
INSERT INTO TREINOS(id_treino,data_inicio,data_termino,id_aluno,id_professor) VALUES(8, to_date('19/05/2021','dd-mm-yy'), to_date('26/05/2021','dd-mm-yy'), 8, 4);
INSERT INTO TREINOS(id_treino,data_inicio,data_termino,id_aluno,id_professor) VALUES(9, to_date('20/05/2021','dd-mm-yy'), to_date('27/05/2021','dd-mm-yy'), 9, 1);
INSERT INTO TREINOS(id_treino,data_inicio,data_termino,id_aluno,id_professor) VALUES(10, to_date('21/05/2021','dd-mm-yy'), to_date('28/05/2021','dd-mm-yy'), 10, 3);

INSERT INTO SERIES(id_treino, id_serie, descricao) VALUES(1, 1, 'TREINAR BRAÇOS');
INSERT INTO SERIES(id_treino, id_serie, descricao) VALUES(1, 2, 'TREINAR PERNAS');
INSERT INTO SERIES(id_treino, id_serie, descricao) VALUES(2, 3, 'TREINO MISTO');
INSERT INTO SERIES(id_treino, id_serie, descricao) VALUES(3, 2, 'TREINAR PERNAS');
INSERT INTO SERIES(id_treino, id_serie, descricao) VALUES(4, 3, 'TREINO MISTO');
INSERT INTO SERIES(id_treino, id_serie, descricao) VALUES(5, 1, 'TREINAR BRAÇOS');
INSERT INTO SERIES(id_treino, id_serie, descricao) VALUES(5, 2, 'TREINAR PERNAS');
INSERT INTO SERIES(id_treino, id_serie, descricao) VALUES(6, 3, 'TREINO MISTO');
INSERT INTO SERIES(id_treino, id_serie, descricao) VALUES(7, 1, 'TREINAR BRAÇOS');
INSERT INTO SERIES(id_treino, id_serie, descricao) VALUES(8, 1, 'TREINAR BRAÇOS');
INSERT INTO SERIES(id_treino, id_serie, descricao) VALUES(9, 2, 'TREINAR PERNAS');
INSERT INTO SERIES(id_treino, id_serie, descricao) VALUES(10, 3, 'TREINO MISTO');

INSERT INTO APARELHOS(id_aparelho,nome,localizacao, foto) VALUES(1,'Esteira','Próxima ao bebedouro', 'https://i.pinimg.com/originals/93/ec/e3/93ece3b67489943fa62bec6e92e2e65f.jpg');
INSERT INTO APARELHOS(id_aparelho,nome,localizacao, foto) VALUES(2,'Bicicleta ergométrica','Próxima ao vestiario', 'https://fisiofernandes.vteximg.com.br/arquivos/ids/162375/bicicleta-ergonomica-horizontal-h2-lateral.png?v=636773579076370000');
INSERT INTO APARELHOS(id_aparelho,nome,localizacao, foto) VALUES(3,'Supino','Próximo ao bebedouro', 'https://i.pinimg.com/originals/46/24/ed/4624ed57d5af83a1295b2e09b6634946.jpg');
INSERT INTO APARELHOS(id_aparelho,nome,localizacao, foto) VALUES(4,'Leg Press','Próximo ao vestiario', 'https://boaforma.abril.com.br/wp-content/uploads/sites/2/2017/08/thinkstockphotos-819906232.jpg');
INSERT INTO APARELHOS(id_aparelho,nome,localizacao, foto) VALUES(5,'Barras fixas','Localizadas no meio da academia', 'https://images.madeiramadeira.com.br/product/images/67504539-barra-fixa-de-parede-e-paralela-4-em-1-multifuncionalprd18yloy48y1ppa-179-6-600x338.jpg?width=900');
INSERT INTO APARELHOS(id_aparelho,nome,localizacao, foto) VALUES(6,'Barras Paralelas','Localizadas no meio da academia', 'https://decathlonpro.vteximg.com.br/arquivos/ids/222824-1000-1000/training-station-100-1.jpg?v=636550118953600000');
INSERT INTO APARELHOS(id_aparelho,nome,localizacao, foto) VALUES(7,'Abdutor','Próximo ao bebedouro', 'https://i.ytimg.com/vi/xruwsAPVa_8/maxresdefault.jpg');
INSERT INTO APARELHOS(id_aparelho,nome,localizacao, foto) VALUES(8,'Aparelho elíptico','Próximo a entrada', 'https://blog.maconequi.com.br/wp-content/uploads/2020/01/aparelho-eliptico.jpg');
INSERT INTO APARELHOS(id_aparelho,nome,localizacao, foto) VALUES(9,'Flexores','Próximo a entrada', 'https://www.feitodeiridium.com.br/wp-content/uploads/2016/09/exercicios-que-nao-farao-falta-cadeira-flexora-2.jpg');
INSERT INTO APARELHOS(id_aparelho,nome,localizacao, foto) VALUES(10,'Extensores','Próximo a entrada', 'https://http2.mlstatic.com/D_NQ_NP_918826-MLB42558559807_072020-O.jpg');
INSERT INTO APARELHOS(id_aparelho,nome,localizacao, foto) VALUES(11,'Steps','Ao lado da sala de dança', 'https://www.fiqueinforma.com/wp-content/uploads/2018/07/aula-de-step-causa-les%C3%B5es-627x376.jpg');
INSERT INTO APARELHOS(id_aparelho,nome,localizacao, foto) VALUES(12,'Jumps','Ao lado da sala de dança', 'https://blogeducacaofisica.com.br/wp-content/uploads/2017/08/jump.jpg');

--TREINO 1° PESSOA--
--SERIE 1--
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(1, 1, 3, 3, 20,'00:01:00');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(1, 1, 5, 2, 20,'00:01:00');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(1, 1, 6, 3, 15,'00:00:30');
--SERIE 2--
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(1, 2, 4, 5, 20,'00:02:00');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(1, 2, 11, 4, 30,'00:01:30');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(1, 2, 2, 4, 10,'00:05:00');

--TREINO 2° PESSOA--
--SERIE 3--
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(2, 3, 7, 6, 15,'00:02:00');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(2, 3, 3, 2, 30,'00:03:00');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(2, 3, 12, 2, 30,'00:00:30');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(2, 3, 8, 6, 50,'00:04:30');

--TREINO 3° PESSOA--
--SERIE 1--
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(3, 2, 4, 5, 20,'00:02:00');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(3, 2, 11, 4, 30,'00:01:30');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(3, 2, 7, 2, 50,'00:03:30');

--TREINO 4° PESSOA--
--SERIE 3--
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(4, 3, 5, 1, 15,'00:02:00');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(4, 3, 9, 2, 30,'00:03:00');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(4, 3, 7, 9, 30,'00:06:00');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(4, 3, 8, 3, 35,'00:04:30');

--TREINO 5° PESSOA--
--SERIE 1--
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(5, 1, 3, 2, 20,'00:00:30');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(5, 1, 9, 3, 15,'00:01:00');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(5, 1, 5, 4, 20,'00:01:30');
--SERIE 2--
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(5, 2, 2, 5, 20,'00:02:00');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(5, 2, 11, 4, 30,'00:01:30');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(5, 2, 4, 4, 10,'00:05:00');

--TREINO 6° PESSOA--
--SERIE 3--
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(6, 3, 3, 2, 20,'00:00:30');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(6, 3, 9, 3, 15,'00:01:00');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(6, 3, 5, 4, 20,'00:01:30');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(6, 3, 1, 2, 30,'00:03:00');


--TREINO 7° PESSOA--
--SERIE 1--
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(7, 1, 3, 2, 20,'00:00:30');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(7, 1, 9, 3, 15,'00:01:00');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(7, 1, 5, 3, 15,'00:02:00');

--TREINO 8° PESSOA--
--SERIE 1--
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(8, 1, 1, 2, 20,'00:00:30');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(8, 1, 9, 4, 15,'00:01:00');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(8, 1, 6, 8, 15,'00:02:00');

--TREINO 9° PESSOA--
--SERIE 2--
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(9, 2, 1, 2, 10,'00:00:30');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(9, 2, 4, 4, 20,'00:01:00');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(9, 2, 12, 2, 30,'00:02:00');

--TREINO 10° PESSOA--
--SERIE 3--
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(10, 3, 4, 6, 30,'00:40:00');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(10, 3, 6, 4, 10,'00:01:00');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(10, 3, 7, 8, 20,'00:02:00');
INSERT INTO SERIES_APARELHOS(id_treino,id_serie,id_aparelho,cargas,repeticoes,descanso) VALUES(10, 3, 9, 3, 15,'00:01:00');

INSERT INTO AULA_REGISTRO(id_aula_registro,data_hora_entrada,data_hora_saida,id_treino,id_serie) VALUES(1,sysdate,sysdate+30,1,2);
INSERT INTO AULA_REGISTRO(id_aula_registro,data_hora_entrada,data_hora_saida,id_treino,id_serie) VALUES(2,sysdate,sysdate+40,2,3);
INSERT INTO AULA_REGISTRO(id_aula_registro,data_hora_entrada,data_hora_saida,id_treino,id_serie) VALUES(3,sysdate,sysdate+30,3,2);
INSERT INTO AULA_REGISTRO(id_aula_registro,data_hora_entrada,data_hora_saida,id_treino,id_serie) VALUES(4,sysdate,sysdate+30,5,2);
INSERT INTO AULA_REGISTRO(id_aula_registro,data_hora_entrada,data_hora_saida,id_treino,id_serie) VALUES(5,sysdate,sysdate+30,7,1);