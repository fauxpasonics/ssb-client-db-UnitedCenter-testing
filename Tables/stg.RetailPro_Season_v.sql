CREATE TABLE [stg].[RetailPro_Season_v]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[SEASON_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SEASON_CODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SEASON_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BEGIN_DATE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[END_DATE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ARCHIVED] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACTIVE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[RetailPro_Season_v] ADD CONSTRAINT [PK__RetailPr__C4EA24457CF10E99] PRIMARY KEY CLUSTERED  ([ETL__ID])
GO
