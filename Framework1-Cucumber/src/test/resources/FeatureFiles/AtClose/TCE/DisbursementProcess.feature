Feature: DisbursementProcess

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "AtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseLogin" Page
    And User Click on "Login" Button on "AtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title


  Scenario: User Place an Order
#    When User Click on "Orders" Button on "Orders" Page
#    And User Click on "QuickOrderEntry" Button on "Orders" Page
#    And user wait for 5000 seconds
#    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
#    And User Enters "ClientNo2005" on "ClientNo" Field on "Orders" Page
#    And user wait for 5000 seconds
#    And User Click on "StreetNo" Button on "Orders" Page
#    And User Enters "StreetNo897" on "StreetNo" Field on "Orders" Page
#    And user wait for 5000 seconds
#    And User Enters "StreetAddressNM" on "StreetAddress" Field on "Orders" Page
#    And user wait for 3000 seconds
#    And User Enters "TransactionNoVal" on "TransactionNo" Field on "Orders" Page
#    And user wait for 3000 seconds
#    And User Click on "ZipCode" Button on "Orders" Page
#    And User Enters "ZipCode08512" on "ZipCode" Field on "Orders" Page
#    And user wait for 5000 seconds
#    And User Click on "AutomationClosing" Button on "OrderClosing" Page
#    And User Click on "AutomationClosing" Button on "OrderClosing" Page
#    And user wait for 5000 seconds
#    And User Enters "FirstNameAsmodias" on "FirstName" Field on "Orders" Page
#    And user wait for 3000 seconds
#    And User Enters "LastNameDavid" on "LastName" Field on "Orders" Page
#    And User Click on "PlaceOrder" Button on "Orders" Page
#    And User Wait for Element "OrderConfirmation" to be visible on "DisbursementProcess" Page
#    And User save "OrderNo" from "NewOrderNo" Field which is "clickable" on "Orders" Page
#    And User switch to Default from iframe
    #New
    And User Enters "OrderNo" on "OrderNoSearch" Field on "Orders" Page
    And User Click on "OrderSearch" Button on "Orders" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "Transactions" Button on "TitleEntry" Page
    And User Click on "CloseTitle" Button on "OrderClosing" Page
    And User switch to Default from iframe
    And User switch tab 2
    And user wait for 3000 seconds
    And User Click on "ActionItems" Button on "OrderClosing" Page
    And User Click on "LaunchWorkFlow" Button on "OrderClosing" Page
    And User Click on "Disbursement" Button on "DisbursementProcess" Page
    And User Wait for Element "AssertDisburse" to be visible on "DisbursementProcess" Page
    And User close tab and switch to 1
    And user wait for 3000 seconds
    And User Click on "OrderInbox" Button on "Orders" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "BalanceOrder" Button on "OrderClosing" Page
    And User Wait for Element "BalancePage" to be visible on "DisbursementProcess" Page
    And User switch to Default from iframe
    And user wait for 3000 seconds
    And User Click on "OrderSearch" Button on "Orders" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "AccountSummary" Button on "OrderClosing" Page
    And User Wait for Element "AccSummary" to be visible on "DisbursementProcess" Page
    And User Click on "AddDeposit" Button on "OrderClosing" Page
    And User Click on "AccountNo" Button on "OrderClosing" Page
    And user wait for 2000 seconds
    And User Click on "AccountNoValue" Button on "OrderClosing" Page
    And User Enters "BalanceVal" on "BalanceAmt" Field on "DisbursementProcess" Page
    And User Enters "BalanceTextValue" on "BalanceText" Field on "OrderClosing" Page
    And User Click on "BalanceSave" Button on "OrderClosing" Page
    And User switch to Default from iframe
    And user wait for 3000 seconds
    And User Click on "OrderInbox" Button on "Orders" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "BalanceOrder" Button on "OrderClosing" Page
    And user wait for 2000 seconds
    #check
    And User Click on "AddDebit" Button on "DisbursementProcess" Page
    And User Click on "BankAccountNo" Button on "DisbursementProcess" Page
    And user wait for 2000 seconds
    And User Click on "BankAccountNoValue" Button on "DisbursementProcess" Page
    And User Select "TransactionTypeVal1" on "TransactionType" Field on "DisbursementProcess" Page
    And User Click on "BalanceAmount" Button on "DisbursementProcess" Page
    And user wait for 2000 seconds
    And User Enters "BalanceAmountVal" on "BalanceAmount" Field on "DisbursementProcess" Page
    And User Click on "BankPayTo" Button on "DisbursementProcess" Page
    And user wait for 2000 seconds
    And User Click on "BankPayToValue" Button on "DisbursementProcess" Page
    And user wait for 3000 seconds
    And User Click on "DebitSave" Button on "DisbursementProcess" Page
    And user wait for 2000 seconds
    #Company Fee
    And User Click on "AddDebit" Button on "DisbursementProcess" Page
    And User Click on "BankAccountNo" Button on "DisbursementProcess" Page
    And user wait for 2000 seconds
    And User Click on "BankAccountNoValue" Button on "DisbursementProcess" Page
    And User Select "TransactionTypeVal2" on "TransactionType" Field on "DisbursementProcess" Page
    And User Click on "BalanceAmount" Button on "DisbursementProcess" Page
    And user wait for 2000 seconds
    And User Enters "BalanceAmountVal" on "BalanceAmount" Field on "DisbursementProcess" Page
    And User Click on "BankPayTo" Button on "DisbursementProcess" Page
    And user wait for 2000 seconds
    And User Click on "BankPayToValue" Button on "DisbursementProcess" Page
    And user wait for 3000 seconds
    And User Click on "DebitSave" Button on "DisbursementProcess" Page
    And user wait for 2000 seconds
    #Wire - Out
    And User Click on "AddDebit" Button on "DisbursementProcess" Page
    And User Click on "BankAccountNo" Button on "DisbursementProcess" Page
    And user wait for 2000 seconds
    And User Click on "BankAccountNoValue" Button on "DisbursementProcess" Page
    And User Select "TransactionTypeVal3" on "TransactionType" Field on "DisbursementProcess" Page
    And User Click on "BalanceAmount" Button on "DisbursementProcess" Page
    And user wait for 2000 seconds
    And User Enters "BalanceAmountVal" on "BalanceAmount" Field on "DisbursementProcess" Page
    And User Click on "BankPayTo" Button on "DisbursementProcess" Page
    And user wait for 2000 seconds
    And User Click on "BankPayToValue" Button on "DisbursementProcess" Page
    And user wait for 3000 seconds
    And User Click on "DebitSave" Button on "DisbursementProcess" Page
    And user wait for 3000 seconds
    And User Click on "BalanceOrderComplete" Button on "DisbursementProcess" Page
    And User switch to Default from iframe
    And user wait for 3000 seconds
    And User Click on "OrderSearch" Button on "Orders" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "AccountSummary" Button on "OrderClosing" Page
    Then User Assert "AssertValue" on Field "AccountSummaryScreen" on "DisbursementProcess" Page
    And user wait for 3000 seconds







