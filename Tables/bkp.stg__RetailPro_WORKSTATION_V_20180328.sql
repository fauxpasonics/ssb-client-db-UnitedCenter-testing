CREATE TABLE [bkp].[stg__RetailPro_WORKSTATION_V_20180328]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__RetailPro__ETL____679450C0] DEFAULT (getdate()),
[ETL__SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WS_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CONTROLLER_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WS_TYPE_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBS_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STORE_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[D_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOC_DESC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DB_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HOME_URL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOGOUT_AUTO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOGOUT_MINUTES] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACTIVE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TIME_IN] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WORKSTATION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STATION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WORKSTATION_NUMBER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HISEC_SBS_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HISEC_EMPL_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FQDN] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
