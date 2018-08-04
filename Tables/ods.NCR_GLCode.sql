CREATE TABLE [ods].[NCR_GLCode]
(
[ETL__ID] [int] NOT NULL IDENTITY(1, 1),
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__UpdatedDate] [datetime] NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[ID] [bigint] NULL,
[Code] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Subcontractor] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NoAdjustments] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NoCoupons] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrganizationID] [bigint] NULL
)
GO
ALTER TABLE [ods].[NCR_GLCode] ADD CONSTRAINT [PK_ods__NCR_GLCode] PRIMARY KEY NONCLUSTERED  ([ETL__ID])
GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_ods__NCR_GLCode] ON [ods].[NCR_GLCode]
GO
CREATE NONCLUSTERED INDEX [IX_Key] ON [ods].[NCR_GLCode] ([ID]) INCLUDE ([ETL__DeltaHashKey])
GO
