CREATE TABLE [stg].[NCR_EventLocation]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[id] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[eventid] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[locationid] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[cashcount] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[creditcount] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[clerkcount] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[adjusted] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[managercountbased] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[unittype] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxlevel01] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxlevel02] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxlevel03] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxlevel04] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxlevel05] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxlevel06] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxlevel07] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxlevel08] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[NCR_EventLocation] ADD CONSTRAINT [PK__NCR_Even__C4EA24450F94696D] PRIMARY KEY CLUSTERED  ([ETL__ID])
GO
