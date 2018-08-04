CREATE TABLE [ods].[RetailPro_Invoice_v]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[INVC_SID] [bigint] NULL,
[SBS_NO] [int] NULL,
[STORE_NO] [int] NULL,
[INVC_NO] [int] NULL,
[INVC_TYPE] [int] NULL,
[HISEC_TYPE] [int] NULL,
[STATUS] [int] NULL,
[HELD] [bit] NULL,
[CASHIER_ID] [int] NULL,
[CUST_SID] [bigint] NULL,
[ADDR_NO] [int] NULL,
[SHIPTO_CUST_SID] [bigint] NULL,
[WORKSTATION] [int] NULL,
[ORIG_STORE_NO] [int] NULL,
[SO_NO] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SO_SID] [bigint] NULL,
[CUST_PO_NO] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NOTE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DISC_PERC] [decimal] (18, 6) NULL,
[DISC_AMT] [decimal] (18, 6) NULL,
[CREATED_DATE] [date] NULL,
[MODIFIED_DATE] [date] NULL,
[POST_DATE] [date] NULL,
[TRACKING_NO] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REF_INVC_SID] [bigint] NULL,
[CMS_POST_DATE] [date] NULL,
[WS_SEQ_NO] [int] NULL,
[DRAWER_NO] [int] NULL,
[CREATEDBY_ID] [int] NULL,
[MODIFIEDBY_ID] [int] NULL,
[CLERK_ID] [int] NULL
)
GO
ALTER TABLE [ods].[RetailPro_Invoice_v] ADD CONSTRAINT [PK_ods__RetailPro_Invoice_v] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__RetailPro_Invoice_v] ON [ods].[RetailPro_Invoice_v]
GO
CREATE NONCLUSTERED INDEX [IX_ETL__UpdatedDate] ON [ods].[RetailPro_Invoice_v] ([ETL__UpdatedDate] DESC)
GO
