/*
    Definição de uma chave estrangeira
    
    Amanda é engenheira de dados e está fazendo a implementação de um modelo relacional na sua empresa. Ela já criou a tabela TB_DEPENDENTE, entretanto ainda não definiu a chave estrangeira cujo o nome do campo é CPF_FUNCIONARIO. Esse campo fará referência à coluna CPF da tabela TB_FUNCIONARIO. Ela também já sabe que o apelido da restrição será tb_funcionario_tb_dependente_fk. Qual é o comando em SQL que Amanda pode usar para criar essa chave estrangeira?

        Amanda pode usar o comando ALTER TABLE para alterar a tabela TB_DEPENDENTE, permitindo que seja indicada a chave estrangeira através do comando FOREIGN KEY.
*/
ALTER TABLE  TB_DEPENDENTE 
ADD CONSTRAINT tb_funcionario_tb_dependente_fk
FOREIGN KEY (CPF_FUNCIONARIO)  
REFERENCES TB_FUNCIONARIO (CPF)
ON DELETE  NO ACTION 
ON UPDATE NO ACTION;


/*
    Desativar chave estrangeira
    
    Pierre é engenheiro de dados em uma empresa de logística e está participando do preenchimento de dados nas tabelas usando a linguagem SQL no MySQL. Todas as tabelas já foram criadas e as chaves primárias e estrangeiras também já foram definidas. Mas, antes de preencher qualquer tabela com as informações, qual comando Pierre deve usar para desativar as restrições de chave estrangeira para prosseguir com a inserção das linhas?

        O comando SET FOREIGN_KEY_CHECKS = 0; desativa as restrições de chave estrangeira, permitindo inserir informações em quaisquer tabelas.
*/
SET FOREIGN_KEY_CHECKS = 0;


/*
    Maneiras de inserir informações

    Manuela é desenvolvedora junior em uma empresa de consultoria e está implementando um modelo relacional para seu cliente Filmefix, uma empresa de streaming de filmes e séries. Usando a linguagem SQL com o MySQL, ela já criou todas as tabelas e relações. Entretanto algumas informações ficaram pendentes para serem inseridas. Como Manuela pode fazer a inserção das linhas abaixo na tabela Filmes?

    Id_filme    Nome                        Lançamento      Duração     Gênero
    1           Toy Story                   1995-12-22      81          Aventura
    2           O Silêncio dos Inocentes    1991-05-17      118         Suspense
    3           Coringa                     2019-10-03      122         Drama

        É possível fazer a inserção de várias linhas em uma única execução.
        Podemos inserir cada uma das três linhas em diferentes inserções.
        Se os campos forem inseridos em ordens diferentes das colunas da tabela, basta declarar qual é a ordem das informações com o nome dos campos antes do comando VALUES.
*/
INSERT INTO FILMES VALUES
(1, "Toy Story"               , '1995-12-22', 81 , "Aventura"),
(2, "O Silêncio dos Inocentes", '1991-05-17', 118, "Suspense"),
(3, "Coringa"                 , '2019-10-03', 122, "Drama");

INSERT INTO FILMES VALUES
(1, "Toy Story"               , '1995-12-22', 81 , "Aventura"); 
INSERT INTO FILMES VALUES
(2, "O Silêncio dos Inocentes", '1991-05-17', 118, "Suspense"); 
INSERT INTO FILMES VALUES
(3, "Coringa"                 , '2019-10-03', 122, "Drama"); 

INSERT INTO FILMES (Nome, Gênero, Lançamento, Duração, Id_filme) VALUES
("Toy Story"                , "Aventura" , '1995-12-22', 81 , 1),
("O Silêncio dos Inocentes" , "Suspense" , '1991-05-17', 118, 2),
("Coringa"                  , "Drama"    , '2019-10-03', 122, 3);


/*
    Selecionando informações

    Bianca é cientista de dados em uma empresa de consultoria e precisa de uma lista com o nome dos projetos (NOME) cadastrados na tabela TB_PROJECT para repassar para a liderança. Quais comandos em SQL Bianca pode usar para retirar essa informação?

        Com a primemira consulta Bianca consegue uma tabela com uma coluna dos nomes de projetos.
        Na segunda opção é selecionado apenas o campo NOME da tabela TB_PROJECT e para ficar mais explicativo, esse campo foi apelidado para “Nome dos projetos”.
*/
SELECT NOME FROM TB_PROJECT
SELECT NOME AS 'NOME DOS PROJETOS' FROM TB_PROJECT


/*
    Analisando consultas

    Giovanna está supervisionando um projeto que coleta dados em diversas tabelas usando a linguagem SQL. Ela foi verificar os códigos feitos pelas pessoas da equipe para entender quais informações estão sendo coletadas. Quais das análises abaixo estão corretas?

        Na primeira consulta aparece o nome das pessoas que possuem idade maior que 20 anos, que são do Distrito Federal ou do Rio de Janeiro.
        Na segunda consulta a cláusula WHERE filtra as linhas, nesse caso a tabela mostra apenas as informações em que Local_Projeto = 'Mauá'.
*/
SELECT NOME FROM TB_PESSOAS WHERE IDADE > 20 AND (ESTADO = 'DF' OR ESTADO = 'RJ');
SELECT * FROM tb_projeto WHERE Local_Projeto = 'Mauá';


/*
    Eliminando linhas duplicadas

    Na empresa da Carol alguns processos estão sendo migrados de planilhas para o SQL. A tabela de histórico de vendas foi criada em um SGBD e já foi preenchida com o histórico de vendas da empresa. Carol estava acostumada a remover linhas duplicadas nas planilhas para identificar o nome dos vendedores que realizaram pelo menos uma venda. Como ela pode eliminar os vendedores duplicados da tabela TB_VENDAS usando a linguagem SQL?

        O comando SELECT DISTINCT remove as duplicadas e mostra os valores distintos em relação ao campo ID_VENDEDORES
        Carol também pode usar esse comando usando o SELECT DISTINCT ordenado pelo campo ID_VENDEDORES.
*/
SELECT DISTINCT ID_VENDEDORES FROM TB_VENDA ORDER BY ID_VENDEDORES
SELECT DISTINCT ID_VENDEDORES FROM TB_VENDA


/*
    Deletando informações

    Esther é cientista de dados na área de RH de uma multinacional e precisou realizar uma alteração na tabela TB_FUNCIONARIOS na qual a coluna CPF é chave primária, para isso ela usou o código abaixo. O que aconteceu após Esther executar este código?

        Uma linha específica da tabela TB_FUNCIONARIOS foi excluída. Como CPF é chave primária, ou seja, um registro único, foi excluído um funcionário da tabelaTB_FUNCIONARIOS, ou seja, a linha cujo o campo CPF for igual à 757.170.810-90 não estará mais na tabela após a execução.
*/
DELETE FROM TB_FUNCIONARIOS  WHERE CPF = "757.170.810-90";


/*
    Juntando tabelas

    Bruna é analista de dados na escola AluraSchool e está analisando uma base de dados que contém a tabela Estudantes_recentes. Essa tabela descreve as pessoas calouras que irão estudar no próximo semestre. Além disso, também possui a tabela Turmas com as informações das turmas da escola. Para montar um relatório, ela escreveu as diferentes consultas abaixo. Analise e marque as expectativas corretas.

    ESTUDANTES RECENTES
    id	nome	idade	matrícula	id_turma
    1	Jorge	16  	1	        450
    2	Alice	14	    0	
    3	Beatriz	13	    1	        233
    4	João	12	    1       	233
    5	Valéria	14	    0

    TURMAS
    id_turma	nivel	lotação
    200	        1	    0
    233     	1   	1
    450     	2	    0
    589     	3	    0
    788	        3	    0

        Na primeira consulta as turmas 450 e 233, vão receber alguns estudantes da tabela ESTUDANTES_RECENTES e o comando INNER JOIN mostra apenas as turmas que estão na tabelas que contêm as pessoas novatas.
        Com a segunda consulta podemos exibir o nível dos alunos que já estão alocados em alguma turma. Para aqueles que não possuem turma ainda, será mostrado null.
*/
SELECT TURMAS.ID_TURMA
FROM TURMAS INNER JOIN ESTUDANTES_RECENTES
ON TURMAS.ID_TURMA = ESTUDANTES_RECENTES.ID_TURMA

SELECT A.NOME, TURMAS.NIVEL 
FROM ESTUDANTES_RECENTES A LEFT JOIN TURMAS
ON TURMAS.ID_TURMA = A.ID_TURMA