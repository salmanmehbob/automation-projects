Feature: SAASTitleEntry Scenarios

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "VisionAtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VisionAtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VisionAtCloseLogin" Page
    And User Click on "Login" Button on "VisionAtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title

  Scenario: User Enter Title
    And User Enters "TestValue" on "TestSearch" Field on "SAASTitleEntry" Page
    And user wait for 2000 seconds
    And User Click on "OrderSearch" Button on "SAASTitleEntry" Page
    And User switch to iframe "FrameQuickOrderEntry" on "SAASOrders" Page
    And User Click on "Transactions" Button on "SAASTitleEntry" Page
    And User Click on "SelectTitle" Button on "SAASTitleEntry" Page
    And User switch to Default from iframe
    And User switch tab 2
    And User Click on "RealEOSAASTitleEntryBox" Button on "SAASTitleEntry" Page
    And User switch tab 3
    And user wait for 2000 seconds
#    And User Click on "PropertyEdit" Button on "SAASTitleEntry" Page
#    And User Enters "ProductSearchDate" on "PropertySearch" Field on "SAASTitleEntry" Page
#    And User Enters "ProductEffectiveDate" on "PropertyEffective" Field on "SAASTitleEntry" Page
#    And User Enters "VestingInfo" on "PropertyVesting" Field on "SAASTitleEntry" Page
#    And User Enters "LegalDesc" on "PropertyLegal" Field on "SAASTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "PropertySave" Button on "SAASTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Deeds" Button on "SAASTitleEntry" Page
#    And User Click on "NewDeed" Button on "SAASTitleEntry" Page
#    And User Select "DeedDropValue" on "DeedDropDown" Field on "SAASTitleEntry" Page
#    And User Enters "DeedRecordedDate" on "DeedRecordDate" Field on "SAASTitleEntry" Page
#    And User Enters "QualifierValue" on "DeedQualifier" Field on "SAASTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Enters "DeedFirstName" on "GrantorFirstName" Field on "SAASTitleEntry" Page
#    And User Enters "DeedLastName" on "GrantorLastName" Field on "SAASTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "NewGrantor" Button on "SAASTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "GranteeClick" Button on "SAASTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "DeedFirstName" on "GrantorFirstName" Field on "SAASTitleEntry" Page
#    And User Enters "DeedLastName" on "GrantorLastName" Field on "SAASTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "DeedSave" Button on "SAASTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Taxes" Button on "SAASTitleEntry" Page
#    And User Click on "AddTax" Button on "SAASTitleEntry" Page
#    And User Enters "TaxesParcel" on "TaxParcel" Field on "SAASTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Enters "TaxYearStart" on "TaxStart" Field on "SAASTitleEntry" Page
#    And User Enters "TaxYearEnd" on "TaxEnd" Field on "SAASTitleEntry" Page
#    And User Click on "TaxYearSave" Button on "SAASTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "TaxesSave" Button on "SAASTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Mortgages" Button on "SAASTitleEntry" Page
#    And User Click on "AddMortgages" Button on "SAASTitleEntry" Page
#    And User Select "MortgageTypeValue" on "MortgageDropDown" Field on "SAASTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "MortgageDetail" on "Mortgage" Field on "SAASTitleEntry" Page
#    And User Enters "MortgageAmount" on "MortgageAmt" Field on "SAASTitleEntry" Page
    #Notuse
##    And User Click on "SubjectMortgage" Button on "SAASTitleEntry" Page
#    And User Enters "MortgageRecordedDate" on "MortgageRecordDate" Field on "SAASTitleEntry" Page
#    And User Enters "MortQualifierValue" on "MortQualifier" Field on "SAASTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Enters "MortFirstName" on "MortgageFirstName" Field on "SAASTitleEntry" Page
#    And User Enters "MortLastName" on "MortgageLastName" Field on "SAASTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "MortgagesSave" Button on "SAASTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Liens" Button on "SAASTitleEntry" Page
#    And User Click on "AddLien" Button on "SAASTitleEntry" Page
#    And User Select "LienTypeValue" on "LienDropDown" Field on "SAASTitleEntry" Page
#    And User Enters "LienAmount" on "LienAmt" Field on "SAASTitleEntry" Page
#    And User Enters "LienRecordedDate" on "LienRecordDate" Field on "SAASTitleEntry" Page
#    And User Enters "LienQualifier1Value" on "LienQualifier1" Field on "SAASTitleEntry" Page
#    And User Enters "LienQualifier2Value" on "LienQualifier2" Field on "SAASTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "DefendFirstName" on "DefendsFirstName" Field on "SAASTitleEntry" Page
#    And User Enters "DefendLastName" on "DefendsLastName" Field on "SAASTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "NewLien" Button on "SAASTitleEntry" Page
#    And User Click on "Plain" Button on "SAASTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "DefendFirstName" on "DefendsFirstName" Field on "SAASTitleEntry" Page
#    And User Enters "DefendLastName" on "DefendsLastName" Field on "SAASTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "SaveLien" Button on "SAASTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Estate" Button on "SAASTitleEntry" Page
#    And User Click on "AddEstate" Button on "SAASTitleEntry" Page
#    And User Enters "EstateFirstName" on "EstatesFirstName" Field on "SAASTitleEntry" Page
#    And User Enters "EstateLastName" on "EstatesLastName" Field on "SAASTitleEntry" Page
#    And User Enters "EstateDeathDate" on "EstatesDeathDate" Field on "SAASTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "EstateSave" Button on "SAASTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "Ancillary" Button on "SAASTitleEntry" Page
#    And User Click on "AddAncillary" Button on "SAASTitleEntry" Page
#    And User Select "AncillaryValue" on "AncillaryDropDown" Field on "SAASTitleEntry" Page
#    And User Enters "AncillaryRecordedDate" on "AncillaryRecordDate" Field on "SAASTitleEntry" Page
#    And User Enters "AnciQualifierValue" on "AnciQualifier" Field on "SAASTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "AncillarySave" Button on "SAASTitleEntry" Page
#    And user wait for 3000 seconds
    ##NotUse
#    And User Click on "ExceptionForm" Button on "SAASTitleEntry" Page
#    And User Click on "AddException" Button on "SAASTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Enters "ExceptionText" on "ExceptionsText" Field on "SAASTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "ExceptionSave" Button on "SAASTitleEntry" Page
#    And user wait for 3000 seconds
#    And User Click on "AddReq" Button on "SAASTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Enters "ReqText" on "RequirementText" Field on "SAASTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "ReqSave" Button on "SAASTitleEntry" Page
#    And user wait for 2000 seconds
#    And User Click on "FinalExceptionSave" Button on "SAASTitleEntry" Page
#    And user wait for 3000 seconds
    And User Click on "MailingForm" Button on "SAASTitleEntry" Page
    And User Click on "AddMail" Button on "SAASTitleEntry" Page
    And user wait for 2000 seconds
    And User Select "MailValue" on "MailDropDown" Field on "SAASTitleEntry" Page
    And User Enters "MailingText" on "MailText" Field on "SAASTitleEntry" Page
    And user wait for 2000 seconds
    And User Click on "MailSave" Button on "SAASTitleEntry" Page
    And user wait for 3000 seconds
    And User Click on "CrossTabForm" Button on "SAASTitleEntry" Page
    And User Click on "EditCross" Button on "SAASTitleEntry" Page
    And user wait for 3000 seconds
    And User Click on "EnableCross" Button on "SAASTitleEntry" Page
    And user wait for 3000 seconds
    And User Click on "CrossSave" Button on "SAASTitleEntry" Page
    And user wait for 3000 seconds
#    And User close tab and switch to 2



















































