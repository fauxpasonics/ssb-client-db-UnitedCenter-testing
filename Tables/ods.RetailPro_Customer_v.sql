CREATE TABLE [ods].[RetailPro_Customer_v]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[CUST_SID] [bigint] NULL,
[SBS_NO] [int] NULL,
[REGION_ID] [int] NULL,
[SECTOR_ID] [int] NULL,
[CUST_ID] [int] NULL,
[CUST_CLASS] [int] NULL,
[STORE_NO] [int] NULL,
[HOME_STORE_NO] [int] NULL,
[STATUS] [int] NULL,
[COMPANY_ID] [int] NULL,
[TITLE_ID] [int] NULL,
[FIRST_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LAST_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INFO1] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INFO2] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PRICE_LVL] [int] NULL,
[ACTIVE] [bit] NULL,
[UDF1_DATE] [date] NULL,
[UDF2_DATE] [date] NULL,
[CREATEDBY_ID] [int] NULL,
[CREATED_DATE] [date] NULL,
[NOTES] [nvarchar] (320) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EMAIL_ADDR] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MARKETING_FLAG] [int] NULL,
[CUST_TYPE] [int] NULL,
[CMS_POST_DATE] [date] NULL,
[ALLOW_POST] [bit] NULL,
[ALLOW_PHONE] [bit] NULL,
[ALLOW_EMAIL] [bit] NULL,
[PRIMARY_CLERK] [int] NULL,
[FST_SALE_DATE] [date] NULL,
[LST_SALE_DATE] [date] NULL,
[LST_RETURN_DATE] [date] NULL,
[LST_SALE_AMT] [decimal] (18, 6) NULL
)
GO
ALTER TABLE [ods].[RetailPro_Customer_v] ADD CONSTRAINT [PK_ods__RetailPro_Customer_v] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__RetailPro_Customer_v] ON [ods].[RetailPro_Customer_v]
GO
CREATE NONCLUSTERED INDEX [IX_ETL__UpdatedDate] ON [ods].[RetailPro_Customer_v] ([ETL__UpdatedDate] DESC)
GO
