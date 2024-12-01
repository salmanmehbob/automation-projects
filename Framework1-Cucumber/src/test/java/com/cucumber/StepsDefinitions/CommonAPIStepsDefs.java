package com.cucumber.StepsDefinitions;

import PageObjectFactory.Structure.CommonWEBPageFactory;
import UtilitiesFactory.API.POST;
import UtilitiesFactory.PropertyLoaderFactory;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.messages.Messages;

import java.util.Map;

import static UtilitiesFactory.API.DELETE.DELETERequest;
import static UtilitiesFactory.API.DELETE.DELETEStatusCode;
import static UtilitiesFactory.API.GET.GETRequest;
import static UtilitiesFactory.API.GET.getStatusCode;
import static UtilitiesFactory.API.PATCH.PATCHRequest;
import static UtilitiesFactory.API.PATCH.PATCHStatusCode;
import static UtilitiesFactory.API.POST.*;
import static UtilitiesFactory.API.PUT.PUTRequest;
import static UtilitiesFactory.API.PUT.PUTStatusCode;

public class CommonAPIStepsDefs extends HarnessVariables {
    CommonWEBPageFactory WebcommonPage;
    String runPropFile = "run.properties";
    String endPointProp ="API.properties";
    public  CommonAPIStepsDefs() throws Exception {
        WebcommonPage = new CommonWEBPageFactory();
        deviceName = "API";
    }
    @And("I send a GET Request to {string} on {string}")
    public void userSendGETRequest(String endPoint , String baseURL) throws Exception {
        try{
            baseURL = WebcommonPage.getpropertyName(baseURL);
            baseURL = new PropertyLoaderFactory().getPropertyFile(runPropFile).getProperty(baseURL);
            endPoint = WebcommonPage.removeSpaces(endPoint);
            String url = baseURL+new PropertyLoaderFactory().getPropertyFile(endPointProp).getProperty(endPoint);
            GETRequest(url);
        }catch (Exception e){
            throw new Exception(e);
        }
    }
    @And("I verify the GET status code {string}")
    public void userVerifyGETStatusCode(String statusCode) throws Exception{
        try {
            getStatusCode(statusCode);
        } catch (Exception e) {
            throw new Exception(e);
        }
    }


    @And("^I send a POST Xml Request to \"(.*)\" on \"(.*)\" having request body \"(.*)\" and (\\d+) with following parameters and headers:$")
    public void userSendPOSTRequest(String endPoint , String baseURL , String requestBody, int expectedStatusCode,DataTable data) throws Exception {
        try{
            baseURL = WebcommonPage.getpropertyName(baseURL);
            requestBody = WebcommonPage.removeSpaces(requestBody);
            baseURL = new PropertyLoaderFactory().getPropertyFile(runPropFile).getProperty(baseURL);
            endPoint = WebcommonPage.removeSpaces(endPoint);
            endPoint = new PropertyLoaderFactory().getPropertyFile(endPointProp).getProperty(endPoint);

            Map<String, Map<String, String>> result = WebcommonPage.parseDataTable(data, "queryParams", "headers");
            Map<String, String> queryParams = result.get("queryParams");
            Map<String, String> headers = result.get("headers");

            POSTRequestXml(baseURL,endPoint,requestBody,expectedStatusCode,queryParams,headers);
        }
        catch (Exception e){
            throw new Exception(e);
        }
    }

    @And("I Save {string} from {string} from response body in {string} file")
    public void userSavePOSTXmlResponseElement(String elementName, String pathForElement,
                                               String filePathForSavingData) throws Exception {

        String responseData = POST.extractValueFromXml(POST.responseBody, pathForElement);

        System.out.println(elementName+": " + responseData);
        elementName = CommonWEBPageFactory.getpropertyName(elementName);
        filePathForSavingData = CommonWEBPageFactory.removeSpaces(filePathForSavingData);
        CommonWEBPageFactory.extractDataAndSaveInFile(elementName, responseData, "src/test/resources/Properties/TestData/"+filePathForSavingData+".properties");
    }


    @And("I verify the POST status code {string}")
    public void userVerifyPOSTStatusCode(String statusCode) throws Exception{
        try {
            POSTStatusCode(statusCode);
        } catch (Exception e) {
            throw new Exception(e);
        }
    }
    @And("I send a PUT Request to {string} on {string} having request body {string}")
    public void userSendPUTRequest(String endPoint , String baseURL , String requestBody) throws Exception {
        try{
            baseURL = WebcommonPage.getpropertyName(baseURL);
            requestBody = WebcommonPage.removeSpaces(requestBody);
            baseURL = new PropertyLoaderFactory().getPropertyFile(runPropFile).getProperty(baseURL);
            endPoint = WebcommonPage.removeSpaces(endPoint);
            endPoint = new PropertyLoaderFactory().getPropertyFile(endPointProp).getProperty(endPoint);
            PUTRequest(baseURL,endPoint,requestBody);
        }catch (Exception e){
            throw new Exception(e);
        }
    }

    @And("I verify the PUT status code {string}")
    public void userVerifyPUTStatusCode(String statusCode) throws Exception{
        try {
            PUTStatusCode(statusCode);
        } catch (Exception e) {
            throw new Exception(e);
        }
    }

    @And("I send a PATCH Request to {string} on {string} having request body {string}")
    public void userSendPATCHRequest(String endPoint , String baseURL , String requestBody) throws Exception {
        try{
            baseURL = WebcommonPage.getpropertyName(baseURL);
            requestBody = WebcommonPage.removeSpaces(requestBody);
            baseURL = new PropertyLoaderFactory().getPropertyFile(runPropFile).getProperty(baseURL);
            endPoint = WebcommonPage.removeSpaces(endPoint);
            endPoint = new PropertyLoaderFactory().getPropertyFile(endPointProp).getProperty(endPoint);
            PATCHRequest(baseURL,endPoint,requestBody);
        }catch (Exception e){
            throw new Exception(e);
        }
    }

    @And("I verify the PATCH status code {string}")
    public void userVerifyPATCHStatusCode(String statusCode) throws Exception{
        try {
            PATCHStatusCode(statusCode);
        } catch (Exception e) {
            throw new Exception(e);
        }
    }

    @And("I send a DELETE Request to {string} on {string}")
    public void userSendDELETERequest(String endPoint , String baseURL) throws Exception {
        try{
            baseURL = WebcommonPage.getpropertyName(baseURL);
            baseURL = new PropertyLoaderFactory().getPropertyFile(runPropFile).getProperty(baseURL);
            endPoint = WebcommonPage.removeSpaces(endPoint);
            String url = baseURL+new PropertyLoaderFactory().getPropertyFile(endPointProp).getProperty(endPoint);
            DELETERequest(url);
        }catch (Exception e){
            throw new Exception(e);
        }
    }

    @And("I verify the DELETE status code {string}")
    public void userVerifyDELETEStatusCode(String statusCode) throws Exception{
        try {
            System.out.println("I am here status code !!!!!!!!!!");
            DELETEStatusCode(statusCode);
        } catch (Exception e) {
            throw new Exception(e);
        }
    }

    @And("I Update Value on {string} path of request body {string} with {string} from {string} Test Data")
    public void userUpdateRequestXmlBodyElement(String elementPath, String apiBody, String testData, String testDataPageName) throws Exception {

        testDataPageName = WebcommonPage.removeSpaces(testDataPageName);
        testData = WebcommonPage.getpropertyName(testData);

        testData = new PropertyLoaderFactory().getTestDataPropertyFile(testDataPageName+".properties").getProperty(testData);
        System.out.println(testData);
        POST.updateValueInXmlRequestFile(testData, elementPath, apiBody);
    }
}
