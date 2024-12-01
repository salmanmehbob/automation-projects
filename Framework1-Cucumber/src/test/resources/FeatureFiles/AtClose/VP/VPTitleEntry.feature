Feature: VPTitleEntry Scenarios

  Background:
    ##VP
    Given User Setup Web Browser Session
    When User Navigates to "VP Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VPLogin" Page
    And User Click on "Next" Button on "VPLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VPLogin" Page
    And User Click on "Login" Button on "VPLogin" Page

  Scenario: User Enter Title
    And User Enters "TestValue" on "TestSearch" Field on "VPTitleEntry" Page
    And user wait for 2000 seconds
    And User Click on "OrderSearch" Button on "VPTitleEntry" Page
    And User switch to iframe "FrameQuickOrderEntry" on "RealEOOrders" Page
    And User Click on "Transactions" Button on "VPTitleEntry" Page
    And User Click on "SelectTitle" Button on "VPTitleEntry" Page
    And User switch to Default from iframe
    And User switch tab 2
    And User Click on "VPTitleEntryBox" Button on "VPTitleEntry" Page
    And User switch tab 3
    And user wait for 2000 seconds
#    And User Click on "PropertyEdit" Button on "VPTitleEntry" Page
#    And User Enters "ProductSearchDate" on "PropertySearch" Field on "VPTitleEntry" Page
#    And User Enters "ProductEffectiveDate" on "PropertyEffective" Field on "VPTitleEntry" Page
#    And User Enters "VestingInfo" on "PropertyVesting" Field on "VPTitleEntry" Page
#    And User Enters "LegalDesc" on "PropertyLegal" Field on "VPTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "PropertySave" Button on "VPTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Deeds" Button on "VPTitleEntry" Page
#    And User Click on "NewDeed" Button on "VPTitleEntry" Page
#    And User Select "DeedDropValue" on "DeedDropDown" Field on "VPTitleEntry" Page
#    And User Enters "DeedRecordedDate" on "DeedRecordDate" Field on "VPTitleEntry" Page
#    And User Enters "QualifierValue" on "DeedQualifier" Field on "VPTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Enters "DeedFirstName" on "GrantorFirstName" Field on "VPTitleEntry" Page
#    And User Enters "DeedLastName" on "GrantorLastName" Field on "VPTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "NewGrantor" Button on "VPTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "GranteeClick" Button on "VPTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "DeedFirstName" on "GrantorFirstName" Field on "VPTitleEntry" Page
#    And User Enters "DeedLastName" on "GrantorLastName" Field on "VPTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "DeedSave" Button on "VPTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Taxes" Button on "VPTitleEntry" Page
#    And User Click on "AddTax" Button on "VPTitleEntry" Page
#    And User Enters "TaxesParcel" on "TaxParcel" Field on "VPTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Enters "TaxYearStart" on "TaxStart" Field on "VPTitleEntry" Page
#    And User Enters "TaxYearEnd" on "TaxEnd" Field on "VPTitleEntry" Page
#    And User Click on "TaxYearSave" Button on "VPTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "TaxesSave" Button on "VPTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Mortgages" Button on "VPTitleEntry" Page
#    And User Click on "AddMortgages" Button on "VPTitleEntry" Page
#    And User Select "MortgageTypeValue" on "MortgageDropDown" Field on "VPTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "MortgageDetail" on "Mortgage" Field on "VPTitleEntry" Page
#    And User Enters "MortgageAmount" on "MortgageAmt" Field on "VPTitleEntry" Page
    #Notuse
##    And User Click on "SubjectMortgage" Button on "VPTitleEntry" Page
#    And User Enters "MortgageRecordedDate" on "MortgageRecordDate" Field on "VPTitleEntry" Page
#    And User Enters "MortQualifierValue" on "MortQualifier" Field on "VPTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Enters "MortFirstName" on "MortgageFirstName" Field on "VPTitleEntry" Page
#    And User Enters "MortLastName" on "MortgageLastName" Field on "VPTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "MortgagesSave" Button on "VPTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Liens" Button on "VPTitleEntry" Page
#    And User Click on "AddLien" Button on "VPTitleEntry" Page
#    And User Select "LienTypeValue" on "LienDropDown" Field on "VPTitleEntry" Page
#    And User Enters "LienAmount" on "LienAmt" Field on "VPTitleEntry" Page
#    And User Enters "LienRecordedDate" on "LienRecordDate" Field on "VPTitleEntry" Page
#    And User Enters "LienQualifier1Value" on "LienQualifier1" Field on "VPTitleEntry" Page
#    And User Enters "LienQualifier2Value" on "LienQualifier2" Field on "VPTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "DefendFirstName" on "DefendsFirstName" Field on "VPTitleEntry" Page
#    And User Enters "DefendLastName" on "DefendsLastName" Field on "VPTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "NewLien" Button on "VPTitleEntry" Page
#    And User Click on "Plain" Button on "VPTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "DefendFirstName" on "DefendsFirstName" Field on "VPTitleEntry" Page
#    And User Enters "DefendLastName" on "DefendsLastName" Field on "VPTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "SaveLien" Button on "VPTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Estate" Button on "VPTitleEntry" Page
#    And User Click on "AddEstate" Button on "VPTitleEntry" Page
#    And User Enters "EstateFirstName" on "EstatesFirstName" Field on "VPTitleEntry" Page
#    And User Enters "EstateLastName" on "EstatesLastName" Field on "VPTitleEntry" Page
#    And User Enters "EstateDeathDate" on "EstatesDeathDate" Field on "VPTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "EstateSave" Button on "VPTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Ancillary" Button on "VPTitleEntry" Page
#    And User Click on "AddAncillary" Button on "VPTitleEntry" Page
#    And User Select "AncillaryValue" on "AncillaryDropDown" Field on "VPTitleEntry" Page
#    And User Enters "AncillaryRecordedDate" on "AncillaryRecordDate" Field on "VPTitleEntry" Page
#    And User Enters "AnciQualifierValue" on "AnciQualifier" Field on "VPTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "AncillarySave" Button on "VPTitleEntry" Page
#    And user wait for 3000 seconds
    ##NotUse
#    And User Click on "ExceptionForm" Button on "VPTitleEntry" Page
#    And User Click on "AddException" Button on "VPTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Enters "ExceptionText" on "ExceptionsText" Field on "VPTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "ExceptionSave" Button on "VPTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "AddReq" Button on "VPTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "ReqText" on "RequirementText" Field on "VPTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "ReqSave" Button on "VPTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "FinalExceptionSave" Button on "VPTitleEntry" Page
#    And user wait for 3000 seconds
    And User Click on "MailingForm" Button on "VPTitleEntry" Page
    And User Click on "AddMail" Button on "VPTitleEntry" Page
    And user wait for 2000 seconds
    And User Select "MailValue" on "MailDropDown" Field on "VPTitleEntry" Page
    And User Enters "MailingText" on "MailText" Field on "VPTitleEntry" Page
    And user wait for 2000 seconds
    And User Click on "MailSave" Button on "VPTitleEntry" Page
    And user wait for 3000 seconds
    And User Click on "CrossTabForm" Button on "VPTitleEntry" Page
    And User Click on "EditCross" Button on "VPTitleEntry" Page
    And user wait for 3000 seconds
    And User Click on "EnableCross" Button on "VPTitleEntry" Page
    And user wait for 3000 seconds
    And User Click on "CrossSave" Button on "VPTitleEntry" Page
    And user wait for 3000 seconds
#    And User close tab and switch to 2



















































