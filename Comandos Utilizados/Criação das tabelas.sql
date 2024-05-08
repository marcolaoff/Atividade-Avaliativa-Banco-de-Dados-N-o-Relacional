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