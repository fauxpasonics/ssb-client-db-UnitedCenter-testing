CREATE TABLE [ods].[RetailPro_POVoucher_v]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[VOU_SID] [bigint] NULL,
[SBS_NO] [int] NULL,
[STORE_NO] [int] NULL,
[VOU_NO] [int] NULL,
[VOU_TYPE] [int] NULL,
[VOU_CLASS] [int] NULL,
[VEND_CODE] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PAYEE_CODE] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VEND_INVC_ID] [int] NULL,
[CLERK_ID] [int] NULL,
[WORKSTATION] [int] NULL,
[ORIG_STORE_NO] [int] NULL,
[STATUS] [int] NULL,
[PROC_STATUS] [int] NULL,
[HELD] [bit] NULL,
[PO_NO] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DISC_PERC] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DISC_AMT] [decimal] (18, 6) NULL,
[CREATED_DATE] [date] NULL,
[MODIFIED_DATE] [date] NULL,
[POST_DATE] [date] NULL,
[SEASON_ID] [int] NULL,
[CMS_POST_DATE] [date] NULL,
[ACTIVE] [bit] NULL,
[CREATEDBY_ID] [int] NULL,
[MODIFIEDBY_ID] [int] NULL,
[DOC_REF_NO] [int] NULL
)
GO
ALTER TABLE [ods].[RetailPro_POVoucher_v] ADD CONSTRAINT [PK_ods__RetailPro_POVoucher_v] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__RetailPro_POVoucher_v] ON [ods].[RetailPro_POVoucher_v]
GO
CREATE NONCLUSTERED INDEX [IX_ETL__UpdatedDate] ON [ods].[RetailPro_POVoucher_v] ([ETL__UpdatedDate] DESC)
GO
