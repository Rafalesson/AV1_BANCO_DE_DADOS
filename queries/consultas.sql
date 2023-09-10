
-- 1. Selecionar todos os clientes

SELECT * FROM Cliente;


-- 2. Selecionar todos os funcionários que são vendedores

SELECT * FROM Funcionario WHERE CARGO = 'Vendedor';


-- 3. Selecionar todos os veículos que estão disponíveis

SELECT * FROM Veiculo WHERE STATUS = 'Disponível';


-- 4. Selecionar todos os movimentos (aluguéis) que ainda não foram devolvidos

SELECT * FROM Movimento WHERE DEVOLUCAO IS NULL;


-- 5. Selecionar o número de telefone de um cliente específico (por exemplo, o cliente com ID_CLI = 1)

SELECT TELEFONE FROM Cliente JOIN Telefone ON Cliente.fk_TELEFONE_TELEFONE = Telefone.TELEFONE_PK WHERE ID_CLI = 1;


-- 6. Selecionar todos os movimentos (aluguéis) realizados por um funcionário específico (por exemplo, o funcionário com ID_FUNC = 1)

SELECT * FROM Movimento WHERE ID_FUNC = 1;


-- 7. Atualizar o status de um veículo para 'Indisponível' (por exemplo, o veículo com ID_VEIC = 1)

UPDATE Veiculo SET STATUS = 'Indisponível' WHERE ID_VEIC = 1;


-- 8. Deletar um registro de telefone (por exemplo, o telefone com TELEFONE_PK = 1)

DELETE FROM Telefone WHERE TELEFONE_PK = 1;