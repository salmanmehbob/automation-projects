package EnumFactory.Structure;

public enum AppPrefProductSetup {
    XPATH_Maintenance("//li[@class='ui-datalist-item']//a[text()='Maintenance']"),
    XPATH_SystemSetup("//li[@class='ui-datalist-item']//a[text()='System Setup']"),
    XPATH_AppPreference("//li[@class='ui-datalist-item']//a[text()='Application Preferences']"),
    XPATH_ClientNoTextbox("//input[contains(@id, 'searchClientNumTxt')]"),
    XPATH_ApplicationPreferences("//div[text()='Application Preferences']"),
    XPATH_ClientSearch("//div[@class='ui-panel-content ui-widget-content']//a[text()='Search']"),
    XPATH_MaintenanceProduct("//li[@class='ui-datalist-item']//a[text()='Products']"),
    XPATH_ProductSetup("//li[@class='ui-datalist-item']//a[text()='Setup']"),
    XPATH_ProductCategory("//select[contains(@id, 'productDetails:categoryCodeDDLB')]"),
    XPATH_ProductSearch("//div[@class='ui-panel-content ui-widget-content']//a[text()='Search']"),
    XPATH_SearchResults("//div[text()='Search Results']"),
    XPATH_ProductSearchClick("//tbody[@id='j_idt30:productDetails:resultTable_data']/tr[1]"),
    XPATH_AutomationProduct("//div[text()='PRODUCT > VIEW : Title - Reverse Mortgage']");

    private String pageVariables;

    private AppPrefProductSetup(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}

