# Projeto AV1 de Banco de Dados

Este projeto foi desenvolvido para a AV1 de Banco de Dados. O objetivo era criar um banco de dados relacional para gerenciar um sistema de aluguel de carros. O banco de dados inclui várias tabelas que armazenam informações sobre clientes, funcionários, veículos, movimentos (aluguéis), oficinas e telefones.

## Modelagem do Banco de Dados

A modelagem do banco de dados foi realizada em duas etapas: a criação do modelo conceitual e do modelo lógico, ambos desenvolvidos usando o BrModelo.

- **Modelo Conceitual**: Esta é a primeira etapa da modelagem de dados. Nesta etapa, identificamos as entidades (ou objetos) que são importantes para o domínio que estamos modelando, bem como as relações entre essas entidades. No nosso caso, as entidades seriam Cliente, Funcionario, Movimento, Veiculo, Oficina e Telefone.

- **Modelo Lógico**: Após a criação do modelo conceitual, passamos para a criação do modelo lógico. Nesta etapa, transformamos as entidades e relações identificadas no modelo conceitual em tabelas que podem ser implementadas em um banco de dados relacional. As entidades se tornam tabelas e as relações se tornam chaves estrangeiras nas tabelas.

## Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes tabelas:

- **Cliente**: Armazena informações sobre os clientes, incluindo data de nascimento, telefone e CPF.
- **Funcionario**: Armazena informações sobre os funcionários, incluindo nome e cargo.
- **Movimento**: Armazena informações sobre os aluguéis, incluindo o funcionário responsável, o veículo alugado, o cliente, o valor do aluguel e as datas de retirada e devolução.
- **Veiculo**: Armazena informações sobre os veículos disponíveis para aluguel, incluindo a placa, marca, modelo, cor, ano e status.
- **Oficina**: Armazena informações sobre os serviços realizados nas oficinas, incluindo lavagem e manutenção.
- **Telefone**: Armazena números de telefone.

Além disso, existem várias tabelas de junção para gerenciar as relações entre as tabelas principais.

## Consultas SQL

Durante o desenvolvimento do projeto, foram realizadas várias consultas SQL para testar a funcionalidade do banco de dados. Por exemplo:

```sql
-- 1. Selecionar todos os clientes
SELECT * FROM Cliente;


-- 2. Selecionar todos os funcionários que são vendedores
SELECT * FROM Funcionario WHERE CARGO = 'Vendedor';


-- 3. Selecionar todos os veículos que estão disponíveis
SELECT * FROM Veiculo WHERE STATUS = 'Disponível';


-- 4. Selecionar todos os movimentos (aluguéis) que ainda não foram devolvidos
SELECT * FROM Movimento WHERE DEVOLUCAO IS NULL;


-- 5. Selecionar o número de telefone de um cliente específico (por exemplo, o cliente com ID_CLI = 1)
SELECT TELEFONE FROM Cliente JOIN Telefone ON Cliente.fk_TELEFONE_TELEFONE_PK = Telefone.TELEFONE_PK WHERE ID_CLI = 1;


-- 6. Selecionar todos os movimentos (aluguéis) realizados por um funcionário específico (por exemplo, o funcionário com ID_FUNC = 1)
SELECT * FROM Movimento WHERE ID_FUNC = 1;


-- 7. Atualizar o status de um veículo para 'Indisponível' (por exemplo, o veículo com ID_VEIC = 1)
UPDATE Veiculo SET STATUS = 'Indisponível' WHERE ID_VEIC = 1;


-- 8. Deletar um registro de telefone (por exemplo, o telefone com TELEFONE_PK = 1)
DELETE FROM Telefone WHERE TELEFONE_PK = 1;
```

## Conclusão

Este projeto foi uma ótima oportunidade para aplicar e aprofundar meus conhecimentos em SQL e design de banco de dados. Através da criação dos modelos conceitual e lógico no BrModelo até a implementação das tabelas e consultas SQL no banco de dados relacional, cada etapa do projeto me permitiu entender melhor como os bancos de dados são projetados e implementados na prática. Estou ansioso para continuar desenvolvendo minhas habilidades nesta área!