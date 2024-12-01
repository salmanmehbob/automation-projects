package EnumFactory.Structure;

public enum VPRecordingOrder {
    XPATH_Orders("//*[@id='navigation:j_idt91:j_idt93:6:j_idt94']"),
    XPATH_Quick_Order_Entry("//*[@id='navigation:j_idt91:j_idt93:6:j_idt101:2:j_idt103']"),
    XPATH_Client_No("//input[@id='j_idt27:orderDetails:clientNum']"),
    XPATH_Street_No("//input[@id='j_idt27:orderDetails:houseNum']"),
    XPATH_Street_Address("//input[@id='j_idt27:orderDetails:streetAddress']"),
    XPATH_TransactionNo("(//input[@id='j_idt27:orderDetails:transactionNum'])[1]"),
    XPATH_Zip_Code("//*[@id='j_idt27:orderDetails:getZipCodeAction']"),
    XPATH_DocTypeDrop("//select[@id='j_idt27:orderDetails:j_idt349:0:RecordingProdTable:0:documentTypeDDLB']"),
    XPATH_RecPage("//input[@id='j_idt27:orderDetails:j_idt349:0:RecordingProdTable:0:recPages']"),
    XPATH_RecAmt("//input[@id='j_idt27:orderDetails:j_idt349:0:RecordingProdTable:0:reqAmount']"),
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
    XPATH_CompletedOrder("//div[contains(text(),'ORDER > VIEW :')]"),
    XPATH_AutomationRecording("//input[@id='j_idt27:orderDetails:recordingTable:0:chkDefaultRecordingProduct']"),
    XPATH_SelectRecordingVendor("//a[@class='unAssign']"),
    XPATH_DetailLabel("//label[text()='File Name']"),
    XPATH_RecCompleteTask("//a[text()='Complete']"),
    XPATH_SendRecordingDoc("//a[@class='unAssign']"),
    XPATH_RecDocCompleteTask("//a[text()='Complete']"),
    XPATH_ReceiveRecTask("//a[@class='unAssign' or @class='assigned AssignedCursor']"),
    XPATH_ReceiveDetail("//a[text()='Details']"),
    XPATH_ReceiveDetailEdit("//img[@title='Edit']/ancestor::a"),
    XPATH_RecDate("//input[@id='j_idt24:clientDetails:recordeddDate_input']"),
    XPATH_DetailQualifier1("//input[@id='j_idt24:clientDetails:identifier_1']"),
    XPATH_DetailQualifier2("//input[@id='j_idt24:clientDetails:identifier_2']"),
    XPATH_ReceiveDetailSave("//a[@id='j_idt24:clientDetails:ORDERRECORDINGPRODUCTSAVEACTION']"),
    XPATH_DetailSuspend("//a[@id='j_idt24:clientDetails:j_idt1704']"),
    XPATH_ReceiveRecCheck("//input[@id='j_idt24:calculateRecordingFee:recordingTable:selectAll']"),
    XPATH_ReceiveRecAccept("//a[@id='j_idt24:calculateRecordingFee:RECORDINGPRODUCTAPPROVESTATUS']");

    private String pageVariables;

    private VPRecordingOrder(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}





