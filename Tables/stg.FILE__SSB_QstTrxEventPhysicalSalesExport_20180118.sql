CREATE TABLE [stg].[FILE__SSB_QstTrxEventPhysicalSalesExport_20180118]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ORGID] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EVENTID] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOCATIONID] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STOCKID] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADJUSTMENTMEALSQTY] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADJUSTMENTSPOILAGEQTY] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UNITPRICE] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UNITCOST] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DISCOUNTVALUE] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STARTQUANTITY] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STARTQUANTITYPOSTED] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PHYSICALSTARTQUANTITY] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PHYSICALSTARTQUANTITYPOSTED] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PRETRANSFERINQUANTITY] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PRETRANSFEROUTQUANTITY] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EVENTTRANSFERINQUANTITY] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EVENTTRANSFEROUTQUANTITY] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADJUSTINVENTORYINQUANTITY] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADJUSTINVENTORYOUTQUANTITY] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ENDQUANTITY] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PHYSICALENDQUANTITY] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PHYSICALENDQUANTITYPOSTED] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RECIPEUNITQUANTITY] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PHYSICALQUANTITY] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PHYSICALSALES] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PHYSICALSALESTAXINC] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PHYSICALSALESTAXEX] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TERMINALQUANTITY] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TERMINALSALES] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TERMINALSALESEX] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TERMINALSALESINC] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VARIANCE] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLOSEOUTQUANTITY] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ISCALCULATED] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[FILE__SSB_QstTrxEventPhysicalSalesExport_20180118] ADD CONSTRAINT [PK__FILE__SS__C4EA2445B4E8DBA1] PRIMARY KEY CLUSTERED  ([ETL__ID])
GO
