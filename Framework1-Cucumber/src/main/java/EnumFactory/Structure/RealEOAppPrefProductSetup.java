package EnumFactory.Structure;

public enum RealEOAppPrefProductSetup {
    XPATH_Maintenance("//a[@id='navigation:j_idt91:j_idt93:5:j_idt94']"),
    XPATH_SystemSetup("//a[@id='navigation:j_idt91:j_idt93:5:j_idt101:3:j_idt102']"),
    XPATH_AppPreference("//a[@id='navigation:j_idt91:j_idt93:5:j_idt101:3:j_idt104:2:j_idt106']"),
    XPATH_ClientNoTextbox("//input[@id='j_idt26:clientPricingDetails:searchClientNumTxt']"),
    XPATH_ApplicationPreferences("//div[text()='Application Preferences']"),
    XPATH_ClientSearch("//tbody[@id='j_idt26:clientPricingDetails:applicationPreferenceTable_data']/tr[1]"),
    XPATH_SearchClient("//a[@id='j_idt26:clientPricingDetails:searchButton']"),
    XPATH_MaintenanceProduct("//a[@id='navigation:j_idt91:j_idt93:5:j_idt101:3:j_idt104:33:j_idt105']"),
    XPATH_ProductSetup("//a[@id='navigation:j_idt91:j_idt93:5:j_idt101:3:j_idt104:33:j_idt107:0:j_idt109']"),
    XPATH_ProductCategory("//select[@id='j_idt27:productDetails:categoryCodeDDLB']"),
    XPATH_ProductSearch("//a[normalize-space()='Search']"),
    XPATH_SearchResults("//div[text()='Search Results']"),
    XPATH_ProductSearchClick("//tbody[@id='j_idt27:productDetails:resultTable_data']/tr[1]"),
    XPATH_ProductInformation("//h4[normalize-space()='Product Information']"),
    XPATH_ProductName("//div[text()='PRODUCT > VIEW : Title 1']");

    private String pageVariables;

    private RealEOAppPrefProductSetup(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}

