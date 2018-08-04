SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [dbo].[vw_MDM_CustomRules]
 AS 

SELECT dimcustomerid
	  ,MAX(CalDate) LastPurchase
FROM dbo.FactTicketSales_V2 fts
	JOIN dbo.DimDate dimDate ON dimDate.DimDateId = fts.dimdateid
	JOIN dbo.DimCustomer dc ON dc.AccountId = fts.ETL__SSID_TM_acct_id
							   AND dc.customertype = 'primary' 
							   AND dc.sourcesystem = 'TM'
GROUP BY DimCustomerId

GO
