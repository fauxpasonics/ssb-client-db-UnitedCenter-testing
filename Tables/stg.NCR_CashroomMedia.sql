CREATE TABLE [stg].[NCR_CashroomMedia]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CashRoomID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CashMediaID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LooseQuantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RollQuantity] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_CashroomMedia] ADD CONSTRAINT [PK_stg__CashroomMedia] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__CashroomMedia] ON [stg].[NCR_CashroomMedia]
GO
