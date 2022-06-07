SELECT * FROM dbo.DimReseller_NoIndex WHERE ResellerAlternateKey='AW00000174';
SELECT * FROM dbo.DimReseller_ClusteredIndex WHERE ResellerAlternateKey='AW00000174';
SELECT * FROM dbo.DimReseller_NonClusteredIndex WHERE ResellerAlternateKey='AW00000174';
--T�nh page read khi kh�ng index v� d�ng index:
--Khi kh�ng d�ng index:
USE AdventureWorksDW2019;
GO       
SET STATISTICS IO ON;
GO
SELECT * FROM dbo.DimReseller_NoIndex WHERE ResellerAlternateKey='AW00000174';
GO
SET STATISTICS IO OFF;
GO
--Khi d�ng index:
USE AdventureWorksDW2019;
GO       
SET STATISTICS IO ON;
GO
SELECT * FROM dbo.DimReseller_ClusteredIndex WHERE ResellerAlternateKey='AW00000174';
GO
SET STATISTICS IO OFF;
GO

--T�nh page read khi d�ng non clustered index v� clustered index:
--Khi d�ng non clustered index:
USE AdventureWorksDW2019;
GO       
SET STATISTICS IO ON;
GO
SELECT * FROM dbo.DimReseller_NonClusteredIndex WHERE ResellerAlternateKey='AW00000174';
GO
SET STATISTICS IO OFF;
GO
--khi d�ng clustered index:
USE AdventureWorksDW2019;
GO       
SET STATISTICS IO ON;
GO
SELECT * FROM dbo.DimReseller_ClusteredIndex WHERE ResellerAlternateKey='AW00000174';
GO
SET STATISTICS IO OFF;
GO
--t�nh query execution time khi kh�ng d�ng v� d�ng index:
--Khi kh�ng d�ng index:
USE AdventureWorksDW2019;
GO
SET STATISTICS TIME ON
GO
SELECT * FROM dbo.DimReseller_NoIndex WHERE ResellerAlternateKey='AW00000174';
GO
SET STATISTICS TIME OFF;
GO
--khi d�ng index
USE AdventureWorksDW2019;
GO
SET STATISTICS TIME ON
GO
SELECT * FROM dbo.DimReseller_ClusteredIndex WHERE ResellerAlternateKey='AW00000174';
GO
SET STATISTICS TIME OFF;
GO
--t�nh query execution time khi d�ng non clustered index v� d�ng clustered index:
--Khi d�ng clustered index:
USE AdventureWorksDW2019;
GO
SET STATISTICS TIME ON
GO
SELECT * FROM dbo.DimReseller_ClusteredIndex WHERE ResellerAlternateKey='AW00000174';
GO
SET STATISTICS TIME OFF;
GO
--Khi d�ng non clustered index:
USE AdventureWorksDW2019;
GO
SET STATISTICS TIME ON
GO
SELECT * FROM dbo.DimReseller_NonClusteredIndex WHERE ResellerAlternateKey='AW00000174';
GO
SET STATISTICS TIME OFF;
GO
