CREATE TABLE [ods].[RetailPro_Price_Level_v]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[SBS_NO] [int] NULL,
[PRICE_LVL] [int] NULL,
[PRICE_LVL_NAME] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DISC_PERC] [decimal] (18, 6) NULL,
[USE_DISC_PERC] [bit] NULL,
[ACTIVE] [bit] NULL
)
GO
ALTER TABLE [ods].[RetailPro_Price_Level_v] ADD CONSTRAINT [PK_ods__RetailPro_Price_Level_v] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__RetailPro_Price_Level_v] ON [ods].[RetailPro_Price_Level_v]
GO
CREATE NONCLUSTERED INDEX [IX_ETL__UpdatedDate] ON [ods].[RetailPro_Price_Level_v] ([ETL__UpdatedDate] DESC)
GO
