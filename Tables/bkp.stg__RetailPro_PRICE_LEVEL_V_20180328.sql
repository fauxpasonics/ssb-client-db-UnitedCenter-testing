CREATE TABLE [bkp].[stg__RetailPro_PRICE_LEVEL_V_20180328]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____70E8B0D0] DEFAULT (getdate()),
[ETL__SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBS_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PRICE_LVL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PRICE_LVL_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DISC_PERC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[USE_DISC_PERC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACTIVE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
