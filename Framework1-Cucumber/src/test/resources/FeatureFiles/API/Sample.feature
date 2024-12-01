Feature: Sample API Integration with BDD Cucumber

#@GET
#Scenario: verify the User List Get Response
#When I send a GET Request to "list User" on "sample Base API"
#And I verify the GET status code "200"
#
#@POST
#Scenario: verify the Create User POST Response
#When I send a POST Request to "mwallet" on "eWallet URL" having request body "Bill Inquiry"
#And I verify the POST status code "401"
#
#@PUT
#Scenario: verify the Update User PUT Response
#When I send a PUT Request to "dummy PUT" on "dummy URL" having request body "Dummy PUT"
#And I verify the PUT status code "200"
#
# @PATCH
#Scenario: verify the Update User PATCH Response
#When I send a PATCH Request to "sample PATCH" on "sample Base API" having request body "Sample PATCH"
#And I verify the PATCH status code "200"
#
#@DELETE
#Scenario: verify the User DELETE Response
#When I send a DELETE Request to "dummy Delete" on "dummy URL"
#And I verify the PATCH status code "200"

# @POST
# Scenario: verify the Create User POST Response
#  When I send a POST Request to "TitleEndPoint" on "TitleBaseURL" having request body "S100TitleFlow" with:
#   | integrator | userId      | password      | ContentType    |
#   | STAT       | TCEATCLOSE  | atclose@1234  | application/xml|

 @POST
 Scenario: verify the Create User POST Response
  When I send a POST Xml Request to "TitleEndPoint" on "TitleBaseURL" having request body "S100TitleFlow" and 200
#  And I Save "OrderNumber" from "/STAT/Transaction/ProviderOrderNbr" from response body in "S100TitleFlow" file
  And I Save "OrderNumber" from "/STAT/Transaction/ProviderOrderNbr" from response body in "Orders" file
#  And I Save "User name" from "/STAT/Header/UserName" from response body in "S100TitleFlow" file

