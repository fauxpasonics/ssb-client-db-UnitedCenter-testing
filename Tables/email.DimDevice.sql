CREATE TABLE [email].[DimDevice]
(
[DimDeviceId] [int] NOT NULL IDENTITY(-2, 1),
[Device] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimDevice__Creat__67D447E2] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__DimDevice__Creat__68C86C1B] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimDevice__Updat__69BC9054] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__DimDevice__Updat__6AB0B48D] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[DimDevice] ADD CONSTRAINT [PK__DimDevic__EE18DE2138E64E6B] PRIMARY KEY CLUSTERED  ([DimDeviceId])
GO
