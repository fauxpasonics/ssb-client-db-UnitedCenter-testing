CREATE TABLE [bkp].[stg__RetailPro_CUST_ADDRESS_V_20180328]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____1B13F4C6] DEFAULT (getdate()),
[ETL__SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUST_SID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDR_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BEGIN_DATE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[END_DATE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDR_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDRESS1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDRESS2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDRESS3] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ZIP] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PHONE1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PHONE2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EMAIL_ADDR] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACTIVE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
