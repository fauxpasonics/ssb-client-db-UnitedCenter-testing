CREATE TABLE [stg].[NCR_GLCode]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[id] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[code] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[subcontractor] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[noadjustments] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[nocoupons] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[organizationid] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_GLCode] ADD CONSTRAINT [PK__NCR_GLCo__C4EA24450B8A2CA4] PRIMARY KEY CLUSTERED  ([ETL__ID])
GO
