SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO





CREATE VIEW [etl].[vw_Load_QuestSummary_Hawks] AS

WITH CTE_Events AS (SELECT DISTINCT dimseason.SeasonName, EventDate, dimevent.EventCode, dimevent.EventName
					FROM Blackhawks.dbo.DimEvent_V2 dimevent
						JOIN Blackhawks.dbo.DimSeason_V2 dimseason ON dimevent.DimSeasonId = dimseason.DimSeasonId
					WHERE SeasonName IN ('2017-2018 Blackhawks Season','2016-2017 Chicago Blackhawks Season')
					)

SELECT evnt.SeasonName													AS SeasonName
	  ,evnt.EventDate													AS EventDate
	  ,evnt.EventCode													AS EventCode
	  ,evnt.EventName													AS EventName
	  ,SaleHeader.SaleID												AS SaleID
	  ,SaleItems.SaleItemID												AS SaleItemID
	  ,SaleHeader.SaleDate												AS SaleDate
	  ,department.[description]											AS Department
	  ,[location].[description]											AS SaleLocation
	  ,ItemGroup.[description]											AS ItemGroup
	  ,ItemCategory.[description]										AS ItemCategory
	  ,item.Code														AS ItemCode
	  ,item.PLU															AS PLU
	  ,item.Shortdescription											AS ItemShortDescription
	  ,item.[description]												AS ItemDescription
	  ,SaleHeader.IsRefund												AS IsRefund
	  ,CAST(saleitems.Quantity as decimal(8,2))							AS ItemQTY
	  ,CAST(SaleItems.Price as decimal(8,2))							AS ItemPrice
	  ,CAST((saleitems.Quantity * SaleItems.Price) as decimal(13,2))	AS AMT
FROM ods.NCR_SaleHeader SaleHeader
	JOIN CTE_Events evnt ON evnt.EventDate = SaleHeader.SaleDate
	JOIN ods.NCR_Location [location] ON [location].id = SaleHeader.LocationID
	JOIN ods.NCR_Department department ON department.ID = SaleHeader.DepartmentID
	JOIN ods.NCR_SaleItems SaleItems ON SaleItems.SaleID = SaleHeader.SaleID
	JOIN ods.NCR_Stock item ON item.ID = SaleItems.StockID
	LEFT JOIN ods.NCR_Category ItemCategory ON ItemCategory.ID = item.CategoryID
	LEFT JOIN ods.NCR_Group ItemGroup ON ItemGroup.ID = ItemCategory.GroupID
WHERE SaleItems.Price > 0






GO
