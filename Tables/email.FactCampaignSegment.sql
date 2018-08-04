CREATE TABLE [email].[FactCampaignSegment]
(
[FactCampaignSegmentId] [int] NOT NULL IDENTITY(-2, 1),
[DimCampaignId] [int] NULL,
[DimSegmentId] [int] NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__FactCampa__Creat__1E305893] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__FactCampa__Creat__1F247CCC] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__FactCampa__Updat__2018A105] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__FactCampa__Updat__210CC53E] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[FactCampaignSegment] ADD CONSTRAINT [PK__FactCamp__1324ECD5C8F279CB] PRIMARY KEY CLUSTERED  ([FactCampaignSegmentId])
GO
CREATE NONCLUSTERED INDEX [idx_FactCampaignSegment_DimCampaignId] ON [email].[FactCampaignSegment] ([DimCampaignId])
GO
CREATE NONCLUSTERED INDEX [idx_FactCampaignSegment_DimSegmentId] ON [email].[FactCampaignSegment] ([DimSegmentId])
GO
ALTER TABLE [email].[FactCampaignSegment] ADD CONSTRAINT [FK__FactCampa__DimCa__22F50DB0] FOREIGN KEY ([DimCampaignId]) REFERENCES [email].[DimCampaign] ([DimCampaignId])
GO
ALTER TABLE [email].[FactCampaignSegment] ADD CONSTRAINT [FK__FactCampa__DimSe__23E931E9] FOREIGN KEY ([DimSegmentId]) REFERENCES [email].[DimSegment] ([DimSegmentId])
GO
