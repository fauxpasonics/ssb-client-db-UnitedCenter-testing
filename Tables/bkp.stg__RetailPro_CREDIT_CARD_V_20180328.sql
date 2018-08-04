CREATE TABLE [bkp].[stg__RetailPro_CREDIT_CARD_V_20180328]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____155B1B70] DEFAULT (getdate()),
[ETL__SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBS_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CRD_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CRD_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACTIVE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
