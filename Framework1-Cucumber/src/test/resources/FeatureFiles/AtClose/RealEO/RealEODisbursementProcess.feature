Feature: RealEODisbursementProcess

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "RealEO Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "RealEOLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "RealEOLogin" Page
    And User Click on "Login" Button on "RealEOLogin" Page


  Scenario: User Place an Order
    When User Click on "Orders" Button on "RealEODisbursementProcess" Page
    And User Click on "QuickOrderEntry" Button on "RealEODisbursementProcess" Page
    And user wait for 5000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "RealEODisbursementProcess" Page
    And User Enters "ClientNo2005" on "ClientNo" Field on "RealEODisbursementProcess" Page
    And user wait for 5000 seconds
    And User Click on "StreetNo" Button on "RealEODisbursementProcess" Page
    And User Enters "StreetNo897" on "StreetNo" Field on "RealEODisbursementProcess" Page
    And user wait for 5000 seconds
    And User Enters "StreetAddressNM" on "StreetAddress" Field on "RealEODisbursementProcess" Page
    And user wait for 3000 seconds
    And User Enters "TransactionNoVal" on "TransactionNo" Field on "RealEODisbursementProcess" Page
    And user wait for 3000 seconds
    And User Click on "ZipCode" Button on "RealEODisbursementProcess" Page
    And User Enters "ZipCode08512" on "ZipCode" Field on "RealEODisbursementProcess" Page
    And user wait for 5000 seconds
    And User Click on "AutomationClosing" Button on "RealEODisbursementProcess" Page
    And User Click on "AutomationClosing" Button on "RealEODisbursementProcess" Page
    And user wait for 5000 seconds
    And User Enters "FirstNameAsmodias" on "FirstName" Field on "RealEODisbursementProcess" Page
    And user wait for 3000 seconds
    And User Enters "LastNameDavid" on "LastName" Field on "RealEODisbursementProcess" Page
    And User Click on "PlaceOrder" Button on "RealEODisbursementProcess" Page
    And User Wait for Element "OrderPlaced" to be visible on "RealEODisbursementProcess" Page
    And User save "OrderNo" from "NewOrderNo" Field which is "clickable" on "RealEODisbursementProcess" Page
    And User switch to Default from iframe
    #New
    And User Enters "OrderNo" on "OrderNoSearch" Field on "RealEODisbursementProcess" Page
    And user wait for 2000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "RealEODisbursementProcess" Page
    And User Wait for Element "CompletedOrder" to be visible on "RealEODisbursementProcess" Page
    And User Click on "Transactions" Button on "RealEODisbursementProcess" Page
    And User Click on "CloseTitle" Button on "RealEODisbursementProcess" Page
    And User switch to Default from iframe
    And User switch tab 2
    And user wait for 3000 seconds
    And User Click on "ActionItems" Button on "RealEODisbursementProcess" Page
    And User Click on "LaunchWorkFlow" Button on "RealEODisbursementProcess" Page
    And User Click on "Disbursement" Button on "RealEODisbursementProcess" Page
    And User Wait for Element "AssertDisburse" to be visible on "RealEODisbursementProcess" Page
    And User close tab and switch to 1
    And user wait for 2000 seconds
    And User Click on "OrderInbox" Button on "RealEODisbursementProcess" Page
    And user wait for 2000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "RealEODisbursementProcess" Page
#    And User Click on "BalanceOrder" Button on "RealEODisbursementProcess" Page
#    And User Wait for Element "BalancePage" to be visible on "RealEODisbursementProcess" Page
#    And User switch to Default from iframe
#    And user wait for 3000 seconds
#    And User Click on "SearchOrder" Button on "RealEODisbursementProcess" Page
#    And user wait for 3000 seconds
#    And User switch to iframe "FrameQuickOrderEntry" on "RealEODisbursementProcess" Page
#    And User Click on "AccountSummary" Button on "RealEODisbursementProcess" Page
#    And User Wait for Element "AccSummary" to be visible on "RealEODisbursementProcess" Page
#    And User Click on "AddDeposit" Button on "RealEODisbursementProcess" Page
#    And User Click on "AccountNo" Button on "RealEODisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Click on "AccountNoValue" Button on "RealEODisbursementProcess" Page
#    And User Enters "BalanceVal" on "BalanceAmt" Field on "RealEODisbursementProcess" Page
#    And User Enters "BalanceTextValue" on "BalanceText" Field on "RealEODisbursementProcess" Page
#    And User Click on "BalanceSave" Button on "RealEODisbursementProcess" Page
#    And User switch to Default from iframe
#    And user wait for 3000 seconds
#    And User Click on "OrderInbox" Button on "RealEODisbursementProcess" Page
#    And user wait for 3000 seconds
#    And User switch to iframe "FrameQuickOrderEntry" on "RealEODisbursementProcess" Page
#    And User Click on "BalanceOrder" Button on "RealEODisbursementProcess" Page
#    And user wait for 2000 seconds
#    #check
#    And User Click on "AddDebit" Button on "RealEODisbursementProcess" Page
#    And User Click on "BankAccountNo" Button on "RealEODisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Click on "BankAccountNoValue" Button on "RealEODisbursementProcess" Page
#    And User Select "TransactionTypeVal1" on "TransactionType" Field on "RealEODisbursementProcess" Page
#    And User Click on "BalanceAmount" Button on "RealEODisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Enters "BalanceAmountVal" on "BalanceAmount" Field on "RealEODisbursementProcess" Page
#    And User Click on "BankPayTo" Button on "RealEODisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Click on "BankPayToValue" Button on "RealEODisbursementProcess" Page
#    And user wait for 3000 seconds
#    And User Click on "DebitSave" Button on "RealEODisbursementProcess" Page
#    And user wait for 2000 seconds
#    #Company Fee
#    And User Click on "AddDebit" Button on "RealEODisbursementProcess" Page
#    And User Click on "BankAccountNo" Button on "RealEODisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Click on "BankAccountNoValue" Button on "RealEODisbursementProcess" Page
#    And User Select "TransactionTypeVal2" on "TransactionType" Field on "RealEODisbursementProcess" Page
#    And User Click on "BalanceAmount" Button on "RealEODisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Enters "BalanceAmountVal" on "BalanceAmount" Field on "RealEODisbursementProcess" Page
#    And User Click on "BankPayTo" Button on "RealEODisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Click on "BankPayToValue" Button on "RealEODisbursementProcess" Page
#    And user wait for 3000 seconds
#    And User Click on "DebitSave" Button on "RealEODisbursementProcess" Page
#    And user wait for 2000 seconds
#    #Wire - Out
#    And User Click on "AddDebit" Button on "RealEODisbursementProcess" Page
#    And User Click on "BankAccountNo" Button on "RealEODisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Click on "BankAccountNoValue" Button on "RealEODisbursementProcess" Page
#    And User Select "TransactionTypeVal3" on "TransactionType" Field on "RealEODisbursementProcess" Page
#    And User Click on "BalanceAmount" Button on "RealEODisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Enters "BalanceAmountVal" on "BalanceAmount" Field on "RealEODisbursementProcess" Page
#    And User Click on "BankPayTo" Button on "RealEODisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Click on "BankPayToValue" Button on "RealEODisbursementProcess" Page
#    And user wait for 3000 seconds
#    And User Click on "DebitSave" Button on "RealEODisbursementProcess" Page
#    And user wait for 3000 seconds
#    And User Click on "BalanceOrderComplete" Button on "RealEODisbursementProcess" Page
#    And User switch to Default from iframe
#    And user wait for 3000 seconds
#    And User Click on "SearchOrder" Button on "RealEODisbursementProcess" Page
#    And user wait for 3000 seconds
#    And User switch to iframe "FrameQuickOrderEntry" on "RealEODisbursementProcess" Page
#    And User Click on "AccountSummary" Button on "RealEODisbursementProcess" Page
#    Then User Assert "AssertValue" on Field "AccountSummaryScreen" on "RealEODisbursementProcess" Page
#    And user wait for 3000 seconds







