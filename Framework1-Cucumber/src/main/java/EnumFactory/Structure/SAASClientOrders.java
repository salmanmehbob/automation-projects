package EnumFactory.Structure;

public enum SAASClientOrders {
    XPATH_Orders("//a[text()='Orders']"),
    XPATH_AddOrderEntry("//a[@id='navigation:j_idt100:j_idt101:2:j_idt104:0:j_idt106']"),
    XPATH_Street_No("//input[@id='j_idt29:orderDetails:houseNum']"),
    XPATH_Street_Address("//input[@id='j_idt29:orderDetails:streetAddress']"),
    XPATH_Zip_Code("//input[@id='j_idt29:orderDetails:getZipCodeAction']"),
    XPATH_TransactionNo("//input[@id='j_idt29:orderDetails:transactionNum']"),
    XPATH_Automation_Product("//input[@id='j_idt29:orderDetails:titleTable:4:chkDefaultTitleProduct']"),
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

    private SAASClientOrders(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}





