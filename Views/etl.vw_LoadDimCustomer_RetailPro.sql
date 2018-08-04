SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

--USE UnitedCenter 
--GO
 
--/****** Object:  View [ods].[vw_SFDC_PCAcct_LoadDimCustomer]    Script Date: 12/16/2016 11:08:30 AM ******/
--SET ANSI_NULLS ON
--GO
 
--SET QUOTED_IDENTIFIER ON
--GO
 

 
 
/*****Hash Rules for Reference******
WHEN 'int' THEN 'ISNULL(RTRIM(CONVERT(varchar(10),' + COLUMN_NAME + ')),''DBNULL_INT'')'
WHEN 'bigint' THEN 'ISNULL(RTRIM(CONVERT(varchar(10),' + COLUMN_NAME + ')),''DBNULL_BIGINT'')'
WHEN 'datetime' THEN 'ISNULL(RTRIM(CONVERT(varchar(25),' + COLUMN_NAME + ')),''DBNULL_DATETIME'')' 
WHEN 'datetime2' THEN 'ISNULL(RTRIM(CONVERT(varchar(25),' + COLUMN_NAME + ')),''DBNULL_DATETIME'')'
WHEN 'date' THEN 'ISNULL(RTRIM(CONVERT(varchar(10),' + COLUMN_NAME + ',112)),''DBNULL_DATE'')'
WHEN 'bit' THEN 'ISNULL(RTRIM(CONVERT(varchar(10),' + COLUMN_NAME + ')),''DBNULL_BIT'')' 
WHEN 'decimal' THEN 'ISNULL(RTRIM(CONVERT(varchar(25),'+ COLUMN_NAME + ')),''DBNULL_NUMBER'')'
WHEN 'numeric' THEN 'ISNULL(RTRIM(CONVERT(varchar(25),'+ COLUMN_NAME + ')),''DBNULL_NUMBER'')'
ELSE 'ISNULL(RTRIM(' + COLUMN_NAME + '),''DBNULL_TEXT'')'
*****/

CREATE VIEW [etl].[vw_LoadDimCustomer_RetailPro] AS ( 
 
SELECT 'placeholder' placeHolder

/*=============================================================================================
									  CTE DECLARATION
=============================================================================================


WITH 


--==================================
--Address								 
--==================================

CTE_Address AS ( SELECT CUST_SID
					 	,ADDR_NO
					 	,NULLIF(CONCAT( CASE WHEN ADDRESS1 LIKE '%[0-9]%' AND ADDRESS1 NOT IN ('0','00') THEN ADDRESS1 ELSE NULL END
					 					,' '
					 					,CASE WHEN (ADDRESS2 LIKE '%[0-9]%' OR ADDRESS2 LIKE '%apt%' OR ADDRESS2 LIKE '%unit%') AND ADDRESS2 NOT IN ('0','00') THEN ADDRESS2 ELSE NULL END
					 					)
					 			,'') Street
					 	,CASE WHEN CHARINDEX(',',ADDRESS3) > 0 THEN LEFT(ADDRESS3,CHARINDEX(',',ADDRESS3)-1) ELSE NULL END AS City
					 	,CASE WHEN CHARINDEX(',',ADDRESS3) > 0 THEN RIGHT(ADDRESS3,LEN(ADDRESS3) - CHARINDEX(',',ADDRESS3)) ELSE NULL END AS State
					 	,ZIP
					FROM [dbo].[tUC_RetProCust_Address_v]
					)


--==================================
--Phone								 
--==================================

,CTE_Phone AS (SELECT y.CUST_SID
			   	     ,y.Phone
			   	     ,RANK() OVER(PARTITION BY y.CUST_SID ORDER BY y.ADDR_NO, y.PHONE_NO) AS rnk
			   FROM (
			   		SELECT CUST_SID
			   				,phone
			   				,ADDR_NO
			   				,PHONE_NO
			   				,RANK() OVER(PARTITION BY unpvt.CUST_SID, unpvt.Phone ORDER BY ADDR_NO, PHONE_NO) NumberRank
			   		FROM (SELECT CUST_SID
			   					, ADDR_NO
			   					, CASE WHEN Phone1 LIKE '%[a-z]%' THEN NULL ELSE Phone1 END [1] --filter address values coming through in phone
			   					, CASE WHEN Phone2 LIKE '%[a-z]%' THEN NULL ELSE Phone2 END [2] --filter address values coming through in phone
			   				FROM [dbo].[tUC_RetProCust_Address_v]
			   				)x

			   		UNPIVOT (Phone FOR PHONE_NO IN  ([1], [2]) )AS unpvt
			   		
					)y
			   WHERE y.NumberRank = 1
			   )

/*=============================================================================================
										OUTPUT
=============================================================================================*/

    SELECT *
    /*Name*/
    , HASHBYTES('sha2_256',
                            ISNULL(RTRIM(Prefix),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(FirstName),'DBNULL_TEXT')
                            + ISNULL(RTRIM(MiddleName),'DBNULL_TEXT')  
                            + ISNULL(RTRIM(LastName),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(Suffix),'DBNULL_TEXT')
                            + ISNULL(RTRIM(Fullname),'DBNULL_TEXT')
                            + ISNULL(RTRIM(CompanyName),'DBNULL_TEXT')) AS [NameDirtyHash]
    , 'Dirty' AS [NameIsCleanStatus]
    , NULL AS [NameMasterId]
 
    /*Address*/
    , HASHBYTES('sha2_256', ISNULL(RTRIM(AddressPrimaryStreet),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(AddressPrimarySuite),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressPrimaryCity),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressPrimaryState),'DBNULL_TEXT')  
                            + ISNULL(RTRIM(AddressPrimaryZip),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(AddressPrimaryCounty),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressPrimaryCountry),'DBNULL_TEXT')) AS [AddressPrimaryDirtyHash]
    , 'Dirty' AS [AddressPrimaryIsCleanStatus]
    , NULL AS [AddressPrimaryMasterId]
    , HASHBYTES('sha2_256', ISNULL(RTRIM(AddressOneStreet),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(AddressOneSuite),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressOneCity),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressOneState),'DBNULL_TEXT')  
                            + ISNULL(RTRIM(AddressOneZip),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(AddressOneCounty),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressOneCountry),'DBNULL_TEXT')) AS [AddressOneDirtyHash]
    , 'Dirty' AS [AddressOneIsCleanStatus]
    , NULL AS [AddressOneMasterId]
    , HASHBYTES('sha2_256', ISNULL(RTRIM(AddressTwoStreet),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(AddressTwoSuite),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressTwoCity),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressTwoState),'DBNULL_TEXT')  
                            + ISNULL(RTRIM(AddressTwoZip),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressTwoCounty),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(AddressTwoCountry),'DBNULL_TEXT')) AS [AddressTwoDirtyHash]
    , 'Dirty' AS [AddressTwoIsCleanStatus]
    , NULL AS [AddressTwoMasterId]
    , HASHBYTES('sha2_256', ISNULL(RTRIM(AddressThreeStreet),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(AddressThreeSuite),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressThreeCity),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressThreeState),'DBNULL_TEXT')  
                            + ISNULL(RTRIM(AddressThreeZip),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(AddressThreeCounty),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressThreeCountry),'DBNULL_TEXT')) AS [AddressThreeDirtyHash]
    , 'Dirty' AS [AddressThreeIsCleanStatus]
    , NULL AS [AddressThreeMasterId]
    , HASHBYTES('sha2_256', ISNULL(RTRIM(AddressFourStreet),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(AddressFourSuite),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressFourCity),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressFourState),'DBNULL_TEXT')  
                            + ISNULL(RTRIM(AddressFourZip),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressFourCounty),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(AddressFourCountry),'DBNULL_TEXT')) AS [AddressFourDirtyHash]
    , 'Dirty' AS [AddressFourIsCleanStatus]
    , NULL AS [AddressFourMasterId]
 
    /*Contact*/
    , HASHBYTES('sha2_256', ISNULL(RTRIM(Prefix),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(FirstName),'DBNULL_TEXT')
                            + ISNULL(RTRIM(MiddleName),'DBNULL_TEXT')  
                            + ISNULL(RTRIM(LastName),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(Suffix),'DBNULL_TEXT')+ ISNULL(RTRIM(AddressPrimaryStreet),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressPrimarySuite),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressPrimaryCity),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressPrimaryState),'DBNULL_TEXT')  
                            + ISNULL(RTRIM(AddressPrimaryZip),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(AddressPrimaryCounty),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AddressPrimaryCountry),'DBNULL_TEXT')) AS [ContactDirtyHash]
     
 
    /*Phone*/
    , HASHBYTES('sha2_256', ISNULL(RTRIM(PhonePrimary),'DBNULL_TEXT')) AS [PhonePrimaryDirtyHash]
    , 'Dirty' AS [PhonePrimaryIsCleanStatus]
    , NULL AS [PhonePrimaryMasterId]
    , HASHBYTES('sha2_256', ISNULL(RTRIM(PhoneHome),'DBNULL_TEXT')) AS [PhoneHomeDirtyHash]
    , 'Dirty' AS [PhoneHomeIsCleanStatus]
    , NULL AS [PhoneHomeMasterId]
    , HASHBYTES('sha2_256', ISNULL(RTRIM(PhoneCell),'DBNULL_TEXT')) AS [PhoneCellDirtyHash]
    , 'Dirty' AS [PhoneCellIsCleanStatus]
    , NULL AS [PhoneCellMasterId]
    , HASHBYTES('sha2_256', ISNULL(RTRIM(PhoneBusiness),'DBNULL_TEXT')) AS [PhoneBusinessDirtyHash]
    , 'Dirty' AS [PhoneBusinessIsCleanStatus]
    , NULL AS [PhoneBusinessMasterId]
    , HASHBYTES('sha2_256', ISNULL(RTRIM(PhoneFax),'DBNULL_TEXT')) AS [PhoneFaxDirtyHash]
    , 'Dirty' AS [PhoneFaxIsCleanStatus]
    , NULL AS [PhoneFaxMasterId]
    , HASHBYTES('sha2_256', ISNULL(RTRIM(PhoneOther),'DBNULL_TEXT')) AS [PhoneOtherDirtyHash]
    , 'Dirty' AS [PhoneOtherIsCleanStatus]
    , NULL AS [PhoneOtherMasterId]
 
    /*Email*/
    , HASHBYTES('sha2_256', ISNULL(RTRIM(EmailPrimary),'DBNULL_TEXT')) AS [EmailPrimaryDirtyHash]
    , 'Dirty' AS [EmailPrimaryIsCleanStatus]
    , NULL AS [EmailPrimaryMasterId]
    , HASHBYTES('sha2_256', ISNULL(RTRIM(EmailOne),'DBNULL_TEXT')) AS [EmailOneDirtyHash]
    , 'Dirty' AS [EmailOneIsCleanStatus]
    , NULL AS [EmailOneMasterId]
    , HASHBYTES('sha2_256', ISNULL(RTRIM(EmailTwo),'DBNULL_TEXT')) AS [EmailTwoDirtyHash]
    , 'Dirty' AS [EmailTwoIsCleanStatus]
    , NULL AS [EmailTwoMasterId]
     
    /*External Attributes*/
    , HASHBYTES('sha2_256', ISNULL(RTRIM(customerType),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(CustomerStatus),'DBNULL_TEXT')
                            + ISNULL(RTRIM(AccountType),'DBNULL_TEXT')  
                            + ISNULL(RTRIM(AccountRep),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(CompanyName),'DBNULL_TEXT')
                            + ISNULL(RTRIM(SalutationName),'DBNULL_TEXT')
                            + ISNULL(RTRIM(DonorMailName),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(DonorFormalName),'DBNULL_TEXT')
                            + ISNULL(RTRIM(Birthday),'DBNULL_TEXT')  
                            + ISNULL(RTRIM(Gender),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(AccountId),'DBNULL_TEXT')
                            + ISNULL(RTRIM(MergedRecordFlag),'DBNULL_TEXT')
                            + ISNULL(RTRIM(MergedIntoSSID),'DBNULL_TEXT')
                            + ISNULL(RTRIM(IsBusiness),'DBNULL_TEXT')) AS [contactattrDirtyHash]
 
    , HASHBYTES('sha2_256', ISNULL(RTRIM(ExtAttribute1),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(ExtAttribute2),'DBNULL_TEXT')
                            + ISNULL(RTRIM(ExtAttribute3),'DBNULL_TEXT')  
                            + ISNULL(RTRIM(ExtAttribute4),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(ExtAttribute5),'DBNULL_TEXT')
                            + ISNULL(RTRIM(ExtAttribute6),'DBNULL_TEXT')
                            + ISNULL(RTRIM(ExtAttribute7),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(ExtAttribute8),'DBNULL_TEXT')
                            + ISNULL(RTRIM(ExtAttribute9),'DBNULL_TEXT')  
                            + ISNULL(RTRIM(ExtAttribute10),'DBNULL_TEXT') 
                            ) AS [extattr1_10DirtyHash]
 
    , HASHBYTES('sha2_256', ISNULL(RTRIM(ExtAttribute11),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(ExtAttribute12),'DBNULL_TEXT')
                            + ISNULL(RTRIM(ExtAttribute13),'DBNULL_TEXT')  
                            + ISNULL(RTRIM(ExtAttribute14),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(ExtAttribute15),'DBNULL_TEXT')
                            + ISNULL(RTRIM(ExtAttribute16),'DBNULL_TEXT')
                            + ISNULL(RTRIM(ExtAttribute17),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(ExtAttribute18),'DBNULL_TEXT')
                            + ISNULL(RTRIM(ExtAttribute19),'DBNULL_TEXT')  
                            + ISNULL(RTRIM(ExtAttribute20),'DBNULL_TEXT') 
                            ) AS [extattr11_20DirtyHash]
 
                             
    , HASHBYTES('sha2_256', ISNULL(RTRIM(ExtAttribute21),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(ExtAttribute22),'DBNULL_TEXT')
                            + ISNULL(RTRIM(ExtAttribute23),'DBNULL_TEXT')  
                            + ISNULL(RTRIM(ExtAttribute24),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(ExtAttribute25),'DBNULL_TEXT')
                            + ISNULL(RTRIM(ExtAttribute26),'DBNULL_TEXT')
                            + ISNULL(RTRIM(ExtAttribute27),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(ExtAttribute28),'DBNULL_TEXT')
                            + ISNULL(RTRIM(ExtAttribute29),'DBNULL_TEXT')  
                            + ISNULL(RTRIM(ExtAttribute30),'DBNULL_TEXT') 
                            ) AS [extattr21_30DirtyHash]
 
                             
    , HASHBYTES('sha2_256', ISNULL(RTRIM(ExtAttribute31),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(ExtAttribute32),'DBNULL_TEXT')
                            + ISNULL(RTRIM(ExtAttribute33),'DBNULL_TEXT')  
                            + ISNULL(RTRIM(ExtAttribute34),'DBNULL_TEXT') 
                            + ISNULL(RTRIM(ExtAttribute35),'DBNULL_TEXT')
                            ) AS [extattr31_35DirtyHash]
    FROM (
--base set
        SELECT
            'UnitedCenter' AS [SourceDB] --Client Source Database such as Raiders or Raiders_Reporting
            , 'RetailPro' AS [SourceSystem] --Put source name such as TM or CRM_Contact
            , NULL AS [SourceSystemPriority] --Depends on if client uses sourcesystem/sourcesystempriority tables for MDM Rules
 
            /*Standard Attributes*/
            , CAST(Cust.CUST_SID AS NVARCHAR(200)) [SSID] -- Required, must be cast as NVARCHAR(200)
            , CAST(NULL AS NVARCHAR (50)) AS [CustomerType]
            , CAST(NULL AS NVARCHAR (50)) AS [CustomerStatus]
            , CAST(NULL AS NVARCHAR (50)) AS [AccountType] 
            , CAST(NULL AS NVARCHAR (50)) AS [AccountRep] 
            , CAST(CustCompany.COMPANY_NAME AS NVARCHAR (50)) AS [CompanyName] 
            , NULL AS [SalutationName]
            , NULL AS [DonorMailName]
            , NULL AS [DonorFormalName]
            , CONVERT(VARCHAR(30),NULL, 102) AS [Birthday] -- field is sensitive see writup in sharepoint for an example of how complicated it can get
            , NULL AS [Gender] 
            , 0 [MergedRecordFlag]
            , NULL [MergedIntoSSID]
 
            /**ENTITIES**/
            /*Name*/
            , NULL AS [Prefix]
            , cust.FIRST_NAME AS [FirstName]
            , NULL AS [MiddleName]
            , cust.LAST_NAME AS [LastName]
            , NULL AS [Suffix]
            , NULL AS [Fullname]
            --, c.name_title as [Title]
 
            /*AddressPrimary*/
            , AddressPrimary.Street		AS [AddressPrimaryStreet]
            , NULL						AS [AddressPrimarySuite] -- ALWAYS LEAVE THIS NULL!!!!!!!!!!!!!!!! 
            , AddressPrimary.City		AS [AddressPrimaryCity] 
            , AddressPrimary.State		AS [AddressPrimaryState] 
            , AddressPrimary.Zip		AS [AddressPrimaryZip] 
            , NULL						AS [AddressPrimaryCounty]
            , NULL						AS [AddressPrimaryCountry] 
             
            , AddressOne.Street		AS [AddressOneStreet]
            , NULL					AS [AddressOneSuite] -- ALWAYS LEAVE THIS NULL!!!!!!!!!!!!!!!! 
            , AddressOne.City		AS [AddressOneCity] 
            , AddressOne.State		AS [AddressOneState] 
            , AddressOne.Zip		AS [AddressOneZip] 
            , NULL					AS [AddressOneCounty]
            , NULL					AS [AddressOneCountry] 

            , NULL AS [AddressTwoStreet]
            , NULL AS [AddressTwoSuite] -- ALWAYS LEAVE THIS NULL!!!!!!!!!!!!!!!!
            , NULL AS [AddressTwoCity] 
            , NULL AS [AddressTwoState] 
            , NULL AS [AddressTwoZip] 
            , NULL AS [AddressTwoCounty] 
            , NULL AS [AddressTwoCountry] 
            , NULL AS [AddressThreeStreet]
            , NULL AS [AddressThreeSuite] -- ALWAYS LEAVE THIS NULL!!!!!!!!!!!!!!!!
            , NULL AS [AddressThreeCity] 
            , NULL AS [AddressThreeState] 
            , NULL AS [AddressThreeZip] 
            , NULL AS [AddressThreeCounty] 
            , NULL AS [AddressThreeCountry] 
            , NULL AS [AddressFourStreet]
            , NULL AS [AddressFourSuite] -- ALWAYS LEAVE THIS NULL!!!!!!!!!!!!!!!!
            , NULL AS [AddressFourCity] 
            , NULL AS [AddressFourState] 
            , NULL AS [AddressFourZip] 
            , NULL AS [AddressFourCounty]
            , NULL AS [AddressFourCountry] 
 
            /*Phone*/
            , LEFT(PhonePrimary.Phone,25) AS [PhonePrimary] -- For Coalescing values make sute they are wrapped in a NULLIF for values that = '' eg COALESCE(NULLIF(z.mobile,''),z.phone) AS [PhonePrimary]
            , LEFT(NULL,25) AS [PhoneHome]
            , LEFT(NULL,25) AS [PhoneCell]
            , LEFT(NULL,25) AS [PhoneBusiness]
            , LEFT(NULL,25) AS [PhoneFax]
            , LEFT(PhoneOther.Phone,25) AS [PhoneOther]
 
            /*Email*/
            , CAST(Cust.EMAIL_ADDR AS NVARCHAR(256)) AS [EmailPrimary]
            , CAST(NULL AS NVARCHAR(256)) AS [EmailOne]
            , CAST(NULL AS NVARCHAR(256)) AS [EmailTwo]
 
            /*Extended Attributes*/
            , NULL AS[ExtAttribute1] --nvarchar(100)
            , NULL AS[ExtAttribute2] --nvarchar(100)
            , NULL AS[ExtAttribute3] --nvarchar(100)
            , NULL AS[ExtAttribute4] --nvarchar(100)
            , NULL AS[ExtAttribute5] --nvarchar(100)
            , NULL AS[ExtAttribute6] --nvarchar(100)
            , NULL AS[ExtAttribute7] --nvarchar(100)
            , NULL AS[ExtAttribute8] --nvarchar(100)
            , NULL AS[ExtAttribute9] --nvarchar(100)
            , NULL AS[ExtAttribute10] --nvarchar(1000)
 
            , NULL AS [ExtAttribute11] --decimal(18,6)
            , NULL AS [ExtAttribute12] --decimal(18,6)
            , NULL AS [ExtAttribute13] --decimal(18,6)
            , NULL AS [ExtAttribute14] --decimal(18,6)
            , NULL AS [ExtAttribute15] --decimal(18,6)
            , NULL AS [ExtAttribute16] --decimal(18,6)
            , NULL AS [ExtAttribute17] --decimal(18,6)
            , NULL AS [ExtAttribute18] --decimal(18,6)
            , NULL AS [ExtAttribute19] --decimal(18,6)
            , NULL AS [ExtAttribute20] --decimal(18,6) 
 
            , NULL AS [ExtAttribute21] --datetime
            , NULL AS [ExtAttribute22] --datetime
            , NULL AS [ExtAttribute23] --datetime
            , NULL AS [ExtAttribute24] --datetime
            , NULL AS [ExtAttribute25] --datetime
            , NULL AS [ExtAttribute26] --datetime
            , NULL AS [ExtAttribute27] --datetime
            , NULL AS [ExtAttribute28] --datetime
            , NULL AS [ExtAttribute29] --datetime
            , NULL AS [ExtAttribute30] --datetime 
            , NULL AS [ExtAttribute31] --nvarchar(max)
            , NULL as [ExtAttribute32] --nvarchar(max)
            , NULL as [ExtAttribute33] --nvarchar(max)
            , NULL as [ExtAttribute34] --nvarchar(max)
            , NULL as [ExtAttribute35] --nvarchar(max)
 
            /*Source Created and Updated*/
            , NULL [SSCreatedBy] --createdby
            , NULL [SSUpdatedBy] --lastmodifiedbyid
            , Cust.CREATED_DATE [SSCreatedDate] --createddate
            , NULL [SSUpdatedDate] --lastmodifiedbyid
            , getdate () as createddate --required fields, do not comment out
            , getdate () as updateddate --required fields, do not comment out
            , NULL [AccountId]
            , 0 AS IsBusiness --can be updated with business logic if there is some to determine business
            , 0 AS IsDeleted --Update if there is logic for records that are deleted from the source, otherwise leave as 0
            , NULL AS [Customer_Matchkey] 
        FROM [dbo].[tUC_RetProCustomer_v] Cust (NOLOCK)
			LEFT JOIN [dbo].[tUC_RetProCust_Company_v] CustCompany ON CustCompany.COMPANY_ID = Cust.COMPANY_ID
			LEFT JOIN CTE_Address AddressPrimary ON AddressPrimary.CUST_SID = cust.CUST_SID
													AND AddressPrimary.ADDR_NO = 1
			LEFT JOIN CTE_Address AddressOne ON AddressOne.CUST_SID = cust.CUST_SID
												AND AddressOne.ADDR_NO = 2
			LEFT JOIN CTE_Phone PhonePrimary ON PhonePrimary.CUST_SID = cust.CUST_SID
												AND PhonePrimary.rnk = 1
			LEFT JOIN CTE_Phone PhoneOther ON PhoneOther.CUST_SID = cust.CUST_SID
											  AND PhoneOther.rnk = 2
		)x


*/


)
 
 
 
 
 
 
 
 
 
 
 
  
 
 
GO
