CREATE TABLE [email].[DimBrowser]
(
[DimBrowserId] [int] NOT NULL IDENTITY(-2, 1),
[Browser] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimBrowse__Creat__50F0E28A] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__DimBrowse__Creat__51E506C3] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimBrowse__Updat__52D92AFC] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__DimBrowse__Updat__53CD4F35] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[DimBrowser] ADD CONSTRAINT [PK__DimBrows__7481998802871866] PRIMARY KEY CLUSTERED  ([DimBrowserId])
GO
