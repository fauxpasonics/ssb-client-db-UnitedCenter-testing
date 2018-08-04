CREATE TABLE [ods].[RetailPro_PO_v]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[PO_SID] [bigint] NULL,
[SBS_NO] [int] NULL,
[STORE_NO] [int] NULL,
[PO_NO] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PO_TYPE] [int] NULL,
[CLERK_ID] [int] NULL,
[SHIPTO_STORE_NO] [int] NULL,
[BILLTO_STORE_NO] [int] NULL,
[VEND_CODE] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VEND_ACCT_NO] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STATUS] [int] NULL,
[CREATED_DATE] [date] NULL,
[CANCEL_DATE] [date] NULL,
[MODIFIED_DATE] [date] NULL,
[INSTRUCTIONS] [nvarchar] (305) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SEASON_ID] [int] NULL,
[CMS] [int] NULL,
[ACTIVE] [bit] NULL,
[HELD] [bit] NULL,
[CMS_POST_DATE] [date] NULL,
[CREATEDBY_ID] [int] NULL,
[MODIFIEDBY_ID] [int] NULL,
[SUBMITTED_DATE] [datetime] NULL,
[REF_PO_SID] [bigint] NULL,
[PENDING_PO] [bit] NULL
)
GO
ALTER TABLE [ods].[RetailPro_PO_v] ADD CONSTRAINT [PK_ods__RetailPro_PO_v] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__RetailPro_PO_v] ON [ods].[RetailPro_PO_v]
GO
CREATE NONCLUSTERED INDEX [IX_ETL__UpdatedDate] ON [ods].[RetailPro_PO_v] ([ETL__UpdatedDate] DESC)
GO
