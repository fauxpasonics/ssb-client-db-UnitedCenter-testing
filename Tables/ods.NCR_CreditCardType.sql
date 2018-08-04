CREATE TABLE [ods].[NCR_CreditCardType]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [bigint] NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LowerLimit] [int] NULL,
[UpperLimit] [int] NULL,
[CardLength] [int] NULL,
[DisabledAtTerminal] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [ods].[NCR_CreditCardType] ADD CONSTRAINT [PK_ods__CreditCardType] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__CreditCardType] ON [ods].[NCR_CreditCardType]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_CreditCardType] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO
