CREATE TABLE [stg].[RetailPro_Cust_Address_v]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
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
ALTER TABLE [stg].[RetailPro_Cust_Address_v] ADD CONSTRAINT [PK__RetailPr__C4EA244534DE99E8] PRIMARY KEY CLUSTERED  ([ETL__ID])
GO
