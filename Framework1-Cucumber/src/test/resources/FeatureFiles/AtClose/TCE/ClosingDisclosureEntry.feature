Feature: ClosingDisclosureEntry Scenarios

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "AtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseLogin" Page
    And User Click on "Login" Button on "AtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title

  Scenario: User Enter Closing Data
    And User Enters "TestValueShared" on "OrderNoSearch" Field on "Shared" Page
    And User Click on "OrderSearch" Button on "Orders" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "Transactions" Button on "TitleEntry" Page
    And User Click on "CloseTitle" Button on "OrderClosing" Page
    And User switch to Default from iframe
    And User switch tab 2
    And user wait for 2000 seconds
    And User Click on "DisEntry" Button on "ClosingDisclosureEntry" Page
    And User switch tab 3
    And user wait for 2000 seconds
    And User Enters "CloseIssueDate" on "IssueDate" Field on "ClosingDisclosureEntry" Page
    And User Enters "CloseDate" on "ClosingDate" Field on "ClosingDisclosureEntry" Page
    And User Enters "DisburseDate" on "DisbursingDate" Field on "ClosingDisclosureEntry" Page
    And user wait for 2000 seconds
    And User Select "LoanTermValue" on "TermDropDown" Field on "ClosingDisclosureEntry" Page
    And User Select "LoanPeriodValue" on "PeriodDropDown" Field on "ClosingDisclosureEntry" Page
    And User Enters "LoanTermDay" on "TermDay" Field on "ClosingDisclosureEntry" Page
    And User Enters "LoanTermYear" on "TermYear" Field on "ClosingDisclosureEntry" Page
    And User Select "AmortizationValue" on "AmortizeDropDown" Field on "ClosingDisclosureEntry" Page
    And User Click on "DisSave" Button on "ClosingDisclosureEntry" Page
    And user wait for 3000 seconds
    And User Click on "LoanCost" Button on "ClosingDisclosureEntry" Page
    And user wait for 3000 seconds
    And User Enters "OriginPercent" on "OriginPercentage" Field on "ClosingDisclosureEntry" Page
    And User Enters "OriginV1Value" on "OriginV1" Field on "ClosingDisclosureEntry" Page
    And User Enters "OriginV1Value" on "OriginV2" Field on "ClosingDisclosureEntry" Page
    And User Click on "ServiceBorrowerAdd" Button on "ClosingDisclosureEntry" Page
    And user wait for 4000 seconds
    And User Select "ServiceToValue" on "ServiceDropDown" Field on "ClosingDisclosureEntry" Page
    And User Enters "ServiceV1Value" on "ServiceV1" Field on "ClosingDisclosureEntry" Page
    And User Enters "ServiceV2Value" on "ServiceV2" Field on "ClosingDisclosureEntry" Page
    And User Click on "ServiceShopAdd" Button on "ClosingDisclosureEntry" Page
    And user wait for 4000 seconds
    And User Select "ServiceShopValue" on "ServiceShopDropDown" Field on "ClosingDisclosureEntry" Page
    And User Enters "ServiceShopV1Value" on "ServiceShopV1" Field on "ClosingDisclosureEntry" Page
    And User Enters "ServiceShopV2Value" on "ServiceShopV2" Field on "ClosingDisclosureEntry" Page
    And User Click on "LoanCostSave" Button on "ClosingDisclosureEntry" Page
    And user wait for 4000 seconds
    And User Click on "OtherCost" Button on "ClosingDisclosureEntry" Page
##    And User Click on "TaxesAdd" Button on "ClosingDisclosureEntry" Page
##    And user wait for 4000 seconds
    And User Enters "TaxesToValue" on "TaxesValue" Field on "ClosingDisclosureEntry" Page
    And User Enters "TaxesV1Value" on "TaxesV1" Field on "ClosingDisclosureEntry" Page
    And User Enters "TaxesV2Value" on "TaxesV2" Field on "ClosingDisclosureEntry" Page
    And user wait for 1000 seconds
    And User Enters "InterestValue" on "PrepaidInterest" Field on "ClosingDisclosureEntry" Page
    And User Enters "PerDayFromVal" on "PerDayFrom" Field on "ClosingDisclosureEntry" Page
    And User Enters "PerDayToVal" on "PerDayTo" Field on "ClosingDisclosureEntry" Page
    And User Enters "PrepaidV2Value" on "PrepaidV2" Field on "ClosingDisclosureEntry" Page
    And user wait for 1000 seconds
    And User Enters "InitialPayV1Val" on "InitialPayV1" Field on "ClosingDisclosureEntry" Page
    And User Enters "InitialPayV2Val" on "InitialPayV2" Field on "ClosingDisclosureEntry" Page
    And user wait for 2000 seconds
    And User Click on "OtherAdd" Button on "ClosingDisclosureEntry" Page
    And user wait for 4000 seconds
    And User Select "OtherValue" on "OtherDropDown" Field on "ClosingDisclosureEntry" Page
    And User Enters "OtherToValue" on "OtherValue" Field on "ClosingDisclosureEntry" Page
    And User Enters "OtherV1Val" on "OtherV1" Field on "ClosingDisclosureEntry" Page
    And User Enters "OtherV2Val" on "OtherV2" Field on "ClosingDisclosureEntry" Page
    And User Click on "OtherSave" Button on "ClosingDisclosureEntry" Page
    And user wait for 3000 seconds
    And User Click on "SumOfTrans" Button on "ClosingDisclosureEntry" Page
    And user wait for 8000 seconds
    And User Enters "SalePriceVal" on "SalePriceV1" Field on "ClosingDisclosureEntry" Page
    And User Select "DueValue" on "DueDropDown" Field on "ClosingDisclosureEntry" Page
    And User Enters "DueDropVal" on "DueDropAmt" Field on "ClosingDisclosureEntry" Page
    And User Select "AdjustDropVal" on "AdjustDrop" Field on "ClosingDisclosureEntry" Page
    And User Enters "AdjustAmtVal" on "AdjustAmt" Field on "ClosingDisclosureEntry" Page
    And User Enters "AdjustCityFrom" on "AdjustCityF" Field on "ClosingDisclosureEntry" Page
    And User Enters "AdjustCityTo" on "AdjustCityT" Field on "ClosingDisclosureEntry" Page
    And User Enters "AdjustCityAmt" on "CityAmt" Field on "ClosingDisclosureEntry" Page
    And User Enters "PaidDeposit" on "PaidDepositAmt" Field on "ClosingDisclosureEntry" Page
    And user wait for 2000 seconds
    And User Enters "SellerSaleAmt" on "SaleAmt" Field on "ClosingDisclosureEntry" Page
    And User Enters "SellerCityFrom" on "SellerCityF" Field on "ClosingDisclosureEntry" Page
    And User Enters "SellerCityTo" on "SellerCityT" Field on "ClosingDisclosureEntry" Page
    And User Enters "SellerCityAmt" on "SellerCityA" Field on "ClosingDisclosureEntry" Page
    And User Enters "SellerDeposit" on "SellerDepositAmt" Field on "ClosingDisclosureEntry" Page
    And User Enters "UnpaidSellerCityFrom" on "UnpaidSellerCityF" Field on "ClosingDisclosureEntry" Page
    And User Enters "UnpaidSellerCityTo" on "UnpaidSellerCityT" Field on "ClosingDisclosureEntry" Page
    And User Enters "UnpaidSellerCityAmt" on "UnpaidSellerCityA" Field on "ClosingDisclosureEntry" Page
    And User Click on "SumOfTransSave" Button on "ClosingDisclosureEntry" Page
    And user wait for 9000 seconds




























