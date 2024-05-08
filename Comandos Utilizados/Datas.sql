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