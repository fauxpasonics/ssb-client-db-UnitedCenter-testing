CREATE TABLE [ods].[RetailPro_Vendor_v]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[VEND_CODE] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VEND_ID] [int] NULL,
[SBS_NO] [int] NULL,
[VEND_NAME] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FIRST_NAME] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LAST_NAME] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDRESS1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDRESS2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDRESS3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ZIP] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PHONE1] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PHONE2] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACTIVE] [bit] NULL,
[VEND_LEAD_TIME] [int] NULL,
[EMAIL_ADDR] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [ods].[RetailPro_Vendor_v] ADD CONSTRAINT [PK_ods__RetailPro_Vendor_v] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__RetailPro_Vendor_v] ON [ods].[RetailPro_Vendor_v]
GO
CREATE NONCLUSTERED INDEX [IX_ETL__UpdatedDate] ON [ods].[RetailPro_Vendor_v] ([ETL__UpdatedDate] DESC)
GO
