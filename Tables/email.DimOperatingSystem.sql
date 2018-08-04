CREATE TABLE [email].[DimOperatingSystem]
(
[DimOperatingSystemId] [int] NOT NULL IDENTITY(-2, 1),
[OperatingSystem] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimOperat__Creat__7345FA8E] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__DimOperat__Creat__743A1EC7] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimOperat__Updat__752E4300] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__DimOperat__Updat__76226739] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[DimOperatingSystem] ADD CONSTRAINT [PK__DimOpera__04A7A4C65A6DBAC9] PRIMARY KEY CLUSTERED  ([DimOperatingSystemId])
GO
