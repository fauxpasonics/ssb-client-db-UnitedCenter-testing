CREATE TABLE [ods].[RetailPro_Invc_Tender_v]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[INVC_SID] [bigint] NULL,
[CRD_TYPE] [int] NULL,
[TENDER_TYPE] [int] NULL,
[TAKEN] [decimal] (18, 6) NULL,
[GIVEN] [decimal] (18, 6) NULL,
[AMT] [decimal] (18, 6) NULL
)
GO
ALTER TABLE [ods].[RetailPro_Invc_Tender_v] ADD CONSTRAINT [PK_ods__RetailPro_Invc_Tender_v] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__RetailPro_Invc_Tender_v] ON [ods].[RetailPro_Invc_Tender_v]
GO
CREATE NONCLUSTERED INDEX [IX_ETL__UpdatedDate] ON [ods].[RetailPro_Invc_Tender_v] ([ETL__UpdatedDate] DESC)
GO
