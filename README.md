# RWC
RWC (Reformas White Comet) é um banco de dados pessoal destinado ao monitoramento de peças e reformas do meu Corsa 1998. Seu objetivo é aplicar conceitos de SQL e bancos de dados relacionais para registrar e acompanhar a troca de peças e as reformas realizadas, organizando as informações em tabelas e colunas.

O RWC é um banco de dados inicial e propositalmente básico, que pretendo usar tanto para monitorar as manutenções do meu carro quanto para avaliar minhas próprias habilidades profissionais em tratamento e análise de dados, utilizando diversas ferramentas da área — começando de forma simples, com SQL e VS Code, e evoluindo gradualmente ao longo do tempo.


# TABELA PEÇAS

É onde são armazenadas todas as peças que considero necessário manter sob observação especial, para avaliar posteriormente a necessidade de substituí-las ou não.




## INSERIR_PEÇAS.SQL
---> Finalidade: realizar o cadastro de peças na tabela peças, armazenando suas informações de identificação e aquisição.

### PRINCIPAIS FUNCIONALIDADES:
 Inserir o nome e a marca das peças.

 Registrar preços e links de compra.

 Permitir diferentes opções de uma mesma peça, com marcas, preços e links distintos.

 Gerar automaticamente identificadores exclusivos por meio de AUTO_INCREMENT.

 ### PRINCIPAIS COMANDOS SQL:

INSERT INTO: inserir novos registros.

VALUES: definir os valores que serão cadastrados.

# TABELA TROCADAS
Peças que deverão ser transferidas para esta tabela após serem compradas e substituídas.

## INSERIR_TROCADAS.SQL

---> Finalidade: registrar na tabela trocadas as peças efetivamente substituídas, mantendo seu relacionamento com o cadastro original da tabela peças.

### PRINCIPAIS FUNCIONALIDADES:

Identificar a peça selecionada por meio de ID_PECA (FK).

Registrar automaticamente a data da substituição.

Preservar a marca, o preço e o link associados à substituição.

Gerar um identificador exclusivo para cada substituição por meio de ID_TROCADA (PK + AUTO_INCREMENT).

Permitir múltiplas substituições relacionadas à mesma peça, mantendo um histórico individual.



### PRINCIPAIS COMANDOS SQL:

INSERT INTO: inserir um novo registro de substituição.

SELECT: recuperar informações da peça cadastrada.

FROM: determinar a tabela de origem dos dados.

WHERE: selecionar a peça pelo seu ID.

CURRENT_DATE(): obter a data atual para registrar a substituição.




