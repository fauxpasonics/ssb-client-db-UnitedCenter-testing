CREATE TABLE [ods].[RetailPro_Adj_Reason_v]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ADJ_REASON_ID] [bigint] NULL,
[SBS_NO] [int] NULL,
[ADJ_REASON_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACTIVE] [bit] NULL
)
GO
ALTER TABLE [ods].[RetailPro_Adj_Reason_v] ADD CONSTRAINT [PK_ods__RetailPro_Adj_Reason_v] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__RetailPro_Adj_Reason_v] ON [ods].[RetailPro_Adj_Reason_v]
GO
CREATE NONCLUSTERED INDEX [IX_ETL__UpdatedDate] ON [ods].[RetailPro_Adj_Reason_v] ([ETL__UpdatedDate] DESC)
GO
