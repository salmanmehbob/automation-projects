Feature: RealEOTitleEntry Scenarios

  Background:
    ##RealEO
    Given User Setup Web Browser Session
    When User Navigates to "RealEO Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "RealEOLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "RealEOLogin" Page
    And User Click on "Login" Button on "RealEOLogin" Page

  Scenario: User Enter Title
    And User Enters "TestValue" on "TestSearch" Field on "RealEOTitleEntry" Page
    And user wait for 2000 seconds
    And User Click on "OrderSearch" Button on "RealEOTitleEntry" Page
    And User switch to iframe "FrameQuickOrderEntry" on "RealEOTitleEntry" Page
    And User Click on "Transactions" Button on "RealEORealEOTitleEntry" Page
    And User Click on "SelectTitle" Button on "RealEOTitleEntry" Page
    And User switch to Default from iframe
    And User switch tab 2
    And User Click on "RealEOTitleEntryBox" Button on "RealEOTitleEntry" Page
    And User switch tab 3
    And user wait for 2000 seconds
#    And User Click on "PropertyEdit" Button on "RealEOTitleEntry" Page
#    And User Enters "ProductSearchDate" on "PropertySearch" Field on "RealEOTitleEntry" Page
#    And User Enters "ProductEffectiveDate" on "PropertyEffective" Field on "RealEOTitleEntry" Page
#    And User Enters "VestingInfo" on "PropertyVesting" Field on "RealEOTitleEntry" Page
#    And User Enters "LegalDesc" on "PropertyLegal" Field on "RealEOTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "PropertySave" Button on "RealEOTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Deeds" Button on "RealEOTitleEntry" Page
#    And User Click on "NewDeed" Button on "RealEOTitleEntry" Page
#    And User Select "DeedDropValue" on "DeedDropDown" Field on "RealEOTitleEntry" Page
#    And User Enters "DeedRecordedDate" on "DeedRecordDate" Field on "RealEOTitleEntry" Page
#    And User Enters "QualifierValue" on "DeedQualifier" Field on "RealEOTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Enters "DeedFirstName" on "GrantorFirstName" Field on "RealEOTitleEntry" Page
#    And User Enters "DeedLastName" on "GrantorLastName" Field on "RealEOTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "NewGrantor" Button on "RealEOTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "GranteeClick" Button on "RealEOTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "DeedFirstName" on "GrantorFirstName" Field on "RealEOTitleEntry" Page
#    And User Enters "DeedLastName" on "GrantorLastName" Field on "RealEOTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "DeedSave" Button on "RealEOTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Taxes" Button on "RealEOTitleEntry" Page
#    And User Click on "AddTax" Button on "RealEOTitleEntry" Page
#    And User Enters "TaxesParcel" on "TaxParcel" Field on "RealEOTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Enters "TaxYearStart" on "TaxStart" Field on "RealEOTitleEntry" Page
#    And User Enters "TaxYearEnd" on "TaxEnd" Field on "RealEOTitleEntry" Page
#    And User Click on "TaxYearSave" Button on "RealEOTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "TaxesSave" Button on "RealEOTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Mortgages" Button on "RealEOTitleEntry" Page
#    And User Click on "AddMortgages" Button on "RealEOTitleEntry" Page
#    And User Select "MortgageTypeValue" on "MortgageDropDown" Field on "RealEOTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "MortgageDetail" on "Mortgage" Field on "RealEOTitleEntry" Page
#    And User Enters "MortgageAmount" on "MortgageAmt" Field on "RealEOTitleEntry" Page
    #Notuse
##    And User Click on "SubjectMortgage" Button on "RealEOTitleEntry" Page
#    And User Enters "MortgageRecordedDate" on "MortgageRecordDate" Field on "RealEOTitleEntry" Page
#    And User Enters "MortQualifierValue" on "MortQualifier" Field on "RealEOTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Enters "MortFirstName" on "MortgageFirstName" Field on "RealEOTitleEntry" Page
#    And User Enters "MortLastName" on "MortgageLastName" Field on "RealEOTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "MortgagesSave" Button on "RealEOTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Liens" Button on "RealEOTitleEntry" Page
#    And User Click on "AddLien" Button on "RealEOTitleEntry" Page
#    And User Select "LienTypeValue" on "LienDropDown" Field on "RealEOTitleEntry" Page
#    And User Enters "LienAmount" on "LienAmt" Field on "RealEOTitleEntry" Page
#    And User Enters "LienRecordedDate" on "LienRecordDate" Field on "RealEOTitleEntry" Page
#    And User Enters "LienQualifier1Value" on "LienQualifier1" Field on "RealEOTitleEntry" Page
#    And User Enters "LienQualifier2Value" on "LienQualifier2" Field on "RealEOTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "DefendFirstName" on "DefendsFirstName" Field on "RealEOTitleEntry" Page
#    And User Enters "DefendLastName" on "DefendsLastName" Field on "RealEOTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "NewLien" Button on "RealEOTitleEntry" Page
#    And User Click on "Plain" Button on "RealEOTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "DefendFirstName" on "DefendsFirstName" Field on "RealEOTitleEntry" Page
#    And User Enters "DefendLastName" on "DefendsLastName" Field on "RealEOTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "SaveLien" Button on "RealEOTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Estate" Button on "RealEOTitleEntry" Page
#    And User Click on "AddEstate" Button on "RealEOTitleEntry" Page
#    And User Enters "EstateFirstName" on "EstatesFirstName" Field on "RealEOTitleEntry" Page
#    And User Enters "EstateLastName" on "EstatesLastName" Field on "RealEOTitleEntry" Page
#    And User Enters "EstateDeathDate" on "EstatesDeathDate" Field on "RealEOTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "EstateSave" Button on "RealEOTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Ancillary" Button on "RealEOTitleEntry" Page
#    And User Click on "AddAncillary" Button on "RealEOTitleEntry" Page
#    And User Select "AncillaryValue" on "AncillaryDropDown" Field on "RealEOTitleEntry" Page
#    And User Enters "AncillaryRecordedDate" on "AncillaryRecordDate" Field on "RealEOTitleEntry" Page
#    And User Enters "AnciQualifierValue" on "AnciQualifier" Field on "RealEOTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "AncillarySave" Button on "RealEOTitleEntry" Page
#    And user wait for 3000 seconds
    ##NotUse
#    And User Click on "ExceptionForm" Button on "RealEOTitleEntry" Page
#    And User Click on "AddException" Button on "RealEOTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Enters "ExceptionText" on "ExceptionsText" Field on "RealEOTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "ExceptionSave" Button on "RealEOTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "AddReq" Button on "RealEOTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "ReqText" on "RequirementText" Field on "RealEOTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "ReqSave" Button on "RealEOTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "FinalExceptionSave" Button on "RealEOTitleEntry" Page
#    And user wait for 3000 seconds
    And User Click on "MailingForm" Button on "RealEOTitleEntry" Page
    And User Click on "AddMail" Button on "RealEOTitleEntry" Page
    And user wait for 2000 seconds
    And User Select "MailValue" on "MailDropDown" Field on "RealEOTitleEntry" Page
    And User Enters "MailingText" on "MailText" Field on "RealEOTitleEntry" Page
    And user wait for 2000 seconds
    And User Click on "MailSave" Button on "RealEOTitleEntry" Page
    And user wait for 3000 seconds
    And User Click on "CrossTabForm" Button on "RealEOTitleEntry" Page
    And User Click on "EditCross" Button on "RealEOTitleEntry" Page
    And user wait for 3000 seconds
    And User Click on "EnableCross" Button on "RealEOTitleEntry" Page
    And user wait for 3000 seconds
    And User Click on "CrossSave" Button on "RealEOTitleEntry" Page
    And user wait for 3000 seconds
#    And User close tab and switch to 2



















































