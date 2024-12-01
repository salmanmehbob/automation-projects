package EnumFactory.Structure;

public enum SimplifileFlow {
    XPATH_Orders("//*[@id='navigation:j_idt91:j_idt93:6:j_idt94']"),
    XPATH_Quick_Order_Entry("//*[@id='navigation:j_idt91:j_idt93:6:j_idt101:2:j_idt103']"),
    XPATH_Client_No("//input[@id='j_idt27:orderDetails:clientNum']"),
    XPATH_bar_Code("//input[@id='j_idt27:orderDetails:barCode']"),
    XPATH_Street_No("//input[@id='j_idt27:orderDetails:houseNum']"),
    XPATH_Street_Address("//input[@id='j_idt27:orderDetails:streetAddress']"),
    XPATH_Scroll("//*[@id='j_idt27:orderDetails:j_idt28']"),
    XPATH_TransactionNo("(//input[@id='j_idt27:orderDetails:transactionNum'])[1]"),
    XPATH_Zip_Code("//*[@id='j_idt27:orderDetails:getZipCodeAction']"),
    XPATH_RecordingProduct("//input[@id='j_idt27:orderDetails:recordingTable:0:chkDefaultRecordingProduct']"),
    XPATH_DocTypeDrop("//select[@id='j_idt27:orderDetails:j_idt395:0:RecordingProdTable:0:documentTypeDDLB']"),
    XPATH_RecPage("//input[@id='j_idt27:orderDetails:j_idt395:0:RecordingProdTable:0:recPages']"),
    XPATH_RecAmt("//input[@id='j_idt27:orderDetails:j_idt395:0:RecordingProdTable:0:reqAmount']"),
    XPATH_First_Name("//input[@id='j_idt27:orderDetails:firstName']"),
    XPATH_Last_Name("//input[@id='j_idt27:orderDetails:lastName']"),
    XPATH_QUICK_ORDER_TITLE("//div[@id='j_idt25_content']"),
    XPATH_Place_Order("//button[@id='j_idt27:orderDetails:duplicateAddressCheckAction']"),
    XPATH_QUICKORDER_ORDERNUMBER("//div[@id='j_idt27:orderDetails:j_idt864_content']//label"),
    XPATH_Frame_QuickOrderEntry("//iframe[@id='etpMainFrame']"),
    XPATH_orderNo("//label[@class='orderNo']"),
    XPATH_OrderPlaced("//div[text()='QUICK ORDER > ENTRY']"),
    XPATH_OrderInboxProduct("//div[@id='j_idt23_content']"),
    XPATH_OrderProduct("//div[@id='j_idt24:j_idt40_content']//div[contains(text(),'ORDER PRODUCT > VIEW : Document Recording (Order:')]"),
    XPATH_CompleteOrderProduct("//div[text()='ORDER > VIEW : '] "),
    XPATH_SelectRecordingVendor("//a[@class='unAssign' or @class= 'assigned AssignedCursor']"),
    XPATH_RecCompleteTask("//a[text()='Complete']"),
    XPATH_OrderSearch("//input[@id='header:j_idt25:txtSearchValue']"),
    XPATH_OrderInbox("//img[@id='header:j_idt25:output']"),
    XPATH_SendRecordingDoc("//a[@class='unAssign' or @class= 'assigned AssignedCursor']"),
    XPATH_RecDocCompleteTask("//a[text()='Complete']"),
    XPATH_Shared("//a[normalize-space()='Shared']"),
    XPATH_Attachment("//a[normalize-space()='Attachments']"),
    XPATH_AddAttachment("//a[normalize-space()='Add New Attachment']"),
    XPATH_OrderAttachmentDrop("//select[@id='j_idt24:shared:shared:GETATTACHMENTTYPEACTION']"),
    XPATH_BrowseFile("//span[@id='j_idt24:shared:shared:uploadForm_label']"),
    XPATH_AttachmentSave("//a[text()='Save']"),
    XPATH_AssignmentCheck("//input[@id='j_idt24:calculateRecordingFee:recordingTable:0:documentRowSelected']"),
    XPATH_AddPackage("//span[normalize-space()='Add Package']"),
    XPATH_PackageAdded("//div[@id='j_idt24:calculateRecordingFee:j_idt8593_content']/span[contains(@class, 'InformationLabel')]"),
    XPATH_SubmitDoc("//tr[@class='ui-widget-content ui-datatable-even']//a[@class='unAssign'or @class= 'assigned AssignedCursor']"),
    XPATH_CompleteSubmitDoc("//a[@id='j_idt24:calculateRecordingFee:COMPLETESUBMITTASKACTION']"),
    XPATH_ReceiveRecTask("//tr[@class='ui-widget-content ui-datatable-even']//a[@class='unAssign' or @class= 'assigned AssignedCursor']"),
    XPATH_Details("//a[text()='Details']"),
    XPATH_DocumentID("//a[contains(text(), 'Recordable Document ID')]//following::tr[@class='ui-widget-content ui-datatable-even odd, even']//td[@style='width: 15%']"),
    XPATH_PackageID("(//textarea[contains(@name, 'j_idt24:clientDetails:j_idt')])[2]"),
    XPATH_Order_Search("//img[@alt='Search Order']"),
    XPATH_Test("//input[@id='header:j_idt25:txtSearchValue']");

    private String pageVariables;

    private SimplifileFlow(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}





