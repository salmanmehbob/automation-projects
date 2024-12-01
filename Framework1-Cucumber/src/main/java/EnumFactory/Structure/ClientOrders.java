package EnumFactory.Structure;

public enum ClientOrders {
    XPATH_Orders("//a[text()='Orders']"),
    XPATH_AddOrderEntry("//li[@class='ui-datalist-item']//a[text()='Add']"),
    XPATH_Street_No("//input[@class='req input150 txt ']"),
    XPATH_Street_Address("//input[@class='req input150 txt']"),
    XPATH_TransactionNo("//input[@class='input150 txt req']"),
    XPATH_Zip_Code("//input[contains(@id, 'getZipCodeAction')]"),
    XPATH_Automation_Product("//input[@id='j_idt29:orderDetails:closingTable:0:chkDefaultClosingProduct']"),
    XPATH_First_Name("//input[@id='j_idt29:orderDetails:firstName']"),
    XPATH_Last_Name("//input[@id='j_idt29:orderDetails:lastName']"),
    XPATH_Place_Order("//a[@id='j_idt29:orderDetails:j_idt1030']"),
    XPATH_NewOrderNo("//label[@class='orderNo']"),
    XPATH_OrderNoSearch("//input[@id='header:j_idt26:txtSearchValue']"),
    XPATH_ClientNote("//a[text()='Notes']"),
    XPATH_AddClientNote("//a[text()='Add New Note']"),
    XPATH_OrderProductDrop("//select[@id='j_idt33:shared:ddlbOrderProduct']"),
    XPATH_TextField("//textarea[@id='j_idt33:shared:txtNote']"),
    XPATH_SaveClientNote("//a[text()='Save']"),
    XPATH_ClientAttachment("//a[text()='Attachments']"),
    XPATH_AddClientAttachment("//a[text()='Add New Attachment']"),
    XPATH_OrderStatusDrop("//select[@id='j_idt33:shared:ddlbAttachmentType']"),
    XPATH_BrowseFile("//span[@id='j_idt33:shared:uploadForm_label']"),
    XPATH_AttachmentSave("//a[text()='Save']");

    private String pageVariables;

    private ClientOrders(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}





