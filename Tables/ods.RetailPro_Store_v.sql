CREATE TABLE [ods].[RetailPro_Store_v]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[SBS_NO] [int] NULL,
[STORE_NO] [int] NULL,
[STORE_CODE] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STORE_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDRESS1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDRESS2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDRESS3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PRICE_LVL] [int] NULL,
[TAX_AREA_ID] [int] NULL,
[CAL_ID] [int] NULL,
[ACTIVE] [bit] NULL,
[ACTIVATION_DATE] [date] NULL
)
GO
ALTER TABLE [ods].[RetailPro_Store_v] ADD CONSTRAINT [PK_ods__RetailPro_Store_v] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__RetailPro_Store_v] ON [ods].[RetailPro_Store_v]
GO
CREATE NONCLUSTERED INDEX [IX_ETL__UpdatedDate] ON [ods].[RetailPro_Store_v] ([ETL__UpdatedDate] DESC)
GO
