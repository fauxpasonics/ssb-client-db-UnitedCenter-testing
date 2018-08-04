CREATE TABLE [stg].[NCR_EventCategory]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[id] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[eventid] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[locationid] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[cashcount] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[creditcount] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[clerkcount] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[status] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[adjusted] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[managercountbased] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[unittype] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxlevel01] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxlevel02] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxlevel03] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxlevel04] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxlevel05] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxlevel06] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxlevel07] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxlevel08] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_EventCategory] ADD CONSTRAINT [PK__NCR_Even__C4EA2445D3373B6C] PRIMARY KEY CLUSTERED  ([ETL__ID])
GO
