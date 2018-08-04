CREATE TABLE [stg].[RetailPro_UDF_Val_v]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[UDF_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UDF_VAL_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UDF_VALUE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UDF_VAL_EXT] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACTIVE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[RetailPro_UDF_Val_v] ADD CONSTRAINT [PK__RetailPr__C4EA2445E6915292] PRIMARY KEY CLUSTERED  ([ETL__ID])
GO
