SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO










CREATE PROCEDURE [etl].[Cust_FactTicketSalesProcessing]
(
	@BatchId INT = 0,
	@LoadDate DATETIME = NULL,
	@Options NVARCHAR(MAX) = NULL
)
AS

--=============================================================================================
--TICKET TYPE
--=============================================================================================

--================================
--Champions Club - Full
--================================

UPDATE fts
SET fts.DimTicketTypeId = 1
FROM #stgFactTicketSales fts
	JOIN dbo.DimEvent_V2 dimevent ON dimevent.DimEventId = fts.DimEventId
	JOIN dbo.DimSeason_V2 dimSeason ON dimSeason.DimSeasonId = fts.DimSeasonId
	JOIN dbo.DimEventHeader_V2 dimEventHeader ON dimEventheader.DimEventHeaderId = dimevent.DimEventHeaderId
	JOIN dbo.DimSeasonHeader_V2 dimSeasonHeader ON dimEventHeader.DimSeasonHeaderId = dimSeasonHeader.DimSeasonHeaderId
	JOIN dbo.DimSeat_V2 dimseat ON dimseat.DimSeatId = fts.DimSeatId_Start
WHERE (dimSeasonHeader.SeasonName IN ('Blackhawks 17-18','Bulls 17-18') AND dimSeason.SeasonName LIKE '%CHAMPIONS CLUB%' AND  RowName NOT IN ('C18B','C19B'))

--================================
--Champions Club - Partial
--================================

UPDATE fts
SET fts.DimTicketTypeId = 2
FROM #stgFactTicketSales fts
	JOIN dbo.DimEvent_V2 dimevent ON dimevent.DimEventId = fts.DimEventId
	JOIN dbo.DimSeason_V2 dimSeason ON dimSeason.DimSeasonId = fts.DimSeasonId
	JOIN dbo.DimEventHeader_V2 dimEventHeader ON dimEventheader.DimEventHeaderId = dimevent.DimEventHeaderId
	JOIN dbo.DimSeasonHeader_V2 dimSeasonHeader ON dimEventHeader.DimSeasonHeaderId = dimSeasonHeader.DimSeasonHeaderId
	JOIN dbo.DimSeat_V2 dimseat ON dimseat.DimSeatId = fts.DimSeatId_Start
WHERE (dimSeasonHeader.SeasonName IN ('Blackhawks 17-18','Bulls 17-18') AND dimSeason.SeasonName LIKE '%CHAMPIONS CLUB%' AND  RowName IN ('C18B','C19B'))

--================================
--Harris Club - Full
--================================

UPDATE fts
SET fts.DimTicketTypeId = 3
FROM #stgFactTicketSales fts
	JOIN dbo.DimEvent_V2 dimevent ON dimevent.DimEventId = fts.DimEventId
	JOIN dbo.DimSeason_V2 dimSeason ON dimSeason.DimSeasonId = fts.DimSeasonId
	JOIN dbo.DimEventHeader_V2 dimEventHeader ON dimEventheader.DimEventHeaderId = dimevent.DimEventHeaderId
	JOIN dbo.DimSeasonHeader_V2 dimSeasonHeader ON dimEventHeader.DimSeasonHeaderId = dimSeasonHeader.DimSeasonHeaderId
	JOIN dbo.DimSeat_V2 dimseat ON dimseat.DimSeatId = fts.DimSeatId_Start
	JOIN dbo.DimPriceCode_V2 dimpriceCode ON dimpriceCode.DimPriceCodeId = fts.DimPriceCodeId
WHERE (dimSeasonHeader.SeasonName IN ('Blackhawks 17-18','Bulls 17-18') 
	  AND dimSeason.SeasonName LIKE '%Harris%' 
	  AND NOT (
				(sectionname IN ('CLUB I','CLUB D')	AND RowName		= '3')  --Partial
				OR (sectionname = ('CLUB P')	AND RowName		= '2'))		--Single
				OR PriceCode = 'A2'											--Single
				OR PriceCode = 'AR'											--Rental			
				)
--================================
--Harris Club - Partial
--================================

UPDATE fts
SET fts.DimTicketTypeId = 4
FROM #stgFactTicketSales fts
	JOIN dbo.DimEvent_V2 dimevent ON dimevent.DimEventId = fts.DimEventId
	JOIN dbo.DimSeason_V2 dimSeason ON dimSeason.DimSeasonId = fts.DimSeasonId
	JOIN dbo.DimEventHeader_V2 dimEventHeader ON dimEventheader.DimEventHeaderId = dimevent.DimEventHeaderId
	JOIN dbo.DimSeasonHeader_V2 dimSeasonHeader ON dimEventHeader.DimSeasonHeaderId = dimSeasonHeader.DimSeasonHeaderId
	JOIN dbo.DimSeat_V2 dimseat ON dimseat.DimSeatId = fts.DimSeatId_Start
	JOIN dbo.DimPriceCode_V2 dimpriceCode ON dimpriceCode.DimPriceCodeId = fts.DimPriceCodeId
WHERE (dimSeasonHeader.SeasonName IN ('Blackhawks 17-18','Bulls 17-18') 
	  AND dimSeason.SeasonName LIKE '%Harris%' 
	  AND sectionname IN ('CLUB I','CLUB D')	
	  AND RowName		= '3'
	  )

--================================
--Harris Club - Single
--================================

UPDATE fts
SET fts.DimTicketTypeId = 5
FROM #stgFactTicketSales fts
	JOIN dbo.DimEvent_V2 dimevent ON dimevent.DimEventId = fts.DimEventId
	JOIN dbo.DimSeason_V2 dimSeason ON dimSeason.DimSeasonId = fts.DimSeasonId
	JOIN dbo.DimEventHeader_V2 dimEventHeader ON dimEventheader.DimEventHeaderId = dimevent.DimEventHeaderId
	JOIN dbo.DimSeasonHeader_V2 dimSeasonHeader ON dimEventHeader.DimSeasonHeaderId = dimSeasonHeader.DimSeasonHeaderId
	JOIN dbo.DimSeat_V2 dimseat ON dimseat.DimSeatId = fts.DimSeatId_Start
	JOIN dbo.DimPriceCode_V2 dimpriceCode ON dimpriceCode.DimPriceCodeId = fts.DimPriceCodeId
WHERE (dimSeasonHeader.SeasonName IN ('Blackhawks 17-18','Bulls 17-18') 
	  AND dimSeason.SeasonName LIKE '%Harris%' 
	  AND (
		   (sectionname = ('CLUB P')	AND RowName		= '2')		
			OR PriceCode = 'A2'
		  )
	  )

--================================
--Premium - Additional
--================================

UPDATE fts
SET fts.DimTicketTypeId = 6
FROM #stgFactTicketSales fts
	JOIN dbo.DimEvent_V2 dimevent ON dimevent.DimEventId = fts.DimEventId
	JOIN dbo.DimSeason_V2 dimSeason ON dimSeason.DimSeasonId = fts.DimSeasonId
	JOIN dbo.DimEventHeader_V2 dimEventHeader ON dimEventheader.DimEventHeaderId = dimevent.DimEventHeaderId
	JOIN dbo.DimSeasonHeader_V2 dimSeasonHeader ON dimEventHeader.DimSeasonHeaderId = dimSeasonHeader.DimSeasonHeaderId
	JOIN dbo.DimSeat_V2 dimseat ON dimseat.DimSeatId = fts.DimSeatId_Start
	JOIN dbo.DimPriceCode_V2 dimpriceCode ON dimpriceCode.DimPriceCodeId = fts.DimPriceCodeId
WHERE dimSeasonHeader.SeasonName IN ('Blackhawks 17-18','Bulls 17-18')
	  AND dimseason.seasonname LIKE '% Suites' 
	  AND RIGHT(PriceCode,len(PriceCode)-1) IN ('1A','1B','1C','1D','2A','2B','2C','2D','3A')

--================================
--Premium - Annual
--================================

UPDATE fts
SET fts.DimTicketTypeId = 7
FROM #stgFactTicketSales fts
	JOIN dbo.DimEvent_V2 dimevent ON dimevent.DimEventId = fts.DimEventId
	JOIN dbo.DimSeason_V2 dimSeason ON dimSeason.DimSeasonId = fts.DimSeasonId
	JOIN dbo.DimEventHeader_V2 dimEventHeader ON dimEventheader.DimEventHeaderId = dimevent.DimEventHeaderId
	JOIN dbo.DimSeasonHeader_V2 dimSeasonHeader ON dimEventHeader.DimSeasonHeaderId = dimSeasonHeader.DimSeasonHeaderId
	JOIN dbo.DimSeat_V2 dimseat ON dimseat.DimSeatId = fts.DimSeatId_Start
	JOIN dbo.DimPriceCode_V2 dimpriceCode ON dimpriceCode.DimPriceCodeId = fts.DimPriceCodeId
	JOIN dbo.DimPlan_V2 dimPlan ON dimPlan.DimPlanId = fts.DimPlanId
WHERE dimSeasonHeader.SeasonName IN ('Blackhawks 17-18','Bulls 17-18')
	  AND dimseason.seasonname LIKE '% Suites' 
	  AND Len(PriceCode) = 1
	  AND (PlanCode = CONCAT(right(dimseason.seasonYear,2),'HFS')
		   OR PlanCode = CONCAT(right(dimseason.seasonYear,2),'BFS')
		  )

--================================
--Premium - Comp
--================================

UPDATE fts
SET fts.DimTicketTypeId = 8
FROM #stgFactTicketSales fts
	JOIN dbo.DimEvent_V2 dimevent ON dimevent.DimEventId = fts.DimEventId
	JOIN dbo.DimSeason_V2 dimSeason ON dimSeason.DimSeasonId = fts.DimSeasonId
	JOIN dbo.DimEventHeader_V2 dimEventHeader ON dimEventheader.DimEventHeaderId = dimevent.DimEventHeaderId
	JOIN dbo.DimSeasonHeader_V2 dimSeasonHeader ON dimEventHeader.DimSeasonHeaderId = dimSeasonHeader.DimSeasonHeaderId
	JOIN dbo.DimSeat_V2 dimseat ON dimseat.DimSeatId = fts.DimSeatId_Start
	JOIN dbo.DimPriceCode_V2 dimpriceCode ON dimpriceCode.DimPriceCodeId = fts.DimPriceCodeId
WHERE dimSeasonHeader.SeasonName IN ('Blackhawks 17-18','Bulls 17-18')
	  AND dimseason.seasonname LIKE '% Suites' 
	  AND SectionName IN ('L18','L30','L33','L36')

--================================
--Premium - Inventory
--================================

UPDATE fts
SET fts.DimTicketTypeId = 9
FROM #stgFactTicketSales fts
	JOIN dbo.DimEvent_V2 dimevent ON dimevent.DimEventId = fts.DimEventId
	JOIN dbo.DimSeason_V2 dimSeason ON dimSeason.DimSeasonId = fts.DimSeasonId
	JOIN dbo.DimEventHeader_V2 dimEventHeader ON dimEventheader.DimEventHeaderId = dimevent.DimEventHeaderId
	JOIN dbo.DimSeasonHeader_V2 dimSeasonHeader ON dimEventHeader.DimSeasonHeaderId = dimSeasonHeader.DimSeasonHeaderId
	JOIN dbo.DimSeat_V2 dimseat ON dimseat.DimSeatId = fts.DimSeatId_Start
	JOIN dbo.DimPriceCode_V2 dimpriceCode ON dimpriceCode.DimPriceCodeId = fts.DimPriceCodeId
WHERE dimSeasonHeader.SeasonName IN ('Blackhawks 17-18','Bulls 17-18')
	  AND dimseason.seasonname LIKE '% Suites' 
	  AND right(PriceCode,len(PriceCode)-1) = 'I'

--================================
--Premium - Partial
--================================

UPDATE fts
SET fts.DimTicketTypeId = 10
FROM #stgFactTicketSales fts
	JOIN dbo.DimEvent_V2 dimevent ON dimevent.DimEventId = fts.DimEventId
	JOIN dbo.DimSeason_V2 dimSeason ON dimSeason.DimSeasonId = fts.DimSeasonId
	JOIN dbo.DimEventHeader_V2 dimEventHeader ON dimEventheader.DimEventHeaderId = dimevent.DimEventHeaderId
	JOIN dbo.DimSeasonHeader_V2 dimSeasonHeader ON dimEventHeader.DimSeasonHeaderId = dimSeasonHeader.DimSeasonHeaderId
	JOIN dbo.DimSeat_V2 dimseat ON dimseat.DimSeatId = fts.DimSeatId_Start
	JOIN dbo.DimPriceCode_V2 dimpriceCode ON dimpriceCode.DimPriceCodeId = fts.DimPriceCodeId
	JOIN dbo.DimPlan_V2 dimPlan ON dimPlan.DimPlanId = fts.DimPlanId
WHERE dimSeasonHeader.SeasonName IN ('Blackhawks 17-18','Bulls 17-18')
	  AND dimseason.seasonname LIKE '% Suites' 
	  AND Len(PriceCode) = 1
	  AND NOT (PlanCode = CONCAT(right(dimseason.seasonYear,2),'HFS')
			   OR PlanCode = CONCAT(right(dimseason.seasonYear,2),'BFS')
			  )

--================================
--Premium - Single
--================================

UPDATE fts
SET fts.DimTicketTypeId = 11
FROM #stgFactTicketSales fts
	JOIN dbo.DimEvent_V2 dimevent ON dimevent.DimEventId = fts.DimEventId
	JOIN dbo.DimSeason_V2 dimSeason ON dimSeason.DimSeasonId = fts.DimSeasonId
	JOIN dbo.DimEventHeader_V2 dimEventHeader ON dimEventheader.DimEventHeaderId = dimevent.DimEventHeaderId
	JOIN dbo.DimSeasonHeader_V2 dimSeasonHeader ON dimEventHeader.DimSeasonHeaderId = dimSeasonHeader.DimSeasonHeaderId
	JOIN dbo.DimSeat_V2 dimseat ON dimseat.DimSeatId = fts.DimSeatId_Start
	JOIN dbo.DimPriceCode_V2 dimpriceCode ON dimpriceCode.DimPriceCodeId = fts.DimPriceCodeId
WHERE dimSeasonHeader.SeasonName IN ('Blackhawks 17-18','Bulls 17-18')
	  AND dimseason.seasonname LIKE '% Suites' 
	  AND right(PriceCode,len(PriceCode)-1) = 'R'

--================================
--Rental
--================================

UPDATE fts
SET fts.DimTicketTypeId = 12
FROM #stgFactTicketSales fts
	JOIN dbo.DimEvent_V2 dimevent ON dimevent.DimEventId = fts.DimEventId
	JOIN dbo.DimSeason_V2 dimSeason ON dimSeason.DimSeasonId = fts.DimSeasonId
	JOIN dbo.DimEventHeader_V2 dimEventHeader ON dimEventheader.DimEventHeaderId = dimevent.DimEventHeaderId
	JOIN dbo.DimSeasonHeader_V2 dimSeasonHeader ON dimEventHeader.DimSeasonHeaderId = dimSeasonHeader.DimSeasonHeaderId
	JOIN dbo.DimSeat_V2 dimseat ON dimseat.DimSeatId = fts.DimSeatId_Start
	JOIN dbo.DimPriceCode_V2 dimpriceCode ON dimpriceCode.DimPriceCodeId = fts.DimPriceCodeId
WHERE dimSeasonHeader.SeasonName IN ('Blackhawks 17-18','Bulls 17-18')
	  AND (dimseason.seasonname LIKE '%Rentals'
			OR (dimseason.seasonname LIKE '%Harris%' AND PriceCode = 'AR')
			OR (dimseason.seasonname LIKE '% Suites' AND (SEctionName LIKE 'Pent%'
														  OR dimPriceCode.PriceCode = 'ER' 
														  OR SectionName IN ('C28','C67','P11','P14','P34','P35','P36','P81','BUD')
														 )
			   )
		  )
--================================
--Entertainment
--================================

UPDATE fts
SET fts.DimTicketTypeId = 13
FROM #stgFactTicketSales fts
	JOIN dbo.DimEvent_V2 dimevent ON dimevent.DimEventId = fts.DimEventId
	JOIN dbo.DimSeason_V2 dimSeason ON dimSeason.DimSeasonId = fts.DimSeasonId
	JOIN dbo.DimEventHeader_V2 dimEventHeader ON dimEventheader.DimEventHeaderId = dimevent.DimEventHeaderId
	JOIN dbo.DimSeasonHeader_V2 dimSeasonHeader ON dimEventHeader.DimSeasonHeaderId = dimSeasonHeader.DimSeasonHeaderId
	JOIN dbo.DimSeat_V2 dimseat ON dimseat.DimSeatId = fts.DimSeatId_Start
where NOT (dimseason.seasonname LIKE '%HARRIS CLUB%'
		   OR dimseason.seasonname LIKE '%PARKING%'
		   OR dimseason.seasonname LIKE '%RENTALS'
		   OR dimseason.seasonname LIKE '%SUITES'
		   OR dimseason.seasonname LIKE '%CHAMPIONS CLUB%'
		   OR dimseason.seasonname LIKE '%TRACKING'
		   OR dimseason.seasonname LIKE '%hawks%'
		   OR dimseason.seasonname LIKE '%bulls%'
		   OR dimseason.seasonname LIKE '%Theatre Box%'
		   )


--=============================================================================================
--PLAN TYPE
--=============================================================================================

--================================
--No PLan
--================================

UPDATE fts
SET fts.DimPlanTypeId = 0
FROM #stgFactTicketSales fts
WHERE DimTicketTypeId IN ( 5	--Harris Club - Single
						  ,9	--Premium - Inventory
						  ,11	--Premium - Single
						  ,12	--Rental
						  ,13	--Entertainment
						  )

--================================
--NEW
--================================

UPDATE fts
SET fts.DimPlanTypeId = 1
FROM #stgFactTicketSales fts
	LEFT JOIN dbo.renewalbook_2017_18 rb ON rb.ETL__SSID_TM_acct_id = fts.ETL__SSID_TM_acct_id
WHERE DimTicketTypeId = 6
	OR (DimTicketTypeId IN (  1	--Champions Club - Full
						     ,2	--Champions Club - Partial
						     ,3	--Harris Club - Full
						     ,4	--Harris Club - Partial
						     ,7	--Premium - Annual
						     ,8	--Premium - Comp
						  )
		AND rb.ETL__SSID_TM_acct_id IS NULL
		)

--================================
--RENEW1
--================================

UPDATE fts
SET fts.DimPlanTypeId = 2
FROM #stgFactTicketSales fts
	JOIN dbo.renewalbook_2017_18 rb ON rb.ETL__SSID_TM_acct_id = fts.ETL__SSID_TM_acct_id
WHERE DimTicketTypeId IN (  1	--Champions Club - Full
						     ,2	--Champions Club - Partial
						     ,3	--Harris Club - Full
						     ,4	--Harris Club - Partial
						     ,7	--Premium - Annual
						     ,8	--Premium - Comp
						  )
		AND rb.TermYears = 1

--================================
--RENEW2
--================================

UPDATE fts
SET fts.DimPlanTypeId = 3
FROM #stgFactTicketSales fts
	JOIN dbo.renewalbook_2017_18 rb ON rb.ETL__SSID_TM_acct_id = fts.ETL__SSID_TM_acct_id
WHERE DimTicketTypeId IN (  1	--Champions Club - Full
						     ,2	--Champions Club - Partial
						     ,3	--Harris Club - Full
						     ,4	--Harris Club - Partial
						     ,7	--Premium - Annual
						     ,8	--Premium - Comp
						  )
		AND rb.TermYears = 2

--================================
--RENEW3
--================================

UPDATE fts
SET fts.DimPlanTypeId = 4
FROM #stgFactTicketSales fts
	JOIN dbo.renewalbook_2017_18 rb ON rb.ETL__SSID_TM_acct_id = fts.ETL__SSID_TM_acct_id
WHERE DimTicketTypeId IN (  1	--Champions Club - Full
						     ,2	--Champions Club - Partial
						     ,3	--Harris Club - Full
						     ,4	--Harris Club - Partial
						     ,7	--Premium - Annual
						     ,8	--Premium - Comp
						  )
		AND rb.TermYears = 3

--================================
--RENEW4
--================================

UPDATE fts
SET fts.DimPlanTypeId = 5
FROM #stgFactTicketSales fts
	JOIN dbo.renewalbook_2017_18 rb ON rb.ETL__SSID_TM_acct_id = fts.ETL__SSID_TM_acct_id
WHERE DimTicketTypeId IN (  1	--Champions Club - Full
						     ,2	--Champions Club - Partial
						     ,3	--Harris Club - Full
						     ,4	--Harris Club - Partial
						     ,7	--Premium - Annual
						     ,8	--Premium - Comp
						  )
		AND rb.TermYears = 4

--================================
--RENEW5
--================================

UPDATE fts
SET fts.DimPlanTypeId = 6
FROM #stgFactTicketSales fts
	JOIN dbo.renewalbook_2017_18 rb ON rb.ETL__SSID_TM_acct_id = fts.ETL__SSID_TM_acct_id
WHERE DimTicketTypeId IN (  1	--Champions Club - Full
						     ,2	--Champions Club - Partial
						     ,3	--Harris Club - Full
						     ,4	--Harris Club - Partial
						     ,7	--Premium - Annual
						     ,8	--Premium - Comp
						  )
		AND rb.TermYears = 5

--================================
--RENEW8
--================================

UPDATE fts
SET fts.DimPlanTypeId = 7
FROM #stgFactTicketSales fts
	JOIN dbo.renewalbook_2017_18 rb ON rb.ETL__SSID_TM_acct_id = fts.ETL__SSID_TM_acct_id
WHERE DimTicketTypeId IN (  1	--Champions Club - Full
						     ,2	--Champions Club - Partial
						     ,3	--Harris Club - Full
						     ,4	--Harris Club - Partial
						     ,7	--Premium - Annual
						     ,8	--Premium - Comp
						  )
		AND rb.TermYears = 8

--================================
--RENEW20
--================================

UPDATE fts
SET fts.DimPlanTypeId = 8
FROM #stgFactTicketSales fts
	JOIN dbo.renewalbook_2017_18 rb ON rb.ETL__SSID_TM_acct_id = fts.ETL__SSID_TM_acct_id
WHERE DimTicketTypeId IN (  1	--Champions Club - Full
						     ,2	--Champions Club - Partial
						     ,3	--Harris Club - Full
						     ,4	--Harris Club - Partial
						     ,7	--Premium - Annual
						     ,8	--Premium - Comp
						  )
		AND rb.TermYears = 20

--=============================================================================================
--SEAT TYPE
--=============================================================================================

--================================
--LOWER
--================================

UPDATE fts
SET fts.DimSeatTypeId = 1
FROM #stgFactTicketSales fts
	JOIN dbo.DimSeat_V2 dimseat ON dimseat.DimSeatId = fts.DimSeatId_Start
	JOIN dbo.DimSeason_V2 dimseason ON dimseason.DimSeasonId = fts.DimSeasonId
WHERE DimTicketTypeId NOT IN (0,-1)
	  AND LEFT(Sectionname,1) = 'L'

--================================
--CLUB
--================================

UPDATE fts
SET fts.DimSeatTypeId = 2
FROM #stgFactTicketSales fts
	JOIN dbo.DimSeat_V2 dimseat ON dimseat.DimSeatId = fts.DimSeatId_Start
	JOIN dbo.DimSeason_V2 dimseason ON dimseason.DimSeasonId = fts.DimSeasonId
WHERE DimTicketTypeId NOT IN (0,-1)
	  AND LEFT(Sectionname,1) = 'C'

--================================
--PENTHOUSE
--================================

UPDATE fts
SET fts.DimSeatTypeId = 3
FROM #stgFactTicketSales fts
	JOIN dbo.DimSeat_V2 dimseat ON dimseat.DimSeatId = fts.DimSeatId_Start
	JOIN dbo.DimSeason_V2 dimseason ON dimseason.DimSeasonId = fts.DimSeasonId
WHERE DimTicketTypeId NOT IN (0,-1)
	  AND LEFT(Sectionname,1) = 'P'

--================================
--CHAMPIONS CLUB
--================================

UPDATE fts
SET fts.DimSeatTypeId = 1
FROM #stgFactTicketSales fts
	JOIN dbo.DimSeat_V2 dimseat ON dimseat.DimSeatId = fts.DimSeatId_Start
	JOIN dbo.DimSeason_V2 dimseason ON dimseason.DimSeasonId = fts.DimSeasonId
WHERE DimTicketTypeId NOT IN (0,-1)
	  AND dimseason.seasonname LIKE '%champions%'

--================================
--HARRIS CLUB
--================================

UPDATE fts
SET fts.DimSeatTypeId = 1
FROM #stgFactTicketSales fts
	JOIN dbo.DimSeat_V2 dimseat ON dimseat.DimSeatId = fts.DimSeatId_Start
	JOIN dbo.DimSeason_V2 dimseason ON dimseason.DimSeasonId = fts.DimSeasonId
WHERE DimTicketTypeId NOT IN (0,-1)
	  AND dimseason.seasonname LIKE '%Harris%'


GO
