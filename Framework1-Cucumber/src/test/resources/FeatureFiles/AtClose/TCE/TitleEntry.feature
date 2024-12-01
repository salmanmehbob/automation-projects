Feature: TitleEntry Scenarios

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "AtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseLogin" Page
    And User Click on "Login" Button on "AtCloseLogin" Page

  Scenario: User Enter Title
    And User Enters "TestValue" on "TestSearch" Field on "Orders" Page
    And user wait for 3000 seconds
    And User Click on "OrderSearch" Button on "Orders" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "Transactions" Button on "TitleEntry" Page
    And User Click on "SelectTitle" Button on "TitleEntry" Page
    And User switch to Default from iframe
    And User switch tab 2
    And User Click on "TitleEntryBox" Button on "TitleEntry" Page
    And User switch tab 3
    And user wait for 2000 seconds
#    And User Click on "PropertyEdit" Button on "TitleEntry" Page
#    And User Enters "ProductSearchDate" on "PropertySearch" Field on "TitleEntry" Page
#    And User Enters "ProductEffectiveDate" on "PropertyEffective" Field on "TitleEntry" Page
#    And User Enters "VestingInfo" on "PropertyVesting" Field on "TitleEntry" Page
#    And User Enters "LegalDesc" on "PropertyLegal" Field on "TitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "PropertySave" Button on "TitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Deeds" Button on "TitleEntry" Page
#    And User Click on "NewDeed" Button on "TitleEntry" Page
#    And User Select "DeedDropValue" on "DeedDropDown" Field on "TitleEntry" Page
#    And User Enters "DeedRecordedDate" on "DeedRecordDate" Field on "TitleEntry" Page
#    And User Enters "QualifierValue" on "DeedQualifier" Field on "TitleEntry" Page
#    And user wait for 3000 seconds
#    And User Enters "DeedFirstName" on "GrantorFirstName" Field on "TitleEntry" Page
#    And User Enters "DeedLastName" on "GrantorLastName" Field on "TitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "NewGrantor" Button on "TitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "GranteeClick" Button on "TitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "DeedFirstName" on "GrantorFirstName" Field on "TitleEntry" Page
#    And User Enters "DeedLastName" on "GrantorLastName" Field on "TitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "DeedSave" Button on "TitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Taxes" Button on "TitleEntry" Page
#    And User Click on "AddTax" Button on "TitleEntry" Page
#    And User Enters "TaxesParcel" on "TaxParcel" Field on "TitleEntry" Page
#    And user wait for 3000 seconds
#    And User Enters "TaxYearStart" on "TaxStart" Field on "TitleEntry" Page
#    And User Enters "TaxYearEnd" on "TaxEnd" Field on "TitleEntry" Page
#    And User Click on "TaxYearSave" Button on "TitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "TaxesSave" Button on "TitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Mortgages" Button on "TitleEntry" Page
#    And User Click on "AddMortgages" Button on "TitleEntry" Page
#    And User Select "MortgageTypeValue" on "MortgageDropDown" Field on "TitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "MortgageDetail" on "Mortgage" Field on "TitleEntry" Page
#    And User Enters "MortgageAmount" on "MortgageAmt" Field on "TitleEntry" Page
    #Notuse
##    And User Click on "SubjectMortgage" Button on "TitleEntry" Page
#    And User Enters "MortgageRecordedDate" on "MortgageRecordDate" Field on "TitleEntry" Page
#    And User Enters "MortQualifierValue" on "MortQualifier" Field on "TitleEntry" Page
#    And user wait for 3000 seconds
#    And User Enters "MortFirstName" on "MortgageFirstName" Field on "TitleEntry" Page
#    And User Enters "MortLastName" on "MortgageLastName" Field on "TitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "MortgagesSave" Button on "TitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Liens" Button on "TitleEntry" Page
#    And User Click on "AddLien" Button on "TitleEntry" Page
#    And User Select "LienTypeValue" on "LienDropDown" Field on "TitleEntry" Page
#    And User Enters "LienAmount" on "LienAmt" Field on "TitleEntry" Page
#    And User Enters "LienRecordedDate" on "LienRecordDate" Field on "TitleEntry" Page
#    And User Enters "LienQualifier1Value" on "LienQualifier1" Field on "TitleEntry" Page
#    And User Enters "LienQualifier2Value" on "LienQualifier2" Field on "TitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "DefendFirstName" on "DefendsFirstName" Field on "TitleEntry" Page
#    And User Enters "DefendLastName" on "DefendsLastName" Field on "TitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "NewLien" Button on "TitleEntry" Page
#    And User Click on "Plain" Button on "TitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "DefendFirstName" on "DefendsFirstName" Field on "TitleEntry" Page
#    And User Enters "DefendLastName" on "DefendsLastName" Field on "TitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "SaveLien" Button on "TitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Estate" Button on "TitleEntry" Page
#    And User Click on "AddEstate" Button on "TitleEntry" Page
#    And User Enters "EstateFirstName" on "EstatesFirstName" Field on "TitleEntry" Page
#    And User Enters "EstateLastName" on "EstatesLastName" Field on "TitleEntry" Page
#    And User Enters "EstateDeathDate" on "EstatesDeathDate" Field on "TitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "EstateSave" Button on "TitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Ancillary" Button on "TitleEntry" Page
#    And User Click on "AddAncillary" Button on "TitleEntry" Page
#    And User Select "AncillaryValue" on "AncillaryDropDown" Field on "TitleEntry" Page
#    And User Enters "AncillaryRecordedDate" on "AncillaryRecordDate" Field on "TitleEntry" Page
#    And User Enters "AnciQualifierValue" on "AnciQualifier" Field on "TitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "AncillarySave" Button on "TitleEntry" Page
#    And user wait for 3000 seconds
    ##NotUse
#    And User Click on "ExceptionForm" Button on "TitleEntry" Page
#    And User Click on "AddException" Button on "TitleEntry" Page
#    And user wait for 3000 seconds
#    And User Enters "ExceptionText" on "ExceptionsText" Field on "TitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "ExceptionSave" Button on "TitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "AddReq" Button on "TitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "ReqText" on "RequirementText" Field on "TitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "ReqSave" Button on "TitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "FinalExceptionSave" Button on "TitleEntry" Page
#    And user wait for 3000 seconds
    And User Click on "MailingForm" Button on "TitleEntry" Page
    And User Click on "AddMail" Button on "TitleEntry" Page
    And user wait for 2000 seconds
    And User Select "MailValue" on "MailDropDown" Field on "TitleEntry" Page
    And User Enters "MailingText" on "MailText" Field on "TitleEntry" Page
    And user wait for 2000 seconds
    And User Click on "MailSave" Button on "TitleEntry" Page
    And user wait for 3000 seconds
    And User Click on "CrossTabForm" Button on "TitleEntry" Page
    And User Click on "EditCross" Button on "TitleEntry" Page
    And user wait for 3000 seconds
    And User Click on "EnableCross" Button on "TitleEntry" Page
    And user wait for 3000 seconds
    And User Click on "CrossSave" Button on "TitleEntry" Page
    And user wait for 3000 seconds
#    And User close tab and switch to 2



















































