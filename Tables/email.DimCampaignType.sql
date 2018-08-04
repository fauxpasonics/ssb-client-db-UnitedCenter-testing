CREATE TABLE [email].[DimCampaignType]
(
[DimCampaignTypeId] [int] NOT NULL IDENTITY(-2, 1),
[CampaignType] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimCampai__Creat__5C629536] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__DimCampai__Creat__5D56B96F] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimCampai__Updat__5E4ADDA8] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__DimCampai__Updat__5F3F01E1] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[DimCampaignType] ADD CONSTRAINT [PK__DimCampa__7EB1CFE58462A04E] PRIMARY KEY CLUSTERED  ([DimCampaignTypeId])
GO
