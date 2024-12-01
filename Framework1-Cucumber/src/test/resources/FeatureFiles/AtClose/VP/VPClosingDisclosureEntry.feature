Feature: VPClosingDisclosureEntry Scenarios

  Background:
    ##VP
    Given User Setup Web Browser Session
    When User Navigates to "VP Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VPLogin" Page
    And User Click on "Next" Button on "VPLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VPLogin" Page
    And User Click on "Login" Button on "VPLogin" Page

  Scenario: User Enter Closing Data
    When User Enters "TestValueShared" on "OrderNoSearch" Field on "VPClosingDisclosureEntry" Page
    And user wait for 2000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "VPClosingDisclosureEntry" Page
    And User Click on "Transactions" Button on "VPClosingDisclosureEntry" Page
    And User Click on "CloseTitle" Button on "VPClosingDisclosureEntry" Page
    And User switch to Default from iframe
    And User switch tab 2
    And user wait for 2000 seconds
    And User Click on "DisEntry" Button on "VPClosingDisclosureEntry" Page
    And User switch tab 3
    And user wait for 2000 seconds
    And User Enters "CloseIssueDate" on "IssueDate" Field on "VPClosingDisclosureEntry" Page
    And User Enters "CloseDate" on "ClosingDate" Field on "VPClosingDisclosureEntry" Page
    And User Enters "DisburseDate" on "DisbursingDate" Field on "VPClosingDisclosureEntry" Page
    And user wait for 2000 seconds
    And User Select "LoanTermValue" on "TermDropDown" Field on "VPClosingDisclosureEntry" Page
    And User Select "LoanPeriodValue" on "PeriodDropDown" Field on "VPClosingDisclosureEntry" Page
    And User Enters "LoanTermDay" on "TermDay" Field on "VPClosingDisclosureEntry" Page
    And User Enters "LoanTermYear" on "TermYear" Field on "VPClosingDisclosureEntry" Page
    And User Select "AmortizationValue" on "AmortizeDropDown" Field on "VPClosingDisclosureEntry" Page
    And User Click on "DisSave" Button on "VPClosingDisclosureEntry" Page
    And user wait for 3000 seconds
    And User Click on "LoanCost" Button on "VPClosingDisclosureEntry" Page
    And user wait for 3000 seconds
    And User Enters "OriginPercent" on "OriginPercentage" Field on "VPClosingDisclosureEntry" Page
    And User Enters "OriginV1Value" on "OriginV1" Field on "VPClosingDisclosureEntry" Page
    And User Enters "OriginV1Value" on "OriginV2" Field on "VPClosingDisclosureEntry" Page
    And User Click on "ServiceBorrowerAdd" Button on "VPClosingDisclosureEntry" Page
    And user wait for 4000 seconds
    And User Select "ServiceToValue" on "ServiceDropDown" Field on "VPClosingDisclosureEntry" Page
    And User Enters "ServiceV1Value" on "ServiceV1" Field on "VPClosingDisclosureEntry" Page
    And User Enters "ServiceV2Value" on "ServiceV2" Field on "VPClosingDisclosureEntry" Page
    And User Click on "ServiceShopAdd" Button on "VPClosingDisclosureEntry" Page
    And user wait for 4000 seconds
    And User Select "ServiceShopValue" on "ServiceShopDropDown" Field on "VPClosingDisclosureEntry" Page
    And User Enters "ServiceShopV1Value" on "ServiceShopV1" Field on "VPClosingDisclosureEntry" Page
    And User Enters "ServiceShopV2Value" on "ServiceShopV2" Field on "VPClosingDisclosureEntry" Page
    And User Click on "LoanCostSave" Button on "VPClosingDisclosureEntry" Page
    And user wait for 4000 seconds
    And User Click on "OtherCost" Button on "VPClosingDisclosureEntry" Page
##    And User Click on "TaxesAdd" Button on "VPClosingDisclosureEntry" Page
##    And user wait for 4000 seconds
    And User Enters "TaxesToValue" on "TaxesValue" Field on "VPClosingDisclosureEntry" Page
    And User Enters "TaxesV1Value" on "TaxesV1" Field on "VPClosingDisclosureEntry" Page
    And User Enters "TaxesV2Value" on "TaxesV2" Field on "VPClosingDisclosureEntry" Page
    And user wait for 1000 seconds
    And User Enters "InterestValue" on "PrepaidInterest" Field on "VPClosingDisclosureEntry" Page
    And User Enters "PerDayFromVal" on "PerDayFrom" Field on "VPClosingDisclosureEntry" Page
    And User Enters "PerDayToVal" on "PerDayTo" Field on "VPClosingDisclosureEntry" Page
    And User Enters "PrepaidV2Value" on "PrepaidV2" Field on "VPClosingDisclosureEntry" Page
    And user wait for 1000 seconds
    And User Enters "InitialPayV1Val" on "InitialPayV1" Field on "VPClosingDisclosureEntry" Page
    And User Enters "InitialPayV2Val" on "InitialPayV2" Field on "VPClosingDisclosureEntry" Page
    And user wait for 2000 seconds
    And User Click on "OtherAdd" Button on "VPClosingDisclosureEntry" Page
    And user wait for 4000 seconds
    And User Select "OtherValue" on "OtherDropDown" Field on "VPClosingDisclosureEntry" Page
    And User Enters "OtherToValue" on "OtherValue" Field on "VPClosingDisclosureEntry" Page
    And User Enters "OtherV1Val" on "OtherV1" Field on "VPClosingDisclosureEntry" Page
    And User Enters "OtherV2Val" on "OtherV2" Field on "VPClosingDisclosureEntry" Page
    And User Click on "OtherSave" Button on "VPClosingDisclosureEntry" Page
    And user wait for 3000 seconds
    And User Click on "SumOfTrans" Button on "VPClosingDisclosureEntry" Page
    And user wait for 8000 seconds
    And User Enters "SalePriceVal" on "SalePriceV1" Field on "VPClosingDisclosureEntry" Page
    And User Select "DueValue" on "DueDropDown" Field on "VPClosingDisclosureEntry" Page
    And User Enters "DueDropVal" on "DueDropAmt" Field on "VPClosingDisclosureEntry" Page
    And User Select "AdjustDropVal" on "AdjustDrop" Field on "VPClosingDisclosureEntry" Page
    And User Enters "AdjustAmtVal" on "AdjustAmt" Field on "VPClosingDisclosureEntry" Page
    And User Enters "AdjustCityFrom" on "AdjustCityF" Field on "VPClosingDisclosureEntry" Page
    And User Enters "AdjustCityTo" on "AdjustCityT" Field on "VPClosingDisclosureEntry" Page
    And User Enters "AdjustCityAmt" on "CityAmt" Field on "VPClosingDisclosureEntry" Page
    And User Enters "PaidDeposit" on "PaidDepositAmt" Field on "VPClosingDisclosureEntry" Page
    And user wait for 2000 seconds
    And User Enters "SellerSaleAmt" on "SaleAmt" Field on "VPClosingDisclosureEntry" Page
    And User Enters "SellerCityFrom" on "SellerCityF" Field on "VPClosingDisclosureEntry" Page
    And User Enters "SellerCityTo" on "SellerCityT" Field on "VPClosingDisclosureEntry" Page
    And User Enters "SellerCityAmt" on "SellerCityA" Field on "VPClosingDisclosureEntry" Page
    And User Enters "SellerDeposit" on "SellerDepositAmt" Field on "VPClosingDisclosureEntry" Page
    And User Enters "UnpaidSellerCityFrom" on "UnpaidSellerCityF" Field on "VPClosingDisclosureEntry" Page
    And User Enters "UnpaidSellerCityTo" on "UnpaidSellerCityT" Field on "VPClosingDisclosureEntry" Page
    And User Enters "UnpaidSellerCityAmt" on "UnpaidSellerCityA" Field on "VPClosingDisclosureEntry" Page
    And User Click on "SumOfTransSave" Button on "VPClosingDisclosureEntry" Page
    And user wait for 9000 seconds




























