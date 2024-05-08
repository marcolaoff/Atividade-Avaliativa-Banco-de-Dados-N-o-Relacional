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