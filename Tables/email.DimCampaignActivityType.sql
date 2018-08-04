CREATE TABLE [email].[DimCampaignActivityType]
(
[DimCampaignActivityTypeId] [int] NOT NULL IDENTITY(-2, 1),
[ActivityType] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimCampai__Creat__56A9BBE0] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__DimCampai__Creat__579DE019] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimCampai__Updat__58920452] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__DimCampai__Updat__5986288B] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[DimCampaignActivityType] ADD CONSTRAINT [PK__DimCampa__9DB9554ED2610E01] PRIMARY KEY CLUSTERED  ([DimCampaignActivityTypeId])
GO
