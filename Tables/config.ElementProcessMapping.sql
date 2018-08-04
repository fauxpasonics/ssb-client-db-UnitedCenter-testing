CREATE TABLE [config].[ElementProcessMapping]
(
[ElementProcessId] [int] NOT NULL IDENTITY(1, 1),
[ElementId] [int] NULL,
[ProcessId] [int] NULL,
[DateCreated] [date] NULL CONSTRAINT [DF__ElementPr__DateC__4826925F] DEFAULT (getdate()),
[DateUpdated] [date] NULL CONSTRAINT [DF__ElementPr__DateU__491AB698] DEFAULT (getdate()),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__ElementPr__Creat__4A0EDAD1] DEFAULT (suser_sname()),
[UpdatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__ElementPr__Updat__4B02FF0A] DEFAULT (suser_sname())
)
GO
