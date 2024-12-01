package com.cucumber.StepsDefinitions;

import PageObjectFactory.Structure.CommonANDROIDPageFactory;
import PageObjectFactory.Structure.CommonWEBPageFactory;
import UtilitiesFactory.ElementFactory;
import UtilitiesFactory.ServiceFactory;
import UtilitiesFactory.WaitFactory;
import io.cucumber.java.en.Given;

public class CommonANDROIDStesDefs extends HarnessVariables{

    CommonANDROIDPageFactory commonPage;
    String runPropFile = "run.properties";

    public CommonANDROIDStesDefs() throws Exception {
        commonPage = new CommonANDROIDPageFactory();
    }
    @Given("User Setup Android Application Session")
    public void userSetupAndroidApplicationSession() throws Exception {
        //start appium server
        serviceFactoryInstance.setAndroidDriver();
        deviceName = "ANDROID";
        waitFactory = new WaitFactory(ServiceFactory.getAndroidDriver());
        elementFactory = new ElementFactory(ServiceFactory.getAndroidDriver());
    }
}
