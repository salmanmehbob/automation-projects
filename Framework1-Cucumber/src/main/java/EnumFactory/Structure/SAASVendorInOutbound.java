package EnumFactory.Structure;

public enum SAASVendorInOutbound {
    XPATH_Orders("//*[@id='navigation:j_idt91:j_idt93:6:j_idt94']"),
    XPATH_Quick_Order_Entry("//*[@id='navigation:j_idt91:j_idt93:6:j_idt101:2:j_idt103']"),
    XPATH_Client_No("//input[@id='j_idt27:orderDetails:clientNum']"),
    XPATH_Street_No("//input[@id='j_idt27:orderDetails:houseNum']"),
    XPATH_Street_Address("//input[@id='j_idt27:orderDetails:streetAddress']"),
    XPATH_TransactionNo("(//input[@id='j_idt27:orderDetails:transactionNum'])[1]"),
    XPATH_Zip_Code("//*[@id='j_idt27:orderDetails:getZipCodeAction']"),
    XPATH_Automation_Product("//input[@id='j_idt27:orderDetails:titleTable:0:chkDefaultTitleProduct']"),
    XPATH_First_Name("//input[@id='j_idt27:orderDetails:firstName']"),
    XPATH_Last_Name("//input[@id='j_idt27:orderDetails:lastName']"),
    XPATH_QUICK_ORDER_TITLE("//div[@id='j_idt25_content']"),
    XPATH_Place_Order("//button[@id='j_idt27:orderDetails:duplicateAddressCheckAction']"),
    XPATH_Frame_QuickOrderEntry("//iframe[@id='etpMainFrame']"),
    XPATH_orderNo("//label[@class='orderNo']"),
    XPATH_OrderPlaced("//div[text()='QUICK ORDER > ENTRY']"),
    XPATH_OrderSearch("//input[@id='header:j_idt25:txtSearchValue']"),
    XPATH_OrderInbox("//img[@id='header:j_idt25:output']"),
    XPATH_OrderInboxProduct("//div[@id='j_idt23_content']"),
    XPATH_OrderProduct("//div[text()='ORDER PRODUCT > VIEW : Automation product (Order:  ']"),
    XPATH_Select_Vendor("//a[@class='unAssign']"),
    XPATH_CompleteTask("//a[contains(text(),'Complete')]"),
    XPATH_Order_Search("//img[@alt='Search Order']"),
    XPATH_CompletedOrder("//div[contains(text(),'ORDER > VIEW :')]"),
    XPATH_Transactions("//a[contains(text(),'Transactions')]"),
    XPATH_TxnOrderProduct("//span[contains(text(),'Automation product')]"),
    XPATH_VendorAssignment("//a[text()='Vendor Assignments']"),
    XPATH_AssignID("//td[label[contains(text(), 'Assignment ID')]]/following-sibling::td/input"),
    XPATH_OrderShared("//a[text()='Shared']"),
    XPATH_EventLogS150("//a[text()='Event Log']");

    private String pageVariables;

    private SAASVendorInOutbound(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}





