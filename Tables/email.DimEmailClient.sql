CREATE TABLE [email].[DimEmailClient]
(
[DimEmailClientId] [int] NOT NULL IDENTITY(-2, 1),
[EmailClient] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimEmailC__Creat__6D8D2138] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__DimEmailC__Creat__6E814571] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimEmailC__Updat__6F7569AA] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__DimEmailC__Updat__70698DE3] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[DimEmailClient] ADD CONSTRAINT [PK__DimEmail__92D90F91AC7CBBF4] PRIMARY KEY CLUSTERED  ([DimEmailClientId])
GO
