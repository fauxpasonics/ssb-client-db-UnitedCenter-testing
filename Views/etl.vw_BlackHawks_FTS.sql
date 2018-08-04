SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE VIEW [etl].[vw_BlackHawks_FTS] 
AS

SELECT dsh.SeasonName SeasonHeaderName
	   ,deh.EventCode EventHeaderCode
	   ,ds.SeasonName SeasonName
	   ,de.EventCode
	   ,de.EventName
	   ,de.EventDesc
	   ,de.EventDate
	   ,de.EventTime
	   ,de.EventDateTime
	   ,f.FactTicketSalesId,
       f.ETL__SourceSystem,
       f.ETL__CreatedDate,
       f.ETL__UpdatedDate,
       f.ETL__IsDeleted,
       f.ETL__DeltaHashKey,
       f.ETL__SSID,
       f.ETL__SSID_TM_event_id,
       f.ETL__SSID_TM_section_id,
       f.ETL__SSID_TM_row_id,
       f.ETL__SSID_TM_seat_num,
       f.ETL__SSID_TM_acct_id,
       f.ETL__SSID_TM_price_code,
       f.DimDateId,
       f.DimTimeId,
       f.DimTicketCustomerId,
       f.DimArenaId,
       f.DimSeasonId,
       f.DimItemId,
       f.DimEventId,
       f.DimPlanId,
       f.DimPriceLevelId,
       f.DimPriceTypeId,
       f.DimPriceCodeId,
       f.DimLedgerId,
       f.DimSeatId_Start,
       f.DimSeatStatusId,
       f.DimRepId,
       f.DimSalesCodeId,
       f.DimPromoId,
       f.DimEventZoneId,
       f.DimOfferId,
       f.DimPlanTypeId,
       f.DimTicketTypeId,
       f.DimSeatTypeId,
       f.DimTicketClassId,
       f.OrderDate,
       f.QtySeat,
       f.QtySeatFSE,
       f.QtySeatRenewable,
       f.RevenueTicket,
       f.RevenueFees,
       f.RevenueSurcharge,
       f.RevenueTax,
       f.RevenueTotal,
       f.FullPrice,
       f.Discount,
       f.PaidStatus,
       f.PaidAmount,
       f.OwedAmount,
       f.PaymentDateFirst,
       f.PaymentDateLast,
       f.IsSold,
       f.IsReserved,
       f.IsReturned,
       f.IsPremium,
       f.IsDiscount,
       f.IsComp,
       f.IsHost,
       f.IsPlan,
       f.IsPartial,
       f.IsSingleEvent,
       f.IsGroup,
       f.IsBroker,
       f.IsRenewal,
       f.IsExpanded,
       f.IsAutoRenewalNextSeason,
       f.TM_order_num,
       f.TM_order_line_item,
       f.TM_order_line_item_seq,
       f.TM_purchase_price,
       f.TM_block_purchase_price,
       f.TM_pc_ticket,
       f.TM_pc_tax,
       f.TM_pc_licfee,
       f.TM_pc_other1,
       f.TM_pc_other2,
       f.TM_pc_other3,
       f.TM_pc_other4,
       f.TM_pc_other5,
       f.TM_pc_other6,
       f.TM_pc_other7,
       f.TM_pc_other8,
       f.TM_comp_code,
       f.TM_comp_name,
       f.TM_surchg_code_desc,
       f.TM_group_sales_name,
       f.TM_ticket_type,
       f.TM_tran_type,
       f.TM_sales_source_name,
       f.TM_retail_ticket_type,
       f.TM_retail_qualifiers,
       f.TM_retail_mask,
       f.TM_ticket_seq_id,
       f.Custom_Int_1,
       f.Custom_Int_2,
       f.Custom_Int_3,
       f.Custom_Int_4,
       f.Custom_Int_5,
       f.Custom_Dec_1,
       f.Custom_Dec_2,
       f.Custom_Dec_3,
       f.Custom_Dec_4,
       f.Custom_Dec_5,
       f.Custom_DateTime_1,
       f.Custom_DateTime_2,
       f.Custom_DateTime_3,
       f.Custom_DateTime_4,
       f.Custom_DateTime_5,
       f.Custom_Bit_1,
       f.Custom_Bit_2,
       f.Custom_Bit_3,
       f.Custom_Bit_4,
       f.Custom_Bit_5,
       f.Custom_nVarChar_1,
       f.Custom_nVarChar_2,
       f.Custom_nVarChar_3,
       f.Custom_nVarChar_4,
       f.Custom_nVarChar_5,
       f.CreatedBy,
       f.UpdatedBy,
       f.CreatedDate,
       f.UpdatedDate

FROM dbo.FactTicketSales_V2 f
	JOIN dbo.DimEvent_V2 de ON de.DimEventId = f.DimEventId
	JOIN dbo.DimSeason_V2 ds ON ds.dimseasonid = f.dimseasonid
	JOIN dbo.DimEventHeader_V2 deh ON deh.DimEventHeaderId = de.DimEventHeaderId
	JOIN dbo.DimSeasonHeader_V2 dsh ON dsh.DimSeasonHeaderId = deh.DimSeasonHeaderId
	WHERE dsh.SeasonName like '%hawks%'




GO
