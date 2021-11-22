-----------------------------------------------------------------------------------------------------------------
/*
A) 5 consultas básicas envolvendo, no conjunto, necessariamente os comandos distinct,
order by, count(*), like, in e funções de manipulação de datas, em qualquer
combinação
*/
-----------------------------------------------------------------------------------------------------------------

--1--Consultar a quantidade de registros presentes na tabela alunos 

SELECT COUNT(*) quantidade_alunos
FROM alunos;

/*

Resultado: 

    10

*/

--2--Consultar todos os pesos presentes na tabela avaliações

SELECT DISTINCT peso
FROM avaliacoes;

/*
Resultado:

    70
    78
    83
    80
    55
    63
    77
    90
    79	
    61
*/

--3--Consultar o numero de identificação dos treinos e suas datas de inicio ondernando as mesmas de forma crescente

SELECT id_treino, data_inicio
FROM treinos
ORDER BY data_inicio ASC;

/*

Resultado: 

    1   12/05/2021
    2   13/05/2021
    3   14/05/2021
    4   15/05/2021
    5   16/05/2021
    6	17/05/2021
    7	18/05/2021
    8	19/05/2021
    9	20/05/2021
    10  21/05/2021
*/


--4--Consultar o cpf dos alunos Diego Souza e Seu Lucas Silva:

SELECT cpf
FROM alunos
WHERE nome IN ('Diego Souza', 'Lucas Silva');

/*

Resultado: 

    01228232800
    26548932102
*/


--5-- Consultar o nome completo do professor que possui as letras inicial do nome sendo R

SELECT nome
FROM professores
WHERE nome LIKE 'R%';

/*

Resultado: 

    Renato Portaluppi

*/

-----------------------------------------------------------------------------------------------------------------
/*
B) 4 consultas envolvendo, no conjunto, junçoes entre 2, 3 e 4 tabelas, incluindo pelo
uma com outer join
*/
-----------------------------------------------------------------------------------------------------------------

--1--Consultar o nome do aluno, id do treino realizado e a descricao da serie somente dos treinos que tiveram inicio entre 06/05/2021 16/05/2021

select 
    alunos.nome , treinos.id_treino, series.descricao 
from
    alunos
full outer join treinos 
    on treinos.id_aluno = alunos.id_aluno
full outer join series 
    on series.id_treino = treinos.id_treino
where 
    treinos.data_inicio between '06/05/2021' and '16/05/2021';



/*

Resultado: 

Diego Souza    1    TREINAR BRAÇOS
Diego Souza    1    TREINAR PERNAS
Lucas Silva    2    TREINO MISTO
Ricardinho    3    TREINAR PERNAS
Godofredo    4    TREINO MISTO
Fredinson    5    TREINAR BRAÇOS
Fredinson    5    TREINAR PERNAS
*/


--2--Consultar o nome a identificaçao do treino dos alunos que possuem aulas com o professor Mauricio Spindola.
select 
    alunos.nome, treinos.id_treino, avaliacoes.peso
from
    alunos
join avaliacoes 
    on avaliacoes.id_aluno = alunos.id_aluno
join treinos 
    on treinos.id_aluno = alunos.id_aluno
join series 
    on series.id_treino = treinos.id_treino
where 
    avaliacoes.peso > 75;
/*

Resultado: 
Paula    7        77
Georgia    8        90
Ricardinho    3    83
Sofia    9        79
Lucas Silva    2    78
Godofredo    4    80
    

*/

--3--Consultar o nome e peso do aluno que contem IMC entre 20 e 25.
select 
    alunos.nome, avaliacoes.peso
from
    alunos
inner join treinos 
    on treinos.id_aluno = alunos.id_aluno
inner join series 
    on series.id_treino = treinos.id_treino
inner join professores
    on treinos.id_professor = professores.id_professor
inner join avaliacoes
    on alunos.id_aluno = avaliacoes.id_aluno
where 
    avaliacoes.imc between 20.0 and 25.0;
/*

Resultado: 

Diego Souza    70
Paula        77
Diego Souza    70
Ricardinho    83
Sofia        79
Lucas Silva    78
Godofredo    80
Caroline    61

*/

--4--Consultar a data da avaliacao o peso, altura, imc e nome do aluno que esta vinculado ao professor com ID = 1.
select 
    avaliacoes.data_avaliacao, avaliacoes.peso, avaliacoes.altura, avaliacoes.imc, alunos.nome
from
    series
inner join treinos 
    on treinos.id_treino = series.id_treino
inner join alunos 
    on alunos.id_aluno = treinos.id_aluno
inner join avaliacoes
    on avaliacoes.id_aluno = alunos.id_aluno
right join professores
    on professores.id_professor = treinos.id_professor
where 
    professores.id_professor = 1;

/*

Resultado: 

20/05/21    79    1,87    22,6    Sofia
13/05/21    78    1,86    22,5    Lucas Silva
15/05/21    80    1,73    22,1    Godofredo

*/
-----------------------------------------------------------------------------------------------------------------
/*
C) 2 consultas envolvendo funções de agregação com group by e having
*/
-----------------------------------------------------------------------------------------------------------------

--1--Consultar a quantidade de alunos que possui o professor de identificação(ID) 4

SELECT COUNT(id_aluno)
FROM treinos
GROUP BY id_professor
HAVING id_professor = 4;

/*

Resultado: 

    2 

*/

--2--Consultar a quantidade de avaliações que possui o aluno de identificação(ID) 7

SELECT COUNT(id_avaliacao)
FROM avaliacoes
GROUP BY id_aluno
HAVING id_aluno = 7;

/*

Resultado: 

    1

*/
-----------------------------------------------------------------------------------------------------------------
/*
D) 2 consultas envolvendo operadores de conjuntos
*/
-----------------------------------------------------------------------------------------------------------------
--1--Consultar o nome de todos alunos e de todos professores
    
SELECT nome  FROM alunos
UNION
SELECT nome  FROM professores;

/*

Resultado: 
Diego Souza
Lucas Silva    
Ricardinho
Godofredo
Fredinson
Roberta
Paula
Georgia
Sofia
Caroline
Renato Portaluppi
Tite
Luiz Felipe Scolari
Tiago Nunes
*/

--2--Consultar todas as datas de nascimento e todas as datas de avaliações encontradas

SELECT data_nascimento  FROM alunos
UNION
SELECT data_avaliacao FROM avaliacoes;

/*

Resultado: 

    12/12/1995
    12/11/1985
    12/10/1975
    09/11/1987
    25/12/1999
    06/08/1998
    30/08/1977
    02/01/1965
    05/03/1982
    11/07/1984
    11/05/2021
    13/05/2021
    14/05/2021
    15/05/2021
    16/05/2021
    17/05/2021
    18/05/2021
    19/05/2021
    20/05/2021
    21/05/2021

*/
-----------------------------------------------------------------------------------------------------------------
/*
E) 2 consultas envolvendo sub-consultas
*/
-----------------------------------------------------------------------------------------------------------------

/*
1- Consultar o numero de identificação do aluno e data de sua avaliação para o aluno que possua altura de 1.90
e peso acima do peso do aluno que contenha o codigo de identificação 7
*/

select avaliacoes.id_aluno, data_avaliacao
from avaliacoes
where avaliacoes.altura = 1.90 and avaliacoes.peso > (
    select aval1.peso
    from avaliacoes aval1
    where aval1.id_avaliacao = 7
);

/*

Resultado: 

     3 14/05/2021

*/


/*
2- Consultar a quantidade de alunos da tabela alunos que tem data de nascimento 
maior do que a data de nascimento do aluno de id = 2
*/

SELECT COUNT(*) quantidade_alunos
FROM alunos
WHERE data_nascimento > 
    (SELECT data_nascimento
     FROM alunos   
     WHERE id_aluno = 2);

/*

Resultado: 

   4

*/
