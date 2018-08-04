CREATE TABLE [stg].[RetailPro_POVoucher_v]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[VOU_SID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBS_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STORE_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VOU_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VOU_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VOU_CLASS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VEND_CODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PAYEE_CODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VEND_INVC_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLERK_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WORKSTATION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ORIG_STORE_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STATUS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PROC_STATUS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HELD] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PO_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DISC_PERC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DISC_AMT] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CREATED_DATE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MODIFIED_DATE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POST_DATE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SEASON_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMS_POST_DATE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACTIVE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CREATEDBY_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MODIFIEDBY_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOC_REF_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[RetailPro_POVoucher_v] ADD CONSTRAINT [PK__RetailPr__C4EA24451166B2E0] PRIMARY KEY CLUSTERED  ([ETL__ID])
GO
