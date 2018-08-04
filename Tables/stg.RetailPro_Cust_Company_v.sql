CREATE TABLE [stg].[RetailPro_Cust_Company_v]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[COMPANY_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COMPANY_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[RetailPro_Cust_Company_v] ADD CONSTRAINT [PK__RetailPr__C4EA2445B20EDE96] PRIMARY KEY CLUSTERED  ([ETL__ID])
GO
