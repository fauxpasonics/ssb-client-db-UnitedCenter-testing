CREATE TABLE [ods].[NCR_CashroomMedia]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [bigint] NULL,
[CashRoomID] [bigint] NULL,
[CashMediaID] [bigint] NULL,
[LooseQuantity] [decimal] (18, 6) NULL,
[RollQuantity] [decimal] (18, 6) NULL
)
GO
ALTER TABLE [ods].[NCR_CashroomMedia] ADD CONSTRAINT [PK_ods__CashroomMedia] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__CashroomMedia] ON [ods].[NCR_CashroomMedia]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_CashroomMedia] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO
