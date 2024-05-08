-- Criação das Tabelas


CREATE TABLE DimProduto (
    ProdutoID INT NOT NULL,
    Nome VARCHAR(100),
    Categoria VARCHAR(50),
    Fabricante VARCHAR(100),
    Preco DECIMAL(10,2)
);

CREATE TABLE DimLocalizacaoLoja (
    LojaID INT NOT NULL,
    Pais VARCHAR(50),
    Cidade VARCHAR(50),
    Endereco VARCHAR(100)
);

CREATE TABLE DimCliente (
    ClienteID INT NOT NULL,
    Nome VARCHAR(100),
    Idade INT,
    Sexo VARCHAR(10)
);

CREATE TABLE DimTempo (
    DataID INT NOT NULL,
    Data DATE,
    DiaSemana VARCHAR(20),
    Mes VARCHAR(20),
    Ano INT
);

CREATE TABLE FatoVendas (
    VendaID INT NOT NULL,
    ProdutoID INT,
    LojaID INT,
    ClienteID INT,
    DataID INT,
    QuantidadeVendida INT,
    ValorTotal DECIMAL(10,2)
);

-- Inserção de dados

INSERT INTO DimProduto (ProdutoID, Nome, Categoria, Fabricante, Preco)
VALUES
    (1, 'Smartphone', 'Eletrônicos', 'Samsung', 899.99),
    (2, 'Notebook', 'Eletrônicos', 'Dell', 1299.99),
    (3, 'Smart TV', 'Eletrônicos', 'LG', 699.99),
    (4, 'Tablet', 'Eletrônicos', 'Apple', 599.99);

INSERT INTO DimLocalizacaoLoja (LojaID, Pais, Cidade, Endereco)
VALUES
    (1, 'Brasil', 'São Paulo', 'Avenida Paulista, 123'),
    (2, 'Brasil', 'Rio de Janeiro', 'Rua da Lapa, 456'),

INSERT INTO DimCliente (ClienteID, Nome, Idade, Sexo, Telefone)
VALUES
    (1, 'João', 30, 'M', '+55 11 9999-8888'),
    (2, 'Maria', 25, 'F', '+55 21 9876-5432'),

INSERT INTO DimTempo (DataID, Data, DiaSemana, Mes, Ano)
VALUES
    (1, '2024-04-01', 'Segunda-feira', 'Abril', 2024),
    (2, '2024-04-02', 'Terça-feira', 'Abril', 2024),
    (3, '2024-04-03', 'Quarta-feira', 'Abril', 2024);

INSERT INTO FatoVendas (VendaID, ProdutoID, LojaID, ClienteID, DataID, QuantidadeVendida, ValorTotal)
VALUES
    (1, 1, 1, 1, 1, 2, 1799.98),
    (2, 2, 2, 2, 2, 1, 1299.99),
    (3, 3, 3, 3, 3, 3, 2099.97),
    (4, 4, 4, 4, 1, 1, 599.99);

INSERT INTO DimProduto (ProdutoID, Nome, Categoria, Fabricante, Preco)
VALUES
    (5, 'Iphone 11 128gb', 'Smartphone', 'Apple', 2600.00),
    (6, 'Iphone 12 128gb', 'Smartphone', 'Apple', 3100.00),
    (7, 'Iphone 13 256gb', 'Smartphone', 'Apple', 4600.00),
    (8, 'Iphone 14 256gb', 'Smartphone', 'Apple', 5000.00),
    (9, 'Iphone 11 256gb', 'Smartphone', 'Apple', 2900.00),
    (10, 'Iphone 12 256gb', 'Smartphone', 'Apple', 3300.00),
    (11, 'Iphone 13 512gb', 'Smartphone', 'Apple', 5200.00),
    (12, 'Iphone 14 512gb', 'Smartphone', 'Apple', 6200.00),
    (13, 'Iphone 15 512gb', 'Smartphone', 'Apple', 7500.00);

INSERT INTO DimProduto (ProdutoID, Nome, Categoria, Fabricante, Preco)
VALUES
    (14, 'Xiaomi 14 256gb', 'Smartphone', 'Xiaomi', 6900.00),
    (15, 'Xiaomi 14 512gb', 'Smartphone', 'Xiaomi', 7500.00),	
    (16, 'Redmi Note 12 128gb', 'Smartphone', 'Xiaomi', 1300.00),	
    (17, 'Redmi Note 12 256gb', 'Smartphone', 'Xiaomi', 1500.00),
    (18, 'Redmi Note 11s 128gb', 'Smartphone', 'Xiaomi', 1700.00),
    (19, 'Redmi Note 11s 256gb', 'Smartphone', 'Xiaomi', 2000.00),
    (20, 'Redmi 13C 128 gb', 'Smartphone', 'Xiaomi', 1000.00),
    (21, 'Redmi Note 13 256gb', 'Smartphone', 'Xiaomi', 2100.00);


INSERT INTO DimProduto (ProdutoID, Nome, Categoria, Fabricante, Preco)
VALUES
    (22, 'Galaxy A34 128gb', 'Smartphone', 'Samsung', 1200.00),
    (23, 'Galaxy A34 256gb', 'Smartphone', 'Samsung', 1600.00),
    (24, 'Galaxy Z flip4 128gb', 'Smartphone', 'Samsung', 3400.00),
    (25, 'Galaxy Z flip4 256gb', 'Smartphone', 'Samsung', 3600.00),
    (26, 'Galaxy S22 128gb', 'Smartphone', 'Samsung', 2800.00),
    (27, 'Galaxy S22 256gb', 'Smartphone', 'Samsung', 3200.00),
    (28, 'Galaxy S22 Ultra 512gb', 'Smartphone', 'Samsung', 6600.00),
    (29, 'Galaxy A54 128gb', 'Smartphone', 'Samsung', 1700.00),	
    (30, 'Galaxy A54 256gb ', 'Smartphone', 'Samsung', 1900.00),	
    (31, 'Galaxy M34 128gb ', 'Smartphone', 'Samsung', 1100.00),
    (32, 'Galaxy M34 256gb ', 'Smartphone', 'Samsung', 1300.00);

INSERT INTO DimProduto (ProdutoID, Nome, Categoria, Fabricante, Preco)
VALUES
    (33, 'Smart TV Crystal 43 4K', 'TV', 'Samsung', 1800.00),
    (34, 'Smart TV TV LED 60 4k Bluetooth', 'TV', 'Samsung', 2800.00),
    (35, 'Smart TV Samsung 32 Tizen', 'TV', 'Samsung', 1200.00);

INSERT INTO DimProduto (ProdutoID, Nome, Categoria, Fabricante, Preco)
VALUES
    (36, 'Smart TV 55" 4K LG Alexa Bluetooth', 'TV', 'LG', 2500.00),
    (37, 'Smart TV LG 43 4K UHD HDR Led Wi-Fi ', 'TV', 'LG', 1600.00);

INSERT INTO DimProduto (ProdutoID, Nome, Categoria, Fabricante, Preco)
VALUES
    (38, 'Smart TV TCL QLED 55" 4K UHD C645', 'TV', 'Philips', 2500.00),
    (39, 'Smart TV 65 UHD 4K Philips ', 'TV', 'Philips', 2900.00),
    (40, 'Smart Tv Philips 55" Ambilight The One Led 4k Uhd', 'TV', 'Philips', 3300.00),

INSERT INTO DimProduto (ProdutoID, Nome, Categoria, Fabricante, Preco)
VALUES
    (41, 'Console Microsoft Xbox Series S 512GB', 'Video Game', 'Xbox', 2300.00),
    (42, 'Console Microsoft Xbox Series S 512GB 2 controles', 'Video Game', 'Xbox', 2700.00),
    (43, 'Xbox - Série S - 1TB (preto)', 'Video Game', 'Xbox', 2900.00),
    (44, 'Console Xbox Series X 1tb', 'Video Game', 'Xbox', 3700.00);

INSERT INTO DimProduto (ProdutoID, Nome, Categoria, Fabricante, Preco)
VALUES
    (45, 'Playstation 4 1tb Slim', 'Video Game', 'Sony', 2300.00),
    (46, 'Sony Playstation 4 Slim 1tb Mega Pack', 'Video Game', 'Sony', 2500.00),
    (46, 'Console PlayStation 5 + Marvels Spider-Man 2', 'Video Game', 'Sony', 3900.00),
    (47, 'Console PlayStation 5', 'Video Game', 'Sony', 3600.00);

INSERT INTO DimProduto (ProdutoID, Nome, Categoria, Fabricante, Preco)
VALUES
    (48, 'Nintendo Switch, Nacional, V2', 'Video Game', 'Nintendo', 1800.00),
    (49, 'Nintendo Switch OLED', 'Video Game', 'Nintendo', 2300.00),
    (50, 'Nintendo - Switch Lite', 'Video Game', 'Nintendo', 1200.00);

-- inserindo produtos

INSERT INTO DimLocalizacaoLoja (LojaID, Pais, Cidade, Endereco)
VALUES
    (1, 'Brasil', 'Monte Sião', 'Maurício Zucato, 111'),
    (2, 'Brasil', 'Águas de Lindóia', 'Prof. Carolina Froés Mendes, 321'),
    (3, 'Brasil', 'Socorro', 'Avenida José Maria de Faria, 71'),
    (4, 'Brasil','Itapira', 'João de Moraes, 490');

--inserindo lojas e cidades

--inserindo clientes

INSERT INTO DimCliente (ClienteID, Nome, Idade, Sexo, Telefone)
VALUES 
    (101, 'Maria Silva', 35, 'F', '+55 11 98765-4321'),
    (102, 'João Oliveira', 28, 'M', '+55 21 99876-5432'),
    (103, 'Ana Santos', 45, 'F', '+55 11 91234-5678'),
    (104, 'Pedro Souza', 30, 'M', '+55 11 92345-6789'),
    (105, 'Carla Pereira', 40, 'F', '+55 21 93456-7890'),
    (106, 'Marcos Lima', 32, 'M', '+55 11 94567-8901'),
    (107, 'Larissa Fernandes', 25, 'F', '+55 21 95678-9012'),
    (108, 'Ricardo Almeida', 38, 'M', '+55 11 96789-0123'),
    (109, 'Patrícia Costa', 42, 'F', '+55 21 97890-1234'),
    (110, 'Lucas Santos', 27, 'M', '+55 11 98901-2345');

--inserindo clientes

--inserindo datas 

DECLARE @DataInicio DATE = '2024-04-01';
DECLARE @DataFim DATE = '2024-04-30';

DECLARE @DataAtual DATE = @DataInicio;

-- Loop para inserir os dias do mês de abril
WHILE @DataAtual <= @DataFim
BEGIN
    INSERT INTO DimTempo (DataID, Data, DiaSemana, Mes, Ano)
    VALUES (DATEPART(DAY, @DataAtual), @DataAtual, DATENAME(WEEKDAY, @DataAtual), 'Abril', YEAR(@DataAtual));
    SET @DataAtual = DATEADD(DAY, 1, @DataAtual);
END;

-- inserindo datas


-- Inserindo Vendas Dia 1 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(1,1, 5, 1, 8, 2400.00),
(2,1, 10, 1, 12, 3960.00),
(3,1, 15, 1, 5, 6500.00);

-- Dia 2 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(4,1, 8, 2, 10, 5000.00),
(5,1, 12, 2, 8, 5000.00), 
(6,1, 18, 2, 15, 3000.00);

-- Dia 3 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(7,1, 8, 3, 10, 5000.00),
(8,1, 12, 3, 8, 5000.00),
(9,1, 18, 3, 15, 3000.00);

-- Dia 4 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(10,1, 9, 4, 7, 2030.00),
(11,1, 14, 4, 9, 6750.00),
(12,1, 19, 4, 12, 3600.00); 

-- Dia 5 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(13,1, 10, 5, 15, 4500.00), 
(14,1, 15, 5, 10, 13000.00), 
(15,1, 20, 5, 8, 8000.00); 

-- Dia 6 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(16,1, 11, 6, 20, 10400.00), 
(17,1, 16, 6, 5, 6500.00), -- 
(18,1, 21, 6, 12, 25200.00); 


-- Dia 7 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(19,1, 12, 7, 8, 5000.00), 
(20,1, 17, 7, 12, 1800.00), 
(21,1, 22, 7, 15, 19500.00); 

-- Dia 8 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(22,1, 13, 8, 10, 6500.00), 
(23,1, 18, 8, 5, 1000.00),
(24,1, 23, 8, 20, 32000.00); 

-- Dia 9 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(25,1, 14, 9, 10, 7500.00), 
(26,1, 19, 9, 8, 2400.00),
(27,1, 24, 9, 15, 54000.00); 

-- Dia 10 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(28,1, 15, 10, 12, 15600.00), 
(29,1, 20, 10, 7, 7000.00), 
(30,1, 25, 10, 10, 36000.00); 

-- Dia 11 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(31,1, 16, 11, 15, 19500.00), 
(32,1, 21, 11, 8, 16800.00), 
(33,1, 26, 11, 12, 38400.00); 

-- Dia 12 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(34,1, 17, 12, 10, 1500.00), 
(35,1, 22, 12, 7, 9100.00), 
(36,1, 27, 12, 20, 64000.00); 

-- Dia 13 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(37,1, 18, 13, 15, 3000.00), 
(38,1, 23, 13, 8, 16000.00), 
(39,1, 28, 13, 12, 79200.00); 

-- Dia 14 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(40,1, 19, 14, 10, 3000.00), 
(41,1, 24, 14, 7, 25200.00), 
(42,1, 29, 14, 20, 34000.00); 

-- Dia 15 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(43,1, 30, 15, 8, 15200.00), 
(44,1, 31, 15, 10, 26000.00), 
(45,1, 32, 15, 12, 45000.00); -

-- Dia 16 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(46,1, 33, 16, 15, 27000.00), 
(47,1, 34, 16, 20, 56000.00), 
(48,1, 35, 16, 7, 8400.00); 

-- Dia 17 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(49,1, 32, 17, 5, 22500.00), 
(50,1, 33, 17, 8, 21600.00), 
(51,1, 34, 17, 10, 28000.00); 

-- Dia 18 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(52,1, 34, 18, 15, 42000.00), 
(53,1, 35, 18, 20, 16000.00), 
(54,1, 36, 18, 7, 17500.00); 

-- Dia 19 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(55,1, 43, 19, 15, 58500.00), -- 
(56,1, 49, 19, 10, 23000.00), -- 
(57,1, 44, 19, 8, 29600.00); -- 

-- Dia 20 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(58,1, 43, 20, 20, 78000.00), 
(59,1, 49, 20, 15, 34500.00), 
(60,1, 44, 20, 12, 44400.00); 

-- Dia 21 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(61,1, 26, 21, 12, 33600.00),
(62,1, 27, 21, 8, 25600.00),
(63,1, 28, 21, 15, 99000.00);

-- Dia 22 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(64,1, 26, 22, 18, 50400.00), 
(65,1, 27, 22, 10, 32000.00), 
(66,1, 28, 22, 20, 132000.00);

-- Dia 23 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(67,1, 5, 23, 20, 52000.00), 
(68,1, 9, 23, 15, 43500.00), 
(69,1, 6, 23, 10, 31000.00); 

-- Dia 24 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(70,1, 5, 24, 25, 65000.00), 
(71,1, 9, 24, 20, 58000.00), 
(72,1, 6, 24, 15, 46500.00); 

-- Dia 25 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(73,1, 14, 25, 20, 138000.00),
(74,1, 18, 25, 15, 25500.00), 
(75,1, 16, 25, 10, 13000.00); 

-- Dia 26 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(76,1, 14, 26, 25, 172500.00), 
(77,1, 18, 26, 20, 34000.00),
(78,1, 16, 26, 15, 19500.00); 

-- Dia 27 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(79,1, 34, 27, 10, 28000.00),
(80,1, 35, 27, 8, 9600.00), 
(81,1, 37, 27, 5, 8000.00); 

-- Dia 28 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(82,1, 33, 28, 15, 27000.00), 
(83,1, 36, 28, 10, 25000.00), 
(84,1, 38, 28, 8, 20000.00); 

-- Dia 29 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(85,1, 13, 29, 8, 60000.00), 
(86,1, 17, 29, 12, 18000.00), 
(87,1, 39, 29, 5, 14500.00); 

-- Dia 30 de abril de 2024
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(88,1, 40, 30, 10, 33000.00), 
(89,1, 45, 30, 15, 34500.00), 
(90,1, 48, 30, 8, 14400.00); 
-- loja 1 

-- loja 2 

-- Dia 1 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(91 ,2, 5, 1, 10, 26000.00), 
(92,2, 14, 1, 8, 55200.00), 
(93,2, 33, 1, 5, 9000.00); 

-- Dia 2 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(94,2, 6, 2, 15, 46500.00), 
(95,2, 16, 2, 10, 13000.00), 
(96,2, 34, 2, 8, 22400.00); 

-- Dia 3 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(97,2, 7, 3, 10, 46000.00), 
(98,2, 18, 3, 8, 13600.00),
(99,2, 35, 3, 5, 6000.00); 

-- Dia 4 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(100, 2, 8, 4, 15, 75000.00), 
(101,2, 19, 4, 10, 20000.00), 
(102,2, 36, 4, 8, 20000.00); 

-- Dia 5 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(103,2, 9, 5, 10, 29000.00), 
(104,2, 20, 5, 8, 8000.00),
(105,2, 38, 5, 5, 12500.00); 

-- Dia 6 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(106,2, 10, 6, 15, 49500.00), 
(107,2, 21, 6, 10, 21000.00), 
(108,2, 39, 6, 8, 15200.00); 

-- Dia 7 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(109,2, 11, 7, 10, 52000.00),
(110,2, 22, 7, 8, 4800.00), 
(111,2, 40, 7, 5, 16500.00); 

-- Dia 8 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(112,2, 12, 8, 15, 69000.00),
(113,2, 23, 8, 10, 16000.00), 
(114,2, 41, 8, 8, 21600.00);

-- Dia 9 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(115,2, 13, 9, 10, 75000.00), 
(116,2, 24, 9, 8, 12800.00), 
(117,2, 42, 9, 5, 11500.00); 

-- Dia 10 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(118,2, 14, 10, 15, 103500.00), 
(119,2, 25, 10, 10, 18000.00), 
(120,2, 43, 10, 8, 23200.00); 

-- Dia 11 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(121,2, 15, 11, 10, 13000.00), 
(122,2, 26, 11, 8, 25600.00), 
(123,2, 44, 11, 5, 18500.00); 

-- Dia 12 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(124,2, 16, 12, 15, 15000.00), 
(125,2, 27, 12, 10, 32000.00),
(126,2, 45, 12, 8, 18400.00); 


-- Dia 13 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(127,2, 17, 13, 10, 15000.00), 
(128,2, 28, 13, 8, 25600.00), 
(129,2, 46, 13, 5, 19500.00); 

-- Dia 14 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(130,2, 18, 14, 15, 25500.00), 
(131,2, 29, 14, 10, 19000.00), 
(132,2, 47, 14, 8, 28800.00); 

-- Dia 15 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(133,2, 19, 15, 10, 20000.00), 
(134,2, 30, 15, 8, 25600.00), 
(135,2, 48, 15, 5, 19500.00); 

-- Dia 16 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(136,2, 20, 16, 15, 22500.00), 
(137,2, 31, 16, 10, 26000.00),
(138,2, 49, 16, 8, 28800.00); 

-- Dia 17 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(139,2, 21, 17, 10, 42000.00),
(140,2, 32, 17, 8, 25600.00), 
(141,2, 50, 17, 5, 23000.00); 

-- Dia 18 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(142,2, 22, 18, 15, 45000.00),
(143,2, 33, 18, 10, 28000.00),
(144,2, 45, 18, 8, 28800.00);


-- Dia 19 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(145,2, 43, 19, 10, 29000.00), 
(146,2, 49, 19, 8, 18400.00), 
(147,2, 47, 19, 5, 18000.00);

-- Dia 20 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(148,2, 44, 20, 15, 55500.00), 
(149,2, 50, 20, 10, 12000.00), 
(150,2, 48, 20, 8, 18400.00); 

-- Dia 21 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(151,2, 26, 21, 10, 32000.00),
(152,2, 27, 21, 8, 25600.00),
(153,2, 33, 21, 5, 9000.00); 

-- Dia 22 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(154,2, 28, 22, 15, 99000.00),
(155,2, 29, 22, 10, 19000.00), 
(156,2, 34, 22, 8, 22400.00); 

-- Dia 23 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(157,2, 9, 23, 10, 29000.00), 
(158,2, 10, 23, 8, 26400.00), 
(159,2, 13, 23, 5, 37500.00); 

-- Dia 24 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(160,2, 5, 24, 15, 39000.00), 
(161,2, 6, 24, 10, 31000.00), 
(162,2, 12, 24, 8, 49600.00);

-- Dia 25 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(163,2, 16, 25, 10, 13000.00), 
(164,2, 18, 25, 8, 13600.00), 
(165,2, 20, 25, 5, 5000.00); 

-- Dia 26 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(166,2, 17, 26, 15, 22500.00),
(167,2, 19, 26, 10, 20000.00), 
(168,2, 21, 26, 8, 16800.00); 

-- Dia 27 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(169,2, 33, 27, 10, 18000.00),
(170,2, 34, 27, 8, 22400.00),
(171,2, 37, 27, 5, 8000.00); 

-- Dia 28 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(172,2, 33, 28, 15, 27000.00), 
(173,2, 34, 28, 10, 28000.00), 
(174,2, 38, 28, 8, 20000.00); 

-- Dia 29 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(175,2, 7, 29, 10, 46000.00), 
(176,2, 15, 29, 8, 60000.00), 
(177,2, 26, 29, 5, 16000.00); 

-- Dia 30 de abril de 2024 para LojaID 2
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(178,2, 8, 30, 15, 75000.00), 
(179,2, 14, 30, 10, 69000.00), 
(180,2, 32, 30, 8, 10400.00); 

-- loja 2

-- loja 3

-- Dia 1 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(181,3, 5, 1, 10, 26000.00),
(182,3, 15, 1, 8, 60000.00),
(183,3, 32, 1, 5, 6500.00); 

-- Dia 2 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(184,3, 6, 2, 15, 46500.00), 
(185,3, 16, 2, 10, 13000.00), 
(186,3, 31, 2, 8, 10400.00); 

-- Dia 3 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(187,3, 8, 3, 10, 50000.00),
(188,3, 17, 3, 8, 12000.00), 
(189,3, 33, 3, 5, 9000.00); 

-- Dia 4 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(190,3, 9, 4, 15, 43500.00), 
(191,3, 18, 4, 10, 17000.00),
(192,3, 34, 4, 8, 22400.00);

-- Dia 5 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(193,3, 10, 5, 10, 33000.00), 
(194,3, 19, 5, 8, 16000.00), 
(195,3, 35, 5, 5, 6000.00); 

-- Dia 6 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(196,3, 11, 6, 15, 78000.00),
(197,3, 20, 6, 10, 10000.00), 
(198,3, 36, 6, 8, 12800.00);

-- Dia 7 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(199,3, 12, 7, 10, 30000.00),
(200,3, 21, 7, 8, 16800.00),
(201,3, 37, 7, 5, 8000.00);

-- Dia 8 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(202,3, 13, 8, 15, 112500.00),
(203,3, 22, 8, 10, 16000.00),
(204,3, 38, 8, 8, 20000.00);

-- Dia 9 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(205,3, 14, 9, 10, 69000.00),
(206,3, 23, 9, 8, 12800.00), 
(207,3, 39, 9, 5, 9500.00); 

-- Dia 10 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(208,3, 15, 10, 15, 90000.00),
(209,3, 24, 10, 10, 32000.00),
(210,3, 40, 10, 8, 26400.00);

-- Dia 11 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(211,3, 16, 11, 10, 13000.00), 
(212,3, 25, 11, 8, 32000.00), 
(213,3, 41, 11, 5, 11500.00);

-- Dia 12 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(214,3, 17, 12, 15, 22500.00),
(215,3, 26, 12, 10, 32000.00), 
(216,3, 42, 12, 8, 21600.00); 

-- Dia 13 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(217,3, 18, 13, 10, 17000.00), 
(218,3, 27, 13, 8, 25600.00), 
(219,3, 43, 13, 5, 14500.00); 

-- Dia 14 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(220,3, 19, 14, 15, 30000.00), 
(221,3, 28, 14, 10, 32000.00), 
(222,3, 44, 14, 8, 29600.00); 

-- Dia 15 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(223,3, 20, 15, 10, 10000.00), 
(224,3, 29, 15, 8, 22400.00), 
(225,3, 45, 15, 5, 11500.00); 

-- Dia 16 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(226,3, 21, 16, 15, 15750.00), 
(227,3, 30, 16, 10, 19000.00), 
(228,3, 46, 16, 8, 20000.00); 

-- Dia 17 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(229,3, 22, 17, 10, 16000.00),
(230,3, 31, 17, 8, 25600.00),
(231,3, 47, 17, 5, 18000.00); 

-- Dia 18 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(232,3, 23, 18, 15, 24000.00),
(233,3, 32, 18, 10, 26000.00), 
(234,3, 48, 18, 8, 29600.00); 

-- Dia 19 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(235,3, 47, 19, 15, 54000.00), 
(236,3, 49, 19, 10, 23000.00), 
(237,3, 44, 19, 8, 29600.00); 

-- Dia 20 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(238,3, 50, 20, 10, 12000.00), 
(239,3, 24, 20, 8, 28800.00), 
(240,3, 45, 20, 5, 11500.00); 

-- Dia 21 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(241,3, 22, 21, 15, 18000.00), 
(242,3, 23, 21, 10, 16000.00), 
(243,3, 24, 21, 8, 28800.00); 

-- Dia 22 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(244,3, 25, 22, 10, 36000.00), 
(245,3, 26, 22, 8, 25600.00), 
(246,3, 27, 22, 5, 16000.00); 


-- Dia 23 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(247,3, 9, 23, 15, 43500.00), 
(248,3, 10, 23, 10, 33000.00), 
(249,3, 11, 23, 8, 41600.00); 

-- Dia 24 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(250,3, 12, 24, 10, 62000.00), 
(251,3, 13, 24, 8, 60000.00),
(252,3, 9, 24, 5, 14500.00); 

-- Dia 25 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(253,3, 16, 25, 15, 19500.00), 
(254,3, 17, 25, 10, 15000.00), 
(255,3, 18, 25, 8, 13600.00); 

-- Dia 26 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(256,3, 19, 26, 10, 20000.00), 
(257,3, 20, 26, 8, 8000.00), 
(258,3, 21, 26, 5, 10500.00);

-- Dia 27 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(259,3, 34, 27, 10, 28000.00), 
(260,3, 37, 27, 8, 12800.00), 
(261,3, 38, 27, 5, 12500.00); 

-- Dia 28 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(262,3, 33, 28, 15, 27000.00), 
(263,3, 35, 28, 10, 12000.00), 
(264,3, 36, 28, 8, 20000.00); 


-- Dia 29 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(265,3, 12, 29, 10, 62000.00), 
(266,3, 22, 29, 8, 14400.00), 
(267,3, 33, 29, 5, 9000.00);

-- Dia 30 de abril de 2024 para LojaID 3
INSERT INTO FatoVendas (VendaID,LojaID, ProdutoID, DataID, QuantidadeVendida, ValorTotal)
VALUES
(268,3, 49, 30, 15, 34500.00), -- Nintendo Switch OLED (ProdutoID 49)
(269,3, 16, 30, 10, 13000.00), -- Redmi Note 12 128gb (ProdutoID 16)
(270,3, 41, 30, 8, 18400.00); -- Console Microsoft Xbox Series S 512GB (ProdutoID 41)

-- loja 3

-- Comando Utilizado para solocionar os problemas

--vendas loja 1

SELECT
    p.Nome AS NomeProduto,
    SUM(fv.QuantidadeVendida) AS TotalVendido
FROM
    FatoVendas fv
INNER JOIN
    DimProduto p ON fv.ProdutoID = p.ProdutoID
INNER JOIN
    DimLocalizacaoLoja l ON fv.LojaID = l.LojaID
INNER JOIN
    DimTempo t ON fv.DataID = t.DataID
WHERE
    l.Cidade = 'Monte Sião'
    AND MONTH(t.Data) = 4  -- Seleciona apenas vendas do mês de abril
    AND YEAR(t.Data) = 2024  -- Seleciona apenas vendas do ano de 2024
GROUP BY
    p.Nome

-- vendas lojas 2

SELECT
    p.Nome AS NomeProduto,
    SUM(fv.QuantidadeVendida) AS TotalVendido
FROM
    FatoVendas fv
INNER JOIN
    DimProduto p ON fv.ProdutoID = p.ProdutoID
INNER JOIN
    DimLocalizacaoLoja l ON fv.LojaID = l.LojaID
INNER JOIN
    DimTempo t ON fv.DataID = t.DataID
WHERE
    l.Cidade = 'Águas de Lindóia'
    AND MONTH(t.Data) = 4  -- Seleciona apenas vendas do mês de abril
    AND YEAR(t.Data) = 2024  -- Seleciona apenas vendas do ano de 2024
GROUP BY
    p.Nome

-- vendas loja 3

SELECT
    p.Nome AS NomeProduto,
    SUM(fv.QuantidadeVendida) AS TotalVendido
FROM
    FatoVendas fv
INNER JOIN
    DimProduto p ON fv.ProdutoID = p.ProdutoID
INNER JOIN
    DimLocalizacaoLoja l ON fv.LojaID = l.LojaID
INNER JOIN
    DimTempo t ON fv.DataID = t.DataID
WHERE
    l.Cidade = 'Socorro'
    AND MONTH(t.Data) = 4  -- Seleciona apenas vendas do mês de abril
    AND YEAR(t.Data) = 2024  -- Seleciona apenas vendas do ano de 2024
GROUP BY
    p.Nome

-- top 10 mais vendidos loja 1

WITH ProdutosMaisVendidos AS (
    SELECT
        fv.LojaID,
        fv.ProdutoID,
        p.Nome AS NomeProduto,
        SUM(fv.QuantidadeVendida) AS TotalVendido,
        ROW_NUMBER() OVER (PARTITION BY fv.LojaID ORDER BY SUM(fv.QuantidadeVendida) DESC) AS NumeroLinha
    FROM
        FatoVendas fv
    INNER JOIN
        DimProduto p ON fv.ProdutoID = p.ProdutoID
    WHERE
        fv.LojaID = 1  -- Filtro para a loja 1
    GROUP BY
        fv.LojaID, fv.ProdutoID, p.Nome
)
SELECT
    LojaID,
    ProdutoID,
    NomeProduto,
    TotalVendido
FROM
    ProdutosMaisVendidos
WHERE
    NumeroLinha <= 10;

-- top 10 mais vendidos loja 2

WITH ProdutosMaisVendidos AS (
    SELECT
        fv.LojaID,
        fv.ProdutoID,
        p.Nome AS NomeProduto,
        SUM(fv.QuantidadeVendida) AS TotalVendido,
        ROW_NUMBER() OVER (PARTITION BY fv.LojaID ORDER BY SUM(fv.QuantidadeVendida) DESC) AS NumeroLinha
    FROM
        FatoVendas fv
    INNER JOIN
        DimProduto p ON fv.ProdutoID = p.ProdutoID
    WHERE
        fv.LojaID = 1  -- Filtro para a loja 1
    GROUP BY
        fv.LojaID, fv.ProdutoID, p.Nome
)
SELECT
    LojaID,
    ProdutoID,
    NomeProduto,
    TotalVendido
FROM
    ProdutosMaisVendidos
WHERE
    NumeroLinha <= 10;

-- top 10 mais loja 3

WITH ProdutosMaisVendidos AS (
    SELECT
        fv.LojaID,
        fv.ProdutoID,
        p.Nome AS NomeProduto,
        SUM(fv.QuantidadeVendida) AS TotalVendido,
        ROW_NUMBER() OVER (PARTITION BY fv.LojaID ORDER BY SUM(fv.QuantidadeVendida) DESC) AS NumeroLinha
    FROM
        FatoVendas fv
    INNER JOIN
        DimProduto p ON fv.ProdutoID = p.ProdutoID
    WHERE
        fv.LojaID = 1  -- Filtro para a loja 1
    GROUP BY
        fv.LojaID, fv.ProdutoID, p.Nome
)
SELECT
    LojaID,
    ProdutoID,
    NomeProduto,
    TotalVendido
FROM
    ProdutosMaisVendidos
WHERE
    NumeroLinha <= 10;

--top 10 produtos mais vendidos

WITH ProdutosMaisVendidos AS (
    SELECT
        fv.ProdutoID,
        p.Nome AS NomeProduto,
        SUM(fv.QuantidadeVendida) AS TotalVendido
    FROM
        FatoVendas fv
    INNER JOIN
        DimProduto p ON fv.ProdutoID = p.ProdutoID
    GROUP BY
        fv.ProdutoID, p.Nome
)
SELECT TOP 10
    ProdutoID,
    NomeProduto,
    TotalVendido
FROM
    ProdutosMaisVendidos
ORDER BY
    TotalVendido DESC;