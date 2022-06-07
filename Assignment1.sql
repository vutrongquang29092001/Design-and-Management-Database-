SELECT * FROM dbo.DimReseller_NoIndex WHERE ResellerAlternateKey='AW00000174';
SELECT * FROM dbo.DimReseller_ClusteredIndex WHERE ResellerAlternateKey='AW00000174';
SELECT * FROM dbo.DimReseller_NonClusteredIndex WHERE ResellerAlternateKey='AW00000174';
--Tình page read khi không index và dùng index:
--Khi không dùng index:
USE AdventureWorksDW2019;
GO       
SET STATISTICS IO ON;
GO
SELECT * FROM dbo.DimReseller_NoIndex WHERE ResellerAlternateKey='AW00000174';
GO
SET STATISTICS IO OFF;
GO
--Khi dùng index:
USE AdventureWorksDW2019;
GO       
SET STATISTICS IO ON;
GO
SELECT * FROM dbo.DimReseller_ClusteredIndex WHERE ResellerAlternateKey='AW00000174';
GO
SET STATISTICS IO OFF;
GO

--Tình page read khi dùng non clustered index và clustered index:
--Khi dùng non clustered index:
USE AdventureWorksDW2019;
GO       
SET STATISTICS IO ON;
GO
SELECT * FROM dbo.DimReseller_NonClusteredIndex WHERE ResellerAlternateKey='AW00000174';
GO
SET STATISTICS IO OFF;
GO
--khi dùng clustered index:
USE AdventureWorksDW2019;
GO       
SET STATISTICS IO ON;
GO
SELECT * FROM dbo.DimReseller_ClusteredIndex WHERE ResellerAlternateKey='AW00000174';
GO
SET STATISTICS IO OFF;
GO
--tính query execution time khi không dùng và dùng index:
--Khi không dùng index:
USE AdventureWorksDW2019;
GO
SET STATISTICS TIME ON
GO
SELECT * FROM dbo.DimReseller_NoIndex WHERE ResellerAlternateKey='AW00000174';
GO
SET STATISTICS TIME OFF;
GO
--khi dùng index
USE AdventureWorksDW2019;
GO
SET STATISTICS TIME ON
GO
SELECT * FROM dbo.DimReseller_ClusteredIndex WHERE ResellerAlternateKey='AW00000174';
GO
SET STATISTICS TIME OFF;
GO
--tính query execution time khi dùng non clustered index và dùng clustered index:
--Khi dùng clustered index:
USE AdventureWorksDW2019;
GO
SET STATISTICS TIME ON
GO
SELECT * FROM dbo.DimReseller_ClusteredIndex WHERE ResellerAlternateKey='AW00000174';
GO
SET STATISTICS TIME OFF;
GO
--Khi dùng non clustered index:
USE AdventureWorksDW2019;
GO
SET STATISTICS TIME ON
GO
SELECT * FROM dbo.DimReseller_NonClusteredIndex WHERE ResellerAlternateKey='AW00000174';
GO
SET STATISTICS TIME OFF;
GO
