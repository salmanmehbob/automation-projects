Feature: OrderClosing Scenarios

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "AtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseLogin" Page
    And User Click on "Login" Button on "AtCloseLogin" Page


  Scenario: User Place an Order
    When User Click on "Orders" Button on "OrderClosing" Page
    And User Click on "QuickOrderEntry" Button on "OrderClosing" Page
    And user wait for 5000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "OrderClosing" Page
    And User Enters "ClientNo2005" on "ClientNo" Field on "OrderClosing" Page
    And user wait for 5000 seconds
    And User Click on "StreetNo" Button on "OrderClosing" Page
    And User Enters "StreetNo897" on "StreetNo" Field on "OrderClosing" Page
    And user wait for 5000 seconds
    And User Enters "StreetAddressNM" on "StreetAddress" Field on "OrderClosing" Page
    And user wait for 3000 seconds
    And User Enters "TransactionNoVal" on "TransactionNo" Field on "OrderClosing" Page
    And user wait for 3000 seconds
    And User Click on "ZipCode" Button on "OrderClosing" Page
    And User Enters "ZipCode08512" on "ZipCode" Field on "OrderClosing" Page
    And user wait for 5000 seconds
    And User Click on "AutomationClosing" Button on "OrderClosing" Page
    And User Click on "AutomationClosing" Button on "OrderClosing" Page
    And user wait for 5000 seconds
    And User Enters "FirstNameAsmodias" on "FirstName" Field on "OrderClosing" Page
    And user wait for 3000 seconds
    And User Enters "LastNameDavid" on "LastName" Field on "OrderClosing" Page
    And User Click on "PlaceOrder" Button on "OrderClosing" Page
    And User Wait for Element "OrderPlaced" to be visible on "OrderClosing" Page
    And User save "OrderNo" from "NewOrderNo" Field which is "clickable" on "OrderClosing" Page
    And User switch to Default from iframe
    And User Enters "OrderNo" on "OrderNoSearch" Field on "OrderClosing" Page
    And user wait for 2000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "OrderClosing" Page
    And User Wait for Element "CompletedOrder" to be visible on "OrderClosing" Page
    And User Click on "Transactions" Button on "OrderClosing" Page
    And User Click on "CloseTitle" Button on "OrderClosing" Page
    And User switch to Default from iframe
    And User switch tab 2
    And user wait for 3000 seconds
    And User Click on "ActionItems" Button on "OrderClosing" Page
    And User Click on "LaunchWorkFlow" Button on "OrderClosing" Page
    And User Click on "Scheduling" Button on "OrderClosing" Page
    And User Click on "SchedulePopup" Button on "OrderClosing" Page
    And User close tab and switch to 1
    And user wait for 2000 seconds
    And User Click on "OrderInbox" Button on "OrderClosing" Page
    And user wait for 2000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "OrderClosing" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "OrderClosing" Page
    And User Click on "CloseVendor" Button on "OrderClosing" Page
    And User Wait for Element "OrderProduct" to be visible on "OrderClosing" Page
    And User Click on "CloseEdit" Button on "OrderClosing" Page
    And User Wait for Element "OrderProduct" to be visible on "OrderClosing" Page
    And User Click on "ClosingCheck" Button on "OrderClosing" Page
    And user wait for 2000 seconds
    And User Click on "ClosingAssign" Button on "OrderClosing" Page
    And User Wait for Element "AssignLabel" to be visible on "OrderClosing" Page
    And User Click on "ClosingComplete" Button on "OrderClosing" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "OrderClosing" Page
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "OrderClosing" Page
    And user wait for 2000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "OrderClosing" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "OrderClosing" Page
    And User Click on "SendDocs" Button on "OrderClosing" Page
    And User Wait for Element "OrderProduct" to be visible on "OrderClosing" Page
    And User Click on "SendDocsComplete" Button on "OrderClosing" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "OrderClosing" Page
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "OrderClosing" Page
    And user wait for 2000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "OrderClosing" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "OrderClosing" Page
    And User Click on "SigningConfirmation" Button on "OrderClosing" Page
    And User Wait for Element "OrderProduct" to be visible on "OrderClosing" Page
    And User Enters "SigningDateValue" on "SigningDate" Field on "OrderClosing" Page
    And User Click on "SigningConfirm" Button on "OrderClosing" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "OrderClosing" Page
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "OrderClosing" Page
    And user wait for 2000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "OrderClosing" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "OrderClosing" Page
    And User Click on "BalanceOrder" Button on "OrderClosing" Page
    And User Wait for Element "OrderProduct" to be visible on "OrderClosing" Page
    And User save "DebitPayableAmt" from "DebitPayable" Field which is "clickable" on "OrderClosing" Page
    And User switch to Default from iframe
    And User Click on "SearchOrder" Button on "OrderClosing" Page
    And user wait for 2000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "OrderClosing" Page
    And User Click on "AccountSummary" Button on "OrderClosing" Page
    And User Click on "AddDeposit" Button on "OrderClosing" Page
    And User Click on "AccountNo" Button on "OrderClosing" Page
    And user wait for 2000 seconds
    And User Click on "AccountNoValue" Button on "OrderClosing" Page
    And User Enters "DebitPayableAmt" on "BalanceAmt" Field on "OrderClosing" Page
    And User Enters "BalanceTextValue" on "BalanceText" Field on "OrderClosing" Page
    And User Click on "BalanceSave" Button on "OrderClosing" Page
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "OrderClosing" Page
    And user wait for 2000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "OrderClosing" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "OrderClosing" Page
    And User Click on "BalanceOrder" Button on "OrderClosing" Page
    And User Wait for Element "OrderProduct" to be visible on "OrderClosing" Page
    And User Click on "BalanceOrderComplete" Button on "OrderClosing" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "OrderClosing" Page
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "OrderClosing" Page
    And user wait for 2000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "OrderClosing" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "OrderClosing" Page
    And User Click on "PrintCheck" Button on "OrderClosing" Page
    And User Wait for Element "OrderProduct" to be visible on "OrderClosing" Page
    And User Click on "PrintCheckComplete" Button on "OrderClosing" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "OrderClosing" Page
    And User switch to Default from iframe
    And User Click on "SearchOrder" Button on "OrderClosing" Page
    And User switch to iframe "FrameQuickOrderEntry" on "OrderClosing" Page
    And User Wait for Element "CompletedOrder" to be visible on "OrderClosing" Page
    Then User Validates "AtCloseTitle" Title














