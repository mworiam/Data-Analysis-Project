--Cleansed DIM_Customer
SELECT 
  c.[CustomerKey], 
  -- ,[GeographyKey]
  --,[CustomerAlternateKey]
  -- ,[Title]
  c.[FirstName] AS [First Name], 
  --,[MiddleName]
  c.[LastName] AS [Last Name], 
  c.[FirstName] + ' ' + [LastName] AS [Full Name], 
  --combined first and last name
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.[DateFirstPurchase], 
  --,[CommuteDistance]
  g.city AS [Customer City] -- join from geo table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC
