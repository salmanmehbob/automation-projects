package EnumFactory.Structure;

public enum ClientVendorSearch {
    XPATH_Client("//li[@class='ui-datalist-item']//a[text()='Clients']"),
    XPATH_ClientSetup("//li[@class='ui-datalist-item']//a[text()='Setup']"),
    XPATH_ClientNoTextBox("//input[contains(@id, 'clientDetails:txtClientNumber')]"),
    XPATH_AutomationClient("//div[text()='CLIENT > VIEW :  Automation Client  (2005)']"),
    XPATH_ProductSetup("//a[text()='Product Setup']"),
    XPATH_ProductDetails("//div[text()='Product Details']"),
    XPATH_Vendor("//li[@class='ui-datalist-item']//a[text()='Vendors']"),
    XPATH_VendorSetup("//li[@class='ui-datalist-item']//a[text()='Setup']"),
    XPATH_VendorNoTextBox("//input[contains(@id, 'vendorDetails:txtVendorNum')]"),
    XPATH_AutomationVendor("//div[text()='VENDOR > VIEW :  Automation vendor (244)']");

    private String pageVariables;

    private ClientVendorSearch(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}

