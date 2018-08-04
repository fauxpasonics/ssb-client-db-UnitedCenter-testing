CREATE TABLE [ods].[RetailPro_Workstation_v]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[WS_ID] [int] NULL,
[CONTROLLER_ID] [int] NULL,
[WS_TYPE_ID] [int] NULL,
[SBS_NO] [int] NULL,
[STORE_NO] [int] NULL,
[D_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOC_DESC] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DB_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HOME_URL] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOGOUT_AUTO] [int] NULL,
[LOGOUT_MINUTES] [datetime] NULL,
[ACTIVE] [int] NULL,
[TIME_IN] [datetime] NULL,
[WORKSTATION] [int] NULL,
[CMS] [int] NULL,
[STATION] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WORKSTATION_NUMBER] [int] NULL,
[HISEC_SBS_NO] [int] NULL,
[HISEC_EMPL_ID] [int] NULL,
[FQDN] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [ods].[RetailPro_Workstation_v] ADD CONSTRAINT [PK_ods__RetailPro_Workstation_v] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__RetailPro_Workstation_v] ON [ods].[RetailPro_Workstation_v]
GO
CREATE NONCLUSTERED INDEX [IX_ETL__UpdatedDate] ON [ods].[RetailPro_Workstation_v] ([ETL__UpdatedDate] DESC)
GO
