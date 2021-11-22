create or replace TRIGGER calcular_imc_auto 
BEFORE INSERT OR UPDATE OF peso, altura ON AVALIACOES 
FOR EACH ROW
BEGIN
   :NEW.imc := (:NEW.peso/POWER(:NEW.altura, 2));
END;

INSERT INTO ALUNOS(id_aluno,cpf,nome,sexo,data_nascimento) 
VALUES(11,82564539812,'Novo Aluno', 'F', to_date('18/05/1999','dd-mm-yy'));

INSERT INTO AVALIACOES(id_avaliacao,data_avaliacao,peso,altura,perimetro_cintura,perimetro_biceps,perimetro_peito,perimetro_quadriceps,id_aluno)
VALUES(11,to_date('21/05/2021','dd-mm-yy'), 61, 1.70, 62, 39.1, 86, 42.9, 11);
