package com.cucumber.StepsDefinitions;

import PageObjectFactory.Structure.CommonWEBPageFactory;
import UtilitiesFactory.*;
import com.aventstack.extentreports.MediaEntityBuilder;
import com.aventstack.extentreports.Status;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Keys;

public class CommonWEBStepsDefs extends HarnessVariables {

    CommonWEBPageFactory commonPage;
    String runPropFile = "run.properties";

    public CommonWEBStepsDefs() throws Exception {
        commonPage = new CommonWEBPageFactory();
    }

    @Given("User Setup Web Browser Session")
    public void userSetupWebBrowserSession() throws Exception {
        serviceFactoryInstance.setDriver(serviceFactoryInstance.getBrowser());
        deviceName = "WEB";
        waitFactory = new WaitFactory(ServiceFactory.getDriver());
        elementFactory = new ElementFactory(ServiceFactory.getDriver());
    }

    @Then("User Navigates to {string} URL")
    public void userNavigatesToURL(String url) throws Exception {
        url = commonPage.getpropertyName(url);
        url = new PropertyLoaderFactory().getPropertyFile(runPropFile).getProperty(url);
        ServiceFactory.getDriver().get(url);
        ServiceFactory.currentHandle=ServiceFactory.getDriver().getWindowHandle();
    }

    @Then("User Validates {string} Title")
    public void userValidatesTitle(String expectedTitle) throws Exception {
        expectedTitle = commonPage.getpropertyName(expectedTitle);
        expectedTitle = new PropertyLoaderFactory().getPropertyFile(runPropFile).getProperty(expectedTitle);
        String actualTitle = ServiceFactory.getDriver().getTitle();
        Assert.assertEquals(expectedTitle,actualTitle);
        Thread.sleep(10000);

    }
    @When("User Enters {string} on {string} Field on {string} Page")
    public void     user_enters_on_field_on_page(String testData, String locator, String screenName) throws Exception{
        screenName = commonPage.removeSpaces(screenName);
        testData = commonPage.removeSpaces(testData);
        locator=commonPage.removeSpaces(locator);
        locator = new PropertyLoaderFactory().getLocatorPropertyFile(screenName+".properties").getProperty(locator);
        testData = new PropertyLoaderFactory().getTestDataPropertyFile(screenName+".properties").getProperty(testData);
        commonPage.textEnterField(testData,locator,screenName);

}

    @And("User Click on {string} Button on {string} Page")
    public void userClickOnButtonOnPage(String locator, String screenName) throws Exception{
        screenName = commonPage.removeSpaces(screenName);
        locator=commonPage.removeSpaces(locator);
        locator=commonPage.getpropertyName(locator);
        locator = new PropertyLoaderFactory().getLocatorPropertyFile(screenName+".properties").getProperty(locator);

        commonPage.clickButton(locator,screenName);
        System.out.println("CheckButton");
    }

    @And("User SimpleClick on {string} Button on {string} Page")
    public void userSimpleClickOnButtonOnPage(String locator, String screenName) throws Exception{
        screenName = commonPage.removeSpaces(screenName);
        locator=commonPage.removeSpaces(locator);
        locator=commonPage.getpropertyName(locator);
        locator = new PropertyLoaderFactory().getLocatorPropertyFile(screenName+".properties").getProperty(locator);

        commonPage.clickButtonSimple(locator,screenName);
    }

    @Then("User Validates {string} of {string} On {string} Page")
    public void userValidatesOfOnPage(String testData, String locator, String screenName) throws Exception {
        screenName = commonPage.removeSpaces(screenName);
        testData = commonPage.removeSpaces(testData);
        locator = commonPage.removeSpaces(locator);
        testData = new PropertyLoaderFactory().getTestDataPropertyFile(screenName+".properties").getProperty(testData);
        locator = new PropertyLoaderFactory().getLocatorPropertyFile(screenName+".properties").getProperty(locator);
        commonPage.validateDynamicString(testData,locator ,screenName);

    }
    @Then("User Validates {string} Element Not Displayed on {string} Page")
    public void userValidatesElementNotDisplayedOnPage(String locator, String screenName) throws Exception {
        screenName = commonPage.removeSpaces(screenName);
        locator = new PropertyLoaderFactory().getLocatorPropertyFile(screenName+".properties").getProperty(locator);
        commonPage.checkElementVisibility(locator,screenName,true);
    }

    @Then("User Validates attribute {string} of an Element {string} on {string} Page")
    public void userValidatesAttributeOfAnElementOnPage(String attribute, String locator, String screenName) throws Exception {
        screenName = commonPage.removeSpaces(screenName);
        attribute = commonPage.removeSpaces(attribute);
        locator = commonPage.removeSpaces(locator);
        String attributeValue = new PropertyLoaderFactory().getTestDataPropertyFile(screenName+".properties").getProperty(attribute);
        locator = new PropertyLoaderFactory().getLocatorPropertyFile(screenName+".properties").getProperty(locator);
        commonPage.validateAttributeValue(attribute,attributeValue,locator ,screenName);
    }

    @When("user click on {string} on page {string}")
    public void userClickOnOnPage(String element, String page) {


    }
    @And("user wait for {int} seconds")
    public void userWaitOnPage(int seconds) throws InterruptedException {
        Thread.sleep(seconds);

    }


    @Then("user assert {string} with {string} on page {string}")
    public void userAssertWithOnPage(String expText, String element, String page) {
        
    }

    @And("user enter {string} on {string} on page {string}")
    public void userEnterOnOnPage(String text, String element, String page) {
        
    }

    @Then("{string} is displayed on page {string} for {string}")
    public void isDisplayedOnPageFor(String message, String page, String locator) {
    }

    @And ("User Tab {int} Times")
    public void UserTab(int Value) throws Exception {

        for (int i = 0; i<=Value; i++) {
            Thread.sleep(5000);
            commonPage.PressTabButton();
        }

    }


    @When("AtCloseUser clicks on {string} and Enters {string} on {string} Page")
    public void atcloseuserClicksOnAndEntersOnFieldOnPage(String locator, String testData, String screenName) throws Exception{
        screenName = commonPage.removeSpaces(screenName);
        testData = commonPage.removeSpaces(testData);
        locator=commonPage.removeSpaces(locator);
        locator = new PropertyLoaderFactory().getLocatorPropertyFile(screenName+".properties").getProperty(locator);
        testData = new PropertyLoaderFactory().getTestDataPropertyFile(screenName+".properties").getProperty(testData);
        commonPage.clickButton(locator,screenName);
        commonPage.textEnterField(testData,locator,screenName);
        commonPage.PressTabButton();
    }

    @Then("User save {string} from {string} Field which is {string} on {string} Page")
    public void extractAndSaveText(String keyForSavingData, String locator,String state,String screenName) throws Exception {
        screenName = commonPage.removeSpaces(screenName);
        locator = commonPage.removeSpaces(locator);
        locator=commonPage.getpropertyName(locator);
        keyForSavingData = commonPage.getpropertyName(keyForSavingData);

        locator = new PropertyLoaderFactory().getLocatorPropertyFile(screenName+".properties").getProperty(locator);
        String extractedValueFromWeb = "";
        extractedValueFromWeb = commonPage.getElementValue(locator, screenName, extractedValueFromWeb,state);
        commonPage.extractDataAndSaveInFile(keyForSavingData, extractedValueFromWeb,
                "src/test/resources/Properties/TestData/"+screenName+".properties");
    }



    @And("User switch to iframe {string} on {string} Page")
    public void switchToIframe(String locator, String screenName) throws Exception {
        screenName = commonPage.removeSpaces(screenName);
        locator=commonPage.removeSpaces(locator);
        locator = new PropertyLoaderFactory().getLocatorPropertyFile(screenName+".properties").getProperty(locator);
        WaitFactory.staticWait(1500);
        commonPage.switchToIframe(locator,screenName);
        WaitFactory.staticWait(1500);
    }

    @And("User perform scroll {string} to value {string} on {string} Page")
    public void performScrollToSpecificIndex(String locator,String value,String screenName) throws Exception {
        screenName = commonPage.removeSpaces(screenName);
        locator=commonPage.removeSpaces(locator);
        locator = new PropertyLoaderFactory().getLocatorPropertyFile(screenName+".properties").getProperty(locator);
        commonPage.scrollToIndex(locator,value,screenName);
    }

    @And ("User switch tab {int}")
    public void Userswitchtab(int tabNo){
        commonPage.switchTab(tabNo);
    }

    @And ("User close tab and switch to {int}")
    public void Userclosetabandswitch(int TabNo){
        commonPage.TabClose(TabNo);
    }

    @And("User switch to Default from iframe")
    public void switchToDefault() {
        WaitFactory.staticWait(1500);
        commonPage.switchDefault();
        WaitFactory.staticWait(1500);

    }

    @And("User Select {string} on {string} Field on {string} Page")
    public void dropdownSelectByText(String testData, String locator, String screenName) throws Exception {
        screenName = commonPage.removeSpaces(screenName);
        testData = commonPage.removeSpaces(testData);
        locator=commonPage.removeSpaces(locator);
        locator = new PropertyLoaderFactory().getLocatorPropertyFile(screenName+".properties").getProperty(locator);
        testData = new PropertyLoaderFactory().getTestDataPropertyFile(screenName+".properties").getProperty(testData);
        commonPage.dropdownSelectionByText(testData,locator,screenName);
    }

    @And("User Scroll to {string} on {string} Page")
    public void performScrollToSpecificIndex(String locator,String screenName) throws Exception {
        screenName = commonPage.removeSpaces(screenName);
        locator=commonPage.removeSpaces(locator);
        locator = new PropertyLoaderFactory().getLocatorPropertyFile(screenName+".properties").getProperty(locator);
        commonPage.scrollToElement(locator,screenName);
    }

    @And("User Upload {string} on {string} Field on {string} Page")
    public void selectFileButton(String filename,String locator,String locatorPageName) throws Exception{
        locatorPageName = commonPage.removeSpaces(locatorPageName);
        locator = commonPage.getpropertyName(locator);
        locator = new PropertyLoaderFactory().getLocatorPropertyFile(locatorPageName + ".properties").getProperty(locator);
        commonPage.clickButton(locator,locatorPageName);
        Thread.sleep(3000);
        commonPage.uploadDocument(filename);

    }

    @When("User Clicks on {string} button on AlertBox")
    public void userClicksOnButtonOnAlertBox(String arg0) throws Exception {
        commonPage.Alertbox(arg0);
        System.out.println("AlertCheck");
    }

    @Then("User Validate {string} contains in {string} attribute on Field {string} Appeared on {string} Page")
    public void userValidateValueAppearedOnPage(String testData, String attribute, String locator, String screenName) throws Exception {
        screenName = commonPage.removeSpaces(screenName);
        locator = commonPage.getpropertyName(locator);
        testData = commonPage.getpropertyName(testData);
        testData = new PropertyLoaderFactory().getTestDataPropertyFile(screenName + ".properties").getProperty(testData);
        locator = new PropertyLoaderFactory().getLocatorPropertyFile(screenName + ".properties").getProperty(locator);
        commonPage.validateValueAttributeScreen(attribute, testData, locator, screenName);
    }

    @Then("User Wait for Element {string} to be visible on {string} Page")
    public void waitForElementVisibility(String locator, String screenName) throws Exception {
        screenName = commonPage.removeSpaces(screenName);
        locator = commonPage.getpropertyName(locator);
        locator = new PropertyLoaderFactory().getLocatorPropertyFile(screenName + ".properties").getProperty(locator);
        try {
            commonPage.waitForElementWithRetry(locator, screenName);
            scenarioDef.log(Status.PASS,getLocatorNameforLog(locator) + " is visible on " + screenName + " Page.",
                    MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
        }
        catch (Exception e) {
            failureException = e.toString();
            scenarioDef.log(Status.FAIL,getLocatorNameforLog(locator) + " is not visible on " + screenName + " Page.",
                    MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());

        }

    }

    @Then("User Assert {string} on Field {string} on {string} Page")
    public void Asserttext(String testdata,String locator, String screenName) throws Exception {
        screenName = commonPage.removeSpaces(screenName);
        locator = commonPage.getpropertyName(locator);
        locator = new PropertyLoaderFactory().getLocatorPropertyFile(screenName + ".properties").getProperty(locator);
        testdata = commonPage.getpropertyName(testdata);
        testdata = new PropertyLoaderFactory().getTestDataPropertyFile(screenName + ".properties").getProperty(testdata);
        commonPage.validateFieldonScreen(testdata, locator, screenName);
    }


    @Then("User Download File: {string} with Robot Class")
    public void simpleDownloadFile(String filename) throws Exception {
        commonPage.downloadFile(filename);
    }

    @Then("User Assert {string} text from {string} file")
    public void pdfFileAssertion(String ExpectedText, String filename) throws Exception {
        commonPage.assertTextInPDFFile(filename,ExpectedText);
    }

    @And("I Generate {int} Random int and Save {string} on {string} in {string} Test Data")
    public void userUpdateRequestXmlBodyElement( int numberOfIntegarGeneration, String valueSave, String keyToUpdate, String testDataPageName) throws Exception {
        testDataPageName = commonPage.removeSpaces(testDataPageName);
        keyToUpdate = commonPage.getpropertyName(keyToUpdate);
        valueSave = (commonPage.generateRandomNumberAccToLen(numberOfIntegarGeneration)) + valueSave;
        commonPage.extractDataAndSaveInFile(keyToUpdate, valueSave, "src/test/resources/Properties/TestData/"+testDataPageName+".properties");
    }

    @Then("User Save {string} from {string} having {string} Field on {string} Page")
    public void extractAndSaveAttributeValue(String keyForSavingData, String locator,String attributeName,String screenName) throws Exception {
        screenName = commonPage.removeSpaces(screenName);
        locator = commonPage.removeSpaces(locator);
        locator=commonPage.getpropertyName(locator);
        keyForSavingData = commonPage.getpropertyName(keyForSavingData);
        locator = new PropertyLoaderFactory().getLocatorPropertyFile(screenName+".properties").getProperty(locator);
        String extractedAttributeValueFromWeb = "";
        extractedAttributeValueFromWeb = commonPage.getAttributeValue(locator,attributeName, screenName);
        commonPage.extractDataAndSaveInFile(keyForSavingData, extractedAttributeValueFromWeb,
                "src/test/resources/Properties/TestData/"+screenName+".properties");
    }

    @And("User Split text {string} by {string} having {int} and save {string} Field on {string} Page")
        public void splitAndSaveValue(String value,String numericValue, int index,String keyForSavingData,String screenName) throws Exception {
        screenName = commonPage.removeSpaces(screenName);
        keyForSavingData = commonPage.getpropertyName(keyForSavingData);
        String testData = new PropertyLoaderFactory().getTestDataPropertyFile(screenName+".properties").getProperty(value);
        String valueAfterSplit = commonPage.splitNumericValue(testData,numericValue,index);
        commonPage.extractDataAndSaveInFile(keyForSavingData, valueAfterSplit,
                "src/test/resources/Properties/TestData/"+screenName+".properties");

    }

}
