CREATE TABLE [stg].[RetailPro_POS_Tender_v]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[TENDER_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBS_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TENDER_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUST_REQ_TENDER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUST_REQ_CHANGE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUST_REQ_FLDS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INVC_REQ_TENDER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INVC_REQ_CHANGE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INVC_REQ_FLDS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SO_REQ_TENDER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SO_REQ_CHANGE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SO_REQ_FLDS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XZ_INCL_FLAG1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XZ_INCL_FLAG2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MEDIA_COUNT] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RETURN_INVC_TENDER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TENDER_ORDER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TENDER_SHORT_LABEL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[RetailPro_POS_Tender_v] ADD CONSTRAINT [PK__RetailPr__C4EA2445FA817B98] PRIMARY KEY CLUSTERED  ([ETL__ID])
GO
