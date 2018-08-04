SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE VIEW [segmentation].[vw__Primary_Customer]
AS
    ( 
	SELECT    ssbid.SSB_CRMSYSTEM_CONTACT_ID
              , dimcustomer.Prefix
              , dimcustomer.FirstName AS First_Name
              , dimcustomer.MiddleName AS Middle_Name
              , dimcustomer.LastName AS Last_Name
			  , CONCAT(dimcustomer.firstname, ' ', dimcustomer.middlename, ' ', dimcustomer.lastname) AS Full_Name
              , dimcustomer.Suffix
              , dimcustomer.CompanyName AS Company_Name
              , dimcustomer.NameIsCleanStatus AS Name_Is_Clean_Status
              , dimcustomer.CustomerType AS Customer_Type
              , dimcustomer.CustomerStatus AS Customer_Status
              , dimcustomer.AccountType AS Account_Type
              , dimcustomer.AddressPrimaryStreet AS Primary_Address_Street
              , dimcustomer.AddressPrimaryCity AS Primary_Address_City
              , dimcustomer.AddressPrimaryState AS Primary_Address_State
              , dimcustomer.AddressPrimarySuite AS Primary_Address_Suite
              , dimcustomer.AddressPrimaryZip AS Primary_Address_Zip
              , LEFT(dimcustomer.AddressPrimaryZip, 3) AS Primary_Address_Zip3
              , dimcustomer.AddressPrimaryCounty AS Primary_Address_County
              , dimcustomer.AddressPrimaryCountry AS Primary_Address_Country
              , dimcustomer.AddressPrimaryIsCleanStatus AS Address_Primary_Is_Clean_Status
              , dimcustomer.PhonePrimary AS Phone_Primary
              , CAST(CASE WHEN dimcustomer.PhonePrimaryIsCleanStatus = 'Valid'
                          THEN SUBSTRING(dimcustomer.PhonePrimary, 2, 3)
                          ELSE NULL
                     END AS INT) AS Phone_Primary_Area_Code
              , dimcustomer.PhonePrimaryIsCleanStatus AS Phone_Primary_Is_Clean_Status
              , dimcustomer.PhoneHome AS Phone_Home
              , CAST(CASE WHEN dimcustomer.PhoneHomeIsCleanStatus = 'Valid'
                          THEN SUBSTRING(dimcustomer.PhoneHome, 2, 3)
                          ELSE NULL
                     END AS INT) PhoneHomeAreaCode
              , dimcustomer.PhoneHomeIsCleanStatus AS Phone_Home_Is_Clean_Status
              , dimcustomer.PhoneCell AS Phone_Cell
              , CAST(CASE WHEN dimcustomer.PhoneCellIsCleanStatus = 'Valid'
                          THEN SUBSTRING(dimcustomer.PhoneCell, 2, 3)
                          ELSE NULL
                     END AS INT) Phone_Cell_Area_Code
              , dimcustomer.PhoneCellIsCleanStatus AS Phone_Cell_Is_Clean_Status
              , dimcustomer.PhoneBusiness AS PhoneBusiness
              , CAST(CASE WHEN dimcustomer.PhoneBusinessIsCleanStatus = 'Valid'
                          THEN SUBSTRING(dimcustomer.PhoneBusiness, 2, 3)
                          ELSE NULL
                     END AS INT) Phone_Business_Area_Code
              , dimcustomer.PhoneBusinessIsCleanStatus AS Phone_Business_Is_Clean_Status
              , dimcustomer.PhoneFax AS Phone_Fax
              , CAST(CASE WHEN dimcustomer.PhoneFaxIsCleanStatus = 'Valid'
                          THEN SUBSTRING(dimcustomer.PhoneFax, 2, 3)
                          ELSE NULL
                     END AS INT) Phone_Fax_Area_Code
              , dimcustomer.PhoneFaxIsCleanStatus AS Phone_Fax_Is_Clean_Status
              , dimcustomer.PhoneOther AS Phone_Other
              , CAST(CASE WHEN dimcustomer.PhoneOtherIsCleanStatus = 'Valid'
                          THEN SUBSTRING(dimcustomer.PhoneOther, 2, 3)
                          ELSE NULL
                     END AS INT) Phone_Other_Area_Code
              , dimcustomer.PhoneOtherIsCleanStatus AS Phone_Other_Is_Clean_Status
              , dimcustomer.EmailPrimary AS Primary_Email
              , RIGHT(dimcustomer.EmailPrimary,
                      LEN(dimcustomer.EmailPrimary) - CHARINDEX('@', dimcustomer.EmailPrimary)) Primary_Email_Domain
              , CASE WHEN dimcustomer.EmailPrimary IS NOT NULL
                          AND dimcustomer.EmailPrimary LIKE '%@%' THEN 1
                     ELSE 0
                END Primary_Email_Exists
              , dimcustomer.EmailPrimaryIsCleanStatus AS Email_Primary_Is_Clean_Status
              , dimcustomer.EmailOne AS Email_One
              , RIGHT(dimcustomer.EmailOne, LEN(dimcustomer.EmailOne) - CHARINDEX('@', dimcustomer.EmailOne)) Email_One_Domain
              , CASE WHEN dimcustomer.EmailOne IS NOT NULL
                          AND dimcustomer.EmailOne LIKE '%@%' THEN 1
                     ELSE 0
                END Email_One_Exists
              , dimcustomer.EmailOneIsCleanStatus AS Email_One_Is_Clean_Status
              , dimcustomer.EmailTwo AS Email_Two
              , RIGHT(dimcustomer.EmailTwo, LEN(dimcustomer.EmailTwo) - CHARINDEX('@', dimcustomer.EmailTwo)) Email_Two_Domain
              , CASE WHEN dimcustomer.EmailTwo IS NOT NULL
                          AND dimcustomer.EmailTwo LIKE '%@%' THEN 1
                     ELSE 0
                END Email_Two_Exists
              , dimcustomer.EmailTwoIsCleanStatus AS Email_Two_Is_Clean_Status
              , dimcustomer.SourceSystem AS Primary_Record_Source_System
              , dimcustomer.SSID AS Primary_Record_Source_System_Id
              , dimcustomer.AccountId AS Archtics_Account_Id
              , dimcustomer.Gender
              , dimcustomer.PhonePrimaryDNC AS Phone_Primary_DNC
              , dimcustomer.PhoneHomeDNC AS Phone_Home_DNC
              , dimcustomer.PhoneCellDNC AS Phone_Cell_DNC
              , dimcustomer.PhoneBusinessDNC AS Phone_Business_DNC
              , dimcustomer.PhoneFaxDNC AS Phone_Fax_DNC
              , dimcustomer.PhoneOtherDNC AS Phone_Other_DNC
              , dimcustomer.Birthday AS Birth_Date
              , CASE WHEN dimcustomer.Birthday = '1900-01-01' THEN NULL
                     ELSE YEAR(dimcustomer.Birthday)
                END AS Birth_Year
              , CASE WHEN dimcustomer.Birthday = '1900-01-01' THEN NULL
                     ELSE MONTH(dimcustomer.Birthday)
                END AS Birth_Month
              , CASE WHEN dimcustomer.Birthday = '1900-01-01' THEN NULL
                     ELSE DAY(dimcustomer.Birthday)
                END AS Birth_Day
              , CASE WHEN dimcustomer.Birthday = '1900-01-01' THEN NULL
                     ELSE DATEDIFF(YEAR, dimcustomer.Birthday, GETDATE())
                END AS Age
              , ssbid.SSB_CRMSYSTEM_PRIMARY_FLAG AS SSB_Primary_Record_Flag
      FROM      dbo.DimCustomer dimcustomer WITH ( NOLOCK )
                JOIN dbo.dimcustomerssbid ssbid WITH ( NOLOCK ) ON ssbid.DimCustomerId = dimcustomer.DimCustomerId
                LEFT JOIN ( SELECT  SSB_CRMSYSTEM_CONTACT_ID
                                  , MAX(R_Transaction_date) LastTEXPurchaseDate
                            FROM    segmentation.vw__Ticket_Exchange_Recipient
                            GROUP BY SSB_CRMSYSTEM_CONTACT_ID
                          ) tex ON ssbid.SSB_CRMSYSTEM_CONTACT_ID = tex.SSB_CRMSYSTEM_CONTACT_ID
                --LEFT JOIN ( SELECT  SSB_CRMSYSTEM_CONTACT_ID
                --                  , MAX(Order_Date) LastTMPurchaseDate
                --            FROM    segmentation.vw__Primary_Ticketing
                --            GROUP BY SSB_CRMSYSTEM_CONTACT_ID
                --          ) tm ON ssbid.SSB_CRMSYSTEM_CONTACT_ID = tm.SSB_CRMSYSTEM_CONTACT_ID
	  WHERE ssbid.SSB_CRMSYSTEM_PRIMARY_FLAG = 1
	
	)

	





GO
