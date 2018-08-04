CREATE TABLE [stg].[NCR_CreditCardType]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LowerLimit] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UpperLimit] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardLength] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DisabledAtTerminal] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_CreditCardType] ADD CONSTRAINT [PK_stg__CreditCardType] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_stg__CreditCardType] ON [stg].[NCR_CreditCardType]
GO
