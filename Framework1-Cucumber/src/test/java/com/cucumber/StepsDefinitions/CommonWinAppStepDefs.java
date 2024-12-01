package com.cucumber.StepsDefinitions;

import PageObjectFactory.Structure.CommonWinAppPageFactory;
import UtilitiesFactory.ElementFactory;
import UtilitiesFactory.ServiceFactory;
import UtilitiesFactory.WaitFactory;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

public class CommonWinAppStepDefs extends HarnessVariables{

    CommonWinAppPageFactory commonPage;
    String runPropFile = "run.properties";

    public CommonWinAppStepDefs() throws Exception {
        commonPage = new CommonWinAppPageFactory();
    }

    @Given("User Setup Windows Application Session")
    public void userSetupWindowsApplicationSession() throws Exception{
        serviceFactoryInstance.setWinAppDriver();
        deviceName = "WINDOWS";
        System.out.println("Initilize App Driver is: "+ServiceFactory.getWinDriver());
        waitFactory = new WaitFactory(ServiceFactory.getWinDriver());
        elementFactory = new ElementFactory(ServiceFactory.getWinDriver());
    }


}
