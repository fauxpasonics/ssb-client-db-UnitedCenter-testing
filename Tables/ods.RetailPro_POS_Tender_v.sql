CREATE TABLE [ods].[RetailPro_POS_Tender_v]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[TENDER_TYPE] [int] NULL,
[SBS_NO] [int] NULL,
[TENDER_NAME] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUST_REQ_TENDER] [int] NULL,
[CUST_REQ_CHANGE] [int] NULL,
[CUST_REQ_FLDS] [int] NULL,
[INVC_REQ_TENDER] [int] NULL,
[INVC_REQ_CHANGE] [int] NULL,
[INVC_REQ_FLDS] [int] NULL,
[SO_REQ_TENDER] [int] NULL,
[SO_REQ_CHANGE] [int] NULL,
[SO_REQ_FLDS] [int] NULL,
[XZ_INCL_FLAG1] [int] NULL,
[XZ_INCL_FLAG2] [int] NULL,
[MEDIA_COUNT] [int] NULL,
[RETURN_INVC_TENDER] [int] NULL,
[TENDER_ORDER] [int] NULL,
[TENDER_SHORT_LABEL] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [ods].[RetailPro_POS_Tender_v] ADD CONSTRAINT [PK_ods__RetailPro_POS_Tender_v] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__RetailPro_POS_Tender_v] ON [ods].[RetailPro_POS_Tender_v]
GO
CREATE NONCLUSTERED INDEX [IX_ETL__UpdatedDate] ON [ods].[RetailPro_POS_Tender_v] ([ETL__UpdatedDate] DESC)
GO
