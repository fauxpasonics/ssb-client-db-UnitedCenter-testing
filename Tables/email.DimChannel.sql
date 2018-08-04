CREATE TABLE [email].[DimChannel]
(
[DimChannelId] [int] NOT NULL IDENTITY(-2, 1),
[Channel] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimChanne__Creat__621B6E8C] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__DimChanne__Creat__630F92C5] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimChanne__Updat__6403B6FE] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__DimChanne__Updat__64F7DB37] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[DimChannel] ADD CONSTRAINT [PK__DimChann__37F5D04D5B9FC4B6] PRIMARY KEY CLUSTERED  ([DimChannelId])
GO
