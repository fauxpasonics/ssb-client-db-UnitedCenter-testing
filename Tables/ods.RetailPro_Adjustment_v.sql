CREATE TABLE [ods].[RetailPro_Adjustment_v]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ADJ_SID] [bigint] NULL,
[SBS_NO] [int] NULL,
[STORE_NO] [int] NULL,
[ADJ_NO] [int] NULL,
[ADJ_TYPE] [int] NULL,
[CREATING_DOC_NO] [int] NULL,
[CREATING_DOC_TYPE] [int] NULL,
[ORIG_STORE_NO] [int] NULL,
[CLERK_ID] [int] NULL,
[PRICE_LVL] [int] NULL,
[WORKSTATION] [int] NULL,
[STATUS] [int] NULL,
[HELD] [bit] NULL,
[ADJ_REASON_ID] [int] NULL,
[TAX_AREA_ID] [int] NULL,
[CREATED_DATE] [date] NULL,
[MODIFIED_DATE] [date] NULL,
[POST_DATE] [date] NULL,
[VERIFIED] [bit] NULL,
[AUDITED] [bit] NULL,
[CMS_POST_DATE] [date] NULL,
[WS_SEQ_NO] [int] NULL,
[ADJ_REASON_NAME] [varchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CONTROLLER] [int] NULL,
[CREATEDBY_ID] [int] NULL,
[MODIFIEDBY_ID] [int] NULL,
[ORIG_CONTROLLER] [int] NULL,
[AL_EXTRACT_DATE] [datetime] NULL,
[DOC_REASON_ID] [int] NULL,
[SEASON_ID] [int] NULL,
[SUBLOC_CODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUBLOC_ID] [int] NULL,
[SUBLOC_MOVE_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NOTE] [varchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [ods].[RetailPro_Adjustment_v] ADD CONSTRAINT [PK_ods__RetailPro_Adjustment_v] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__RetailPro_Adjustment_v] ON [ods].[RetailPro_Adjustment_v]
GO
CREATE NONCLUSTERED INDEX [IX_ETL__UpdatedDate] ON [ods].[RetailPro_Adjustment_v] ([ETL__UpdatedDate] DESC)
GO
