CREATE TABLE [bkp].[stg__RetailPro_STORE_V_20180328]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____18F6A22A] DEFAULT (getdate()),
[ETL__SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBS_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STORE_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STORE_CODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STORE_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDRESS1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDRESS2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDRESS3] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PRICE_LVL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TAX_AREA_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAL_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACTIVE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACTIVATION_DATE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
