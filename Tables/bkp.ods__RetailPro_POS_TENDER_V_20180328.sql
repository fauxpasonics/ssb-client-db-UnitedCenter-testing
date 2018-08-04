CREATE TABLE [bkp].[ods__RetailPro_POS_TENDER_V_20180328]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____6D181FEC] DEFAULT (getdate()),
[ETL__UpdatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____6E0C4425] DEFAULT (getdate()),
[ETL__IsDeleted] [bit] NOT NULL CONSTRAINT [DF__RetailPro__ETL____6F00685E] DEFAULT ((0)),
[ETL__DeletedDate] [datetime] NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ETL__SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
