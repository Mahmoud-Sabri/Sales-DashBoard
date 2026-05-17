SELECT
p.[ProductKey]
   ,p.[ProductAlternateKey] AS ProductItemCode
--    ,[ProductSubcategoryKey]
--    ,[WeightUnitMeasureCode]
--    ,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] AS [Product Name]
      ,pc.EnglishProductCategoryName AS [Product Category]
      ,ps.EnglishProductSubcategoryName AS [Sub Category]
--    ,[SpanishProductName]
--    ,[FrenchProductName]
--    ,[StandardCost]
--    ,[FinishedGoodsFlag]
      ,[Color]
--    ,[SafetyStockLevel]
--    ,[ReorderPoint]
--    ,[ListPrice]
      ,[Size]
--    ,[SizeRange]
      ,[Weight]
--    ,[DaysToManufacture]
      ,[ProductLine]
--    ,[DealerPrice]
--    ,[Class]
--    ,[Style]
      ,[ModelName]
--    ,[LargePhoto]
--    ,[EnglishDescription]
--    ,[FrenchDescription]
--    ,[ChineseDescription]
--    ,[ArabicDescription]
--    ,[HebrewDescription]
--    ,[ThaiDescription]
--    ,[GermanDescription]
--    ,[JapaneseDescription]
--    ,[TurkishDescription]
--    ,[StartDate]
--    ,[EndDate]
      ,ISNULL(p.Status , 'Outdate') AS ProductStatus
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  LEFT JOIN 
    [dbo].[DimProductSubcategory] AS ps
  ON
    ps.ProductSubcategoryKey = p.ProductSubcategoryKey

  LEFT JOIN
    [dbo].[DimProductCategory] AS pc
  ON
    ps.ProductCategoryKey = pc.ProductCategoryKey

ORDER BY 
    p.ProductKey ASC;
    
    
