CREATE TABLE [ods].[vw_Blackhawks_FTS]
(
[SeasonHeaderName] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EventHeaderCode] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SeasonName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EventCode] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EventName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EventDesc] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EventDate] [date] NULL,
[EventTime] [time] NULL,
[EventDateTime] [datetime] NULL,
[FactTicketSalesId] [bigint] NOT NULL,
[ETL__SourceSystem] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__IsDeleted] [bit] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ETL__SSID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__SSID_TM_event_id] [int] NULL,
[ETL__SSID_TM_section_id] [int] NULL,
[ETL__SSID_TM_row_id] [int] NULL,
[ETL__SSID_TM_seat_num] [int] NULL,
[ETL__SSID_TM_acct_id] [int] NULL,
[ETL__SSID_TM_price_code] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DimDateId] [int] NOT NULL,
[DimTimeId] [int] NOT NULL,
[DimTicketCustomerId] [bigint] NOT NULL,
[DimArenaId] [int] NOT NULL,
[DimSeasonId] [int] NOT NULL,
[DimItemId] [int] NOT NULL,
[DimEventId] [int] NOT NULL,
[DimPlanId] [int] NOT NULL,
[DimPriceLevelId] [int] NOT NULL,
[DimPriceTypeId] [int] NOT NULL,
[DimPriceCodeId] [int] NOT NULL,
[DimLedgerId] [int] NOT NULL,
[DimSeatId_Start] [int] NOT NULL,
[DimSeatStatusId] [int] NOT NULL,
[DimRepId] [int] NOT NULL,
[DimSalesCodeId] [int] NOT NULL,
[DimPromoId] [int] NOT NULL,
[DimEventZoneId] [int] NOT NULL,
[DimOfferId] [int] NOT NULL,
[DimPlanTypeId] [int] NOT NULL,
[DimTicketTypeId] [int] NOT NULL,
[DimSeatTypeId] [int] NOT NULL,
[DimTicketClassId] [int] NOT NULL,
[OrderDate] [datetime] NULL,
[QtySeat] [int] NULL,
[QtySeatFSE] [decimal] (18, 6) NULL,
[QtySeatRenewable] [int] NULL,
[RevenueTicket] [decimal] (18, 6) NULL,
[RevenueFees] [decimal] (18, 6) NULL,
[RevenueSurcharge] [decimal] (18, 6) NULL,
[RevenueTax] [decimal] (18, 6) NULL,
[RevenueTotal] [decimal] (18, 6) NULL,
[FullPrice] [decimal] (18, 6) NULL,
[Discount] [decimal] (18, 6) NULL,
[PaidStatus] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaidAmount] [decimal] (18, 6) NULL,
[OwedAmount] [decimal] (18, 6) NULL,
[PaymentDateFirst] [datetime] NULL,
[PaymentDateLast] [datetime] NULL,
[IsSold] [bit] NULL,
[IsReserved] [bit] NULL,
[IsReturned] [bit] NULL,
[IsPremium] [bit] NULL,
[IsDiscount] [bit] NULL,
[IsComp] [bit] NULL,
[IsHost] [bit] NULL,
[IsPlan] [bit] NULL,
[IsPartial] [bit] NULL,
[IsSingleEvent] [bit] NULL,
[IsGroup] [bit] NULL,
[IsBroker] [bit] NULL,
[IsRenewal] [bit] NULL,
[IsExpanded] [bit] NULL,
[IsAutoRenewalNextSeason] [bit] NULL,
[TM_order_num] [bigint] NULL,
[TM_order_line_item] [int] NULL,
[TM_order_line_item_seq] [int] NULL,
[TM_purchase_price] [decimal] (18, 6) NULL,
[TM_block_purchase_price] [decimal] (18, 6) NULL,
[TM_pc_ticket] [decimal] (18, 6) NULL,
[TM_pc_tax] [decimal] (18, 6) NULL,
[TM_pc_licfee] [decimal] (18, 6) NULL,
[TM_pc_other1] [decimal] (18, 6) NULL,
[TM_pc_other2] [decimal] (18, 6) NULL,
[TM_pc_other3] [decimal] (18, 6) NULL,
[TM_pc_other4] [decimal] (18, 6) NULL,
[TM_pc_other5] [decimal] (18, 6) NULL,
[TM_pc_other6] [decimal] (18, 6) NULL,
[TM_pc_other7] [decimal] (18, 6) NULL,
[TM_pc_other8] [decimal] (18, 6) NULL,
[TM_comp_code] [int] NULL,
[TM_comp_name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TM_surchg_code_desc] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TM_group_sales_name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TM_ticket_type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TM_tran_type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TM_sales_source_name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TM_retail_ticket_type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TM_retail_qualifiers] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TM_retail_mask] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TM_ticket_seq_id] [bigint] NULL,
[Custom_Int_1] [int] NULL,
[Custom_Int_2] [int] NULL,
[Custom_Int_3] [int] NULL,
[Custom_Int_4] [int] NULL,
[Custom_Int_5] [int] NULL,
[Custom_Dec_1] [decimal] (18, 6) NULL,
[Custom_Dec_2] [decimal] (18, 6) NULL,
[Custom_Dec_3] [decimal] (18, 6) NULL,
[Custom_Dec_4] [decimal] (18, 6) NULL,
[Custom_Dec_5] [decimal] (18, 6) NULL,
[Custom_DateTime_1] [datetime] NULL,
[Custom_DateTime_2] [datetime] NULL,
[Custom_DateTime_3] [datetime] NULL,
[Custom_DateTime_4] [datetime] NULL,
[Custom_DateTime_5] [datetime] NULL,
[Custom_Bit_1] [bit] NULL,
[Custom_Bit_2] [bit] NULL,
[Custom_Bit_3] [bit] NULL,
[Custom_Bit_4] [bit] NULL,
[Custom_Bit_5] [bit] NULL,
[Custom_nVarChar_1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Custom_nVarChar_2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Custom_nVarChar_3] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Custom_nVarChar_4] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Custom_nVarChar_5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UpdatedBy] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NULL,
[UpdatedDate] [datetime] NULL
)
GO
