CREATE TABLE [stg].[RetailPro_Invc_Tender_v]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[INVC_SID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CRD_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TENDER_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TAKEN] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GIVEN] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMT] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[RetailPro_Invc_Tender_v] ADD CONSTRAINT [PK__RetailPr__C4EA2445B90EEBB7] PRIMARY KEY CLUSTERED  ([ETL__ID])
GO
