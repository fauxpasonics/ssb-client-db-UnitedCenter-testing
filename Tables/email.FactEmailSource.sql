CREATE TABLE [email].[FactEmailSource]
(
[FactEmailSourceId] [int] NOT NULL IDENTITY(-2, 1),
[DimEmailId] [int] NULL,
[SourceSystemId] [int] NULL,
[EffectiveBeginDate] [datetime] NULL,
[EffectiveEndDate] [datetime] NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__FactEmail__Creat__3513BDEB] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__FactEmail__Creat__3607E224] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__FactEmail__Updat__36FC065D] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__FactEmail__Updat__37F02A96] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[FactEmailSource] ADD CONSTRAINT [PK__FactEmai__11CE7944F1C929C2] PRIMARY KEY CLUSTERED  ([FactEmailSourceId])
GO
CREATE NONCLUSTERED INDEX [idx_FactEmailSource_DimEmailId] ON [email].[FactEmailSource] ([DimEmailId])
GO
ALTER TABLE [email].[FactEmailSource] ADD CONSTRAINT [FK__FactEmail__DimEm__39D87308] FOREIGN KEY ([DimEmailId]) REFERENCES [email].[DimEmail] ([DimEmailID])
GO
ALTER TABLE [email].[FactEmailSource] ADD CONSTRAINT [FK__FactEmail__Sourc__3ACC9741] FOREIGN KEY ([SourceSystemId]) REFERENCES [mdm].[SourceSystems] ([SourceSystemID])
GO
