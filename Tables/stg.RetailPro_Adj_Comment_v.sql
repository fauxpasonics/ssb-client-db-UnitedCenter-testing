CREATE TABLE [stg].[RetailPro_Adj_Comment_v]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ADJ_SID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COMMENT_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COMMENTS] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[RetailPro_Adj_Comment_v] ADD CONSTRAINT [PK__RetailPr__C4EA2445B1EB50E8] PRIMARY KEY CLUSTERED  ([ETL__ID])
GO
