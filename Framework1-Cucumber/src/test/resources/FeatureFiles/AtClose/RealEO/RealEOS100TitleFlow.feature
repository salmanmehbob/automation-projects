Feature: S100TitleFlow

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "AtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseLogin" Page
    And User Click on "Login" Button on "AtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title


  Scenario: S100TitleFlow - User Place an Order
    #API
    And I Generate 5 Random int and Save "-JAZ-2023" on "TransactionID" in "S100TitleFlow" Test Data
    And I Generate 5 Random int and Save " Amhurst" on "Address" in "S100TitleFlow" Test Data
    And I Update Value on "/STAT/Transaction/TransactionID" path of request body "S100TitleFlow" with "TransactionID" from "S100TitleFlow" Test Data
    And I Update Value on "/STAT/Transaction/PropertyList/Property/Addr1" path of request body "S100TitleFlow" with "Address" from "S100TitleFlow" Test Data
    And I send a POST Xml Request to "TitleEndPoint" on "TitleBaseURL" having request body "S100TitleFlow" and 200 with following parameters and headers:
      | queryParams           | headers                      |
      | integrator=STAT       | Content-Type=application/xml |
      | userId=TCEATCLOSE     |                              |
      | password=atclose@1234 |                              |
    And I Save "OrderNumber" from "/STAT/Transaction/ProviderOrderNbr" from response body in "S100TitleFlow" file
    And User Enters "OrderNumber" on "OrderSearch" Field on "S100TitleFlow" Page
    And User Click on "OrderInbox" Button on "S100TitleFlow" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "S100TitleFlow" Page
    And User Click on "SelectVendor" Button on "Orders" Page
    And User Wait for Element "OrderProduct" to be visible on "S100TitleFlow" Page
    And User Click on "CompleteTask" Button on "Orders" Page
    And User switch to Default from iframe
    And user wait for 1000 seconds
    And User Click on "OrderInbox" Button on "Orders" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "S100TitleFlow" Page
    And User Click on "ReceiveAssignment" Button on "S100TitleFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "S100TitleFlow" Page
    And User Click on "Edit" Button on "Orders" Page
    And user wait for 3000 seconds
    And User Click on "VerifyDropdown" Button on "Orders" Page
    And User Click on "VerifyValue" Button on "Orders" Page
    And User Click on "CompleteReceive" Button on "Orders" Page
    And User switch to Default from iframe
    And user wait for 1000 seconds
    And User Click on "OrderInbox" Button on "Orders" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "S100TitleFlow" Page
    And User Click on "TypeProduct" Button on "Orders" Page
    And User Wait for Element "OrderProduct" to be visible on "S100TitleFlow" Page
    And User Click on "CompleteTypeProduct" Button on "Orders" Page
    And User switch to Default from iframe
    And user wait for 1000 seconds
    And User Click on "OrderInbox" Button on "Orders" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "S100TitleFlow" Page
    And User Click on "QCProduct" Button on "Orders" Page
    And User Wait for Element "OrderProduct" to be visible on "S100TitleFlow" Page
    And User Click on "QCSuccess" Button on "Orders" Page
    And User Click on "QCPopup" Button on "Orders" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "S100TitleFlow" Page
    And User switch to Default from iframe
    And User Click on "OrderSearch" Button on "Orders" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Wait for Element "CompletedOrder" to be visible on "S100TitleFlow" Page
    And User Click on "OrderShared" Button on "S100TitleFlow" Page
    And User Wait for Element "CompletedOrder" to be visible on "S100TitleFlow" Page
    And User Click on "EventLogS150" Button on "S100TitleFlow" Page
    And User Wait for Element "CompletedOrder" to be visible on "S100TitleFlow" Page
    Then User Validates "AtCloseTitle" Title