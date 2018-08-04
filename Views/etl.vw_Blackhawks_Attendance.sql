SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE VIEW [etl].[vw_Blackhawks_Attendance]
AS

SELECT	dsh.SeasonName SeasonHeaderName
	   ,deh.EventCode EventHeaderCode
	   ,ds.SeasonName SeasonName
	   ,de.EventCode
	   ,de.EventName
	   ,de.EventDesc
	   ,de.EventDate
	   ,de.EventTime
	   ,de.EventDateTime
	   ,fa.*
FROM [dbo].[FactAttendance_V2] fa 
	JOIN dbo.DimEvent_V2 de ON de.DimEventId = fa.dimeventid
	JOIN dbo.DimSeason_V2 ds ON ds.dimseasonid = fa.dimseasonid
	JOIN dbo.DimEventHeader_V2 deh ON deh.DimEventHeaderId = de.DimEventHeaderId
	JOIN dbo.DimSeasonHeader_V2 dsh ON dsh.DimSeasonHeaderId = deh.DimSeasonHeaderId
WHERE dsh.DimSeasonHeaderId = 2
                                    


GO
