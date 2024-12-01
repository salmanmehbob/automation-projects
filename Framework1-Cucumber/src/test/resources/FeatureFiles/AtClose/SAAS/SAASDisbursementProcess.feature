Feature: SAASDisbursementProcess

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "VisionAtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VisionAtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VisionAtCloseLogin" Page
    And User Click on "Login" Button on "VisionAtCloseLogin" Page


  Scenario: User Place an Order
    When User Click on "Orders" Button on "SAASDisbursementProcess" Page
    And User Click on "QuickOrderEntry" Button on "SAASDisbursementProcess" Page
    And user wait for 5000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "SAASDisbursementProcess" Page
    And User Enters "ClientNo2005" on "ClientNo" Field on "SAASDisbursementProcess" Page
    And user wait for 5000 seconds
    And User Click on "StreetNo" Button on "SAASDisbursementProcess" Page
    And User Enters "StreetNo897" on "StreetNo" Field on "SAASDisbursementProcess" Page
    And user wait for 5000 seconds
    And User Enters "StreetAddressNM" on "StreetAddress" Field on "SAASDisbursementProcess" Page
    And user wait for 3000 seconds
    And User Enters "TransactionNoVal" on "TransactionNo" Field on "SAASDisbursementProcess" Page
    And user wait for 3000 seconds
    And User Click on "ZipCode" Button on "SAASDisbursementProcess" Page
    And User Enters "ZipCode08512" on "ZipCode" Field on "SAASDisbursementProcess" Page
    And user wait for 5000 seconds
    And User Click on "AutomationClosing" Button on "SAASDisbursementProcess" Page
    And User Click on "AutomationClosing" Button on "SAASDisbursementProcess" Page
    And user wait for 5000 seconds
    And User Enters "FirstNameAsmodias" on "FirstName" Field on "SAASDisbursementProcess" Page
    And user wait for 3000 seconds
    And User Enters "LastNameDavid" on "LastName" Field on "SAASDisbursementProcess" Page
    And User Click on "PlaceOrder" Button on "SAASDisbursementProcess" Page
    And User Wait for Element "OrderPlaced" to be visible on "SAASDisbursementProcess" Page
    And User save "OrderNo" from "NewOrderNo" Field which is "clickable" on "SAASDisbursementProcess" Page
    And User switch to Default from iframe
    #New
    And User Enters "OrderNo" on "OrderNoSearch" Field on "SAASDisbursementProcess" Page
    And user wait for 2000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "SAASDisbursementProcess" Page
    And User Wait for Element "CompletedOrder" to be visible on "SAASDisbursementProcess" Page
    And User Click on "Transactions" Button on "SAASDisbursementProcess" Page
    And User Click on "CloseTitle" Button on "SAASDisbursementProcess" Page
    And User switch to Default from iframe
    And User switch tab 2
    And user wait for 3000 seconds
    And User Click on "ActionItems" Button on "SAASDisbursementProcess" Page
    And User Click on "LaunchWorkFlow" Button on "SAASDisbursementProcess" Page
    And User Click on "Disbursement" Button on "SAASDisbursementProcess" Page
    And User Wait for Element "AssertDisburse" to be visible on "SAASDisbursementProcess" Page
    And User close tab and switch to 1
    And user wait for 2000 seconds
    And User Click on "OrderInbox" Button on "SAASDisbursementProcess" Page
    And user wait for 2000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "SAASDisbursementProcess" Page
#    And User Click on "BalanceOrder" Button on "SAASDisbursementProcess" Page
#    And User Wait for Element "BalancePage" to be visible on "SAASDisbursementProcess" Page
#    And User switch to Default from iframe
#    And user wait for 3000 seconds
#    And User Click on "SearchOrder" Button on "SAASDisbursementProcess" Page
#    And user wait for 3000 seconds
#    And User switch to iframe "FrameQuickOrderEntry" on "SAASDisbursementProcess" Page
#    And User Click on "AccountSummary" Button on "SAASDisbursementProcess" Page
#    And User Wait for Element "AccSummary" to be visible on "SAASDisbursementProcess" Page
#    And User Click on "AddDeposit" Button on "SAASDisbursementProcess" Page
#    And User Click on "AccountNo" Button on "SAASDisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Click on "AccountNoValue" Button on "SAASDisbursementProcess" Page
#    And User Enters "BalanceVal" on "BalanceAmt" Field on "SAASDisbursementProcess" Page
#    And User Enters "BalanceTextValue" on "BalanceText" Field on "SAASDisbursementProcess" Page
#    And User Click on "BalanceSave" Button on "SAASDisbursementProcess" Page
#    And User switch to Default from iframe
#    And user wait for 3000 seconds
#    And User Click on "OrderInbox" Button on "SAASDisbursementProcess" Page
#    And user wait for 3000 seconds
#    And User switch to iframe "FrameQuickOrderEntry" on "SAASDisbursementProcess" Page
#    And User Click on "BalanceOrder" Button on "SAASDisbursementProcess" Page
#    And user wait for 2000 seconds
#    #check
#    And User Click on "AddDebit" Button on "SAASDisbursementProcess" Page
#    And User Click on "BankAccountNo" Button on "SAASDisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Click on "BankAccountNoValue" Button on "SAASDisbursementProcess" Page
#    And User Select "TransactionTypeVal1" on "TransactionType" Field on "SAASDisbursementProcess" Page
#    And User Click on "BalanceAmount" Button on "SAASDisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Enters "BalanceAmountVal" on "BalanceAmount" Field on "SAASDisbursementProcess" Page
#    And User Click on "BankPayTo" Button on "SAASDisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Click on "BankPayToValue" Button on "SAASDisbursementProcess" Page
#    And user wait for 3000 seconds
#    And User Click on "DebitSave" Button on "SAASDisbursementProcess" Page
#    And user wait for 2000 seconds
#    #Company Fee
#    And User Click on "AddDebit" Button on "SAASDisbursementProcess" Page
#    And User Click on "BankAccountNo" Button on "SAASDisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Click on "BankAccountNoValue" Button on "SAASDisbursementProcess" Page
#    And User Select "TransactionTypeVal2" on "TransactionType" Field on "SAASDisbursementProcess" Page
#    And User Click on "BalanceAmount" Button on "SAASDisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Enters "BalanceAmountVal" on "BalanceAmount" Field on "SAASDisbursementProcess" Page
#    And User Click on "BankPayTo" Button on "SAASDisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Click on "BankPayToValue" Button on "SAASDisbursementProcess" Page
#    And user wait for 3000 seconds
#    And User Click on "DebitSave" Button on "SAASDisbursementProcess" Page
#    And user wait for 2000 seconds
#    #Wire - Out
#    And User Click on "AddDebit" Button on "SAASDisbursementProcess" Page
#    And User Click on "BankAccountNo" Button on "SAASDisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Click on "BankAccountNoValue" Button on "SAASDisbursementProcess" Page
#    And User Select "TransactionTypeVal3" on "TransactionType" Field on "SAASDisbursementProcess" Page
#    And User Click on "BalanceAmount" Button on "SAASDisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Enters "BalanceAmountVal" on "BalanceAmount" Field on "SAASDisbursementProcess" Page
#    And User Click on "BankPayTo" Button on "SAASDisbursementProcess" Page
#    And user wait for 2000 seconds
#    And User Click on "BankPayToValue" Button on "SAASDisbursementProcess" Page
#    And user wait for 3000 seconds
#    And User Click on "DebitSave" Button on "SAASDisbursementProcess" Page
#    And user wait for 3000 seconds
#    And User Click on "BalanceOrderComplete" Button on "SAASDisbursementProcess" Page
#    And User switch to Default from iframe
#    And user wait for 3000 seconds
#    And User Click on "SearchOrder" Button on "SAASDisbursementProcess" Page
#    And user wait for 3000 seconds
#    And User switch to iframe "FrameQuickOrderEntry" on "SAASDisbursementProcess" Page
#    And User Click on "AccountSummary" Button on "SAASDisbursementProcess" Page
#    Then User Assert "AssertValue" on Field "AccountSummaryScreen" on "SAASDisbursementProcess" Page
#    And user wait for 3000 seconds







