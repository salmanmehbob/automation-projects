package com.cucumber.StepsDefinitions;

import PageObjectFactory.Structure.CommonDBPageFactory;
import PageObjectFactory.Structure.CommonWEBPageFactory;
import UtilitiesFactory.PropertyLoaderFactory;
import io.cucumber.java.en.When;

public class CommonDBStepDefs extends HarnessVariables{
    CommonDBPageFactory commonPage;
    String DBPropFile = "DB.properties";


    public CommonDBStepDefs() throws Exception {
        commonPage = new CommonDBPageFactory();
        deviceName = "Database";
    }
    @When("User Verify {string} Value as {string} via Executing {string} Query")
    public void userVerifyValueViaExecutingQuery(String columnName,String columnValue, String queryParam) throws Exception {
        serviceFactoryInstance.setDBConnection(new PropertyLoaderFactory().getPropertyFile(DBPropFile).getProperty("DataBaseName"));
        columnName = commonPage.replaceSpaces(columnName);
        columnValue = commonPage.replaceSpaces(columnValue);
        queryParam=commonPage.removeSpaces(queryParam);
        columnName = new PropertyLoaderFactory().getPropertyFile(DBPropFile).getProperty(columnName);
        queryParam = new PropertyLoaderFactory().getPropertyFile(DBPropFile).getProperty(queryParam);
        columnValue = new PropertyLoaderFactory().getPropertyFile(DBPropFile).getProperty(columnValue);
        commonPage.verifyColumnName(queryParam,columnName,columnValue);
    }
}
