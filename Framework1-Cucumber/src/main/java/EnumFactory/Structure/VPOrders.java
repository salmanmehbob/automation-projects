package EnumFactory.Structure;

public enum VPOrders {
    XPATH_Orders("//*[@id='navigation:j_idt90:j_idt92:5:j_idt93']"),
    XPATH_Quick_Order_Entry("//*[@id='navigation:j_idt90:j_idt92:5:j_idt100:2:j_idt102']"),
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
    XPATH_QUICKORDER_ORDERNUMBER("//div[@id='j_idt27:orderDetails:j_idt864_content']//label"),
    XPATH_Frame_QuickOrderEntry("//iframe[@id='etpMainFrame']"),
    XPATH_orderNo("//label[@class='orderNo']"),
    XPATH_OrderPlaced("//div[text()='QUICK ORDER > ENTRY']"),
    XPATH_OrderSearch("//input[@id='header:j_idt25:txtSearchValue']"),
    XPATH_OrderInbox("//img[@id='header:j_idt25:output']"),
    XPATH_OrderInboxProduct("//div[@id='j_idt23_content']"),
    XPATH_OrderProduct("//div[text()='ORDER PRODUCT > VIEW : Automation product (Order:  ']"),
    XPATH_Select_Vendor("//a[@class='unAssign']"),
    XPATH_CompleteTask("//a[contains(text(),'Complete')]"),
    XPATH_ReceiveAssignment("//a[@class='unAssign']"),
    XPATH_Edit("//a[text()='Edit']"),
    XPATH_Verify_Drop("//label[contains(text(),'Verify Assignment')]//parent::*//parent::*//parent::*//following-sibling::*//select"),
    XPATH_Value("//label[contains(text(),'Verify Assignment')]//parent::*//parent::*//parent::*//following-sibling::*//option[text()='Completed- Success']"),
    XPATH_Complete_Receive("//a[text()='Complete']"),
    XPATH_Type_Product("//a[@class='unAssign']"),
    XPATH_Complete_Type("//span[text()='Complete']"),
    XPATH_TypeConfirm("//a[text()='Confirm']"),
    XPATH_QCProduct("//a[@class='unAssign']"),
    XPATH_Success("//a[text()='Success'][last()]"),
    XPATH_QCPopup("(//a[text()='Yes'])[1]"),
    XPATH_Order_Search("//img[@alt='Search Order']"),
    XPATH_Test("//input[@id='header:j_idt25:txtSearchValue']");

    private String pageVariables;

    private VPOrders(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}





