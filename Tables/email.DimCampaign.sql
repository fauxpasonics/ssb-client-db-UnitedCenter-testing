CREATE TABLE [email].[DimCampaign]
(
[DimCampaignId] [int] NOT NULL IDENTITY(-2, 1),
[DimCampaignTypeId] [int] NULL,
[DimChannelId] [int] NULL,
[SourceSystemID] [int] NULL,
[Src_CampaignID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Subject] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FromEmail] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FromName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StartDate] [datetime] NULL,
[EndDate] [datetime] NULL,
[GoalDescription] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimCampai__Creat__7EB7AD3A] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__DimCampai__Creat__7FABD173] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimCampai__Updat__009FF5AC] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__DimCampai__Updat__019419E5] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[DimCampaign] ADD CONSTRAINT [PK__DimCampa__2C52FBADC0D6DC8F] PRIMARY KEY CLUSTERED  ([DimCampaignId])
GO
ALTER TABLE [email].[DimCampaign] ADD CONSTRAINT [FK__DimCampai__DimCa__037C6257] FOREIGN KEY ([DimCampaignTypeId]) REFERENCES [email].[DimCampaignType] ([DimCampaignTypeId])
GO
ALTER TABLE [email].[DimCampaign] ADD CONSTRAINT [FK__DimCampai__DimCh__04708690] FOREIGN KEY ([DimChannelId]) REFERENCES [email].[DimChannel] ([DimChannelId])
GO
ALTER TABLE [email].[DimCampaign] ADD CONSTRAINT [FK__DimCampai__Sourc__0564AAC9] FOREIGN KEY ([SourceSystemID]) REFERENCES [mdm].[SourceSystems] ([SourceSystemID])
GO
