package EnumFactory.Structure;

public enum VPAppPrefProductSetup {
    XPATH_Maintenance("//a[@id='navigation:j_idt90:j_idt92:4:j_idt93']"),
    XPATH_SystemSetup("//a[@id='navigation:j_idt90:j_idt92:4:j_idt100:3:j_idt101']"),
    XPATH_AppPreference("//a[@id='navigation:j_idt90:j_idt92:4:j_idt100:3:j_idt103:0:j_idt105']"),
    XPATH_ClientNoTextbox("//input[@id='j_idt26:clientPricingDetails:searchClientNumTxt']"),
    XPATH_ApplicationPreferences("//div[text()='Application Preferences']"),
    XPATH_SearchClient("//a[@id='j_idt26:clientPricingDetails:searchButton']"),
    XPATH_ClientSearch("//tbody[@id='j_idt26:clientPricingDetails:applicationPreferenceTable_data']/tr[1]"),
    XPATH_MaintenanceProduct("//a[@id='navigation:j_idt90:j_idt92:4:j_idt100:3:j_idt103:28:j_idt104'] "),
    XPATH_ProductSetup("//a[@id='navigation:j_idt90:j_idt92:4:j_idt100:3:j_idt103:28:j_idt106:0:j_idt108']"),
    XPATH_ProductCategory("//select[@id='j_idt27:productDetails:categoryCodeDDLB']"),
    XPATH_ProductSearch("//a[contains(text(),'Search')]"),
    XPATH_SearchResults("//div[text()='Search Results']"),
    XPATH_ProductSearchClick("//tbody[@id='j_idt27:productDetails:resultTable_data']/tr[1]"),
    XPATH_ProductInformation("//h4[normalize-space()='Product Information']");

    private String pageVariables;

    private VPAppPrefProductSetup(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}

