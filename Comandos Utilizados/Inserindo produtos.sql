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