CREATE TABLE [email].[DimSegment]
(
[DimSegmentId] [int] NOT NULL IDENTITY(-2, 1),
[Src_SegmentId] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SegmentName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SegmentDescription] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimSegmen__Creat__78FED3E4] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__DimSegmen__Creat__79F2F81D] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimSegmen__Updat__7AE71C56] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__DimSegmen__Updat__7BDB408F] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[DimSegment] ADD CONSTRAINT [PK__DimSegme__91C6F6AADD9F3370] PRIMARY KEY CLUSTERED  ([DimSegmentId])
GO
