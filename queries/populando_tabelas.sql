INSERT INTO TELEFONE (TELEFONE) VALUES
('81999999999'),
('81988888888'),
('81977777777'),
('81966666666'),
('81955555555');

INSERT INTO Cliente (DATA_NASC, fk_TELEFONE_TELEFONE_PK, CPF) VALUES
('1990-01-01', 1, '12345678901'),
('1991-02-02', 2, '23456789012'),
('1992-03-03', 3, '34567890123'),
('1993-04-04', 4, '45678901234'),
('1994-05-05', 5, '56789012345');

INSERT INTO Funcionario (NOME_FUNC, CARGO) VALUES
('João Silva', 'Gerente'),
('Maria Santos', 'Vendedor'),
('Pedro Oliveira', 'Vendedor'),
('Ana Souza', 'Vendedor'),
('Lucas Costa', 'Vendedor');

INSERT INTO Veiculo (PLACA, MARCA, MODELO, COR, ANO, STATUS) VALUES
('ABC1234', 'Ford', 'Fiesta', 'Preto', 2010, 'Disponível'),
('DEF5678', 'Chevrolet', 'Onix', 'Branco', 2015, 'Disponível'),
('GHI9012', 'Volkswagen', 'Gol', 'Prata', 2012, 'Disponível'),
('JKL3456', 'Fiat', 'Uno', 'Vermelho', 2013, 'Disponível'),
('MNO7890', 'Renault', 'Sandero', 'Azul', 2014, 'Disponível');

INSERT INTO Movimento (ID_FUNC, ID_VEIC, ID_CLI, ALUGUEL, RETIRADA, DEVOLUCAO) VALUES
(1, 1, 1, 100.00, '2023-09-01', NULL),
(2, 2, 2, 120.00, '2023-09-02', NULL),
(3, 3, 3, 130.00, '2023-09-03', NULL),
(4, 4, 4, 140.00,'2023-09-04' , NULL),
