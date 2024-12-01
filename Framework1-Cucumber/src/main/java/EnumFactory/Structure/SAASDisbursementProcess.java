package EnumFactory.Structure;

public enum SAASDisbursementProcess {
    XPATH_Orders("//*[@id='navigation:j_idt90:j_idt92:6:j_idt93']"),
    XPATH_Quick_Order_Entry("//*[@id='navigation:j_idt90:j_idt92:6:j_idt100:2:j_idt102']"),
    XPATH_Client_No("//input[@id='j_idt27:orderDetails:clientNum']"),
    XPATH_Street_No("//input[@id='j_idt27:orderDetails:houseNum']"),
    XPATH_Street_Address("//input[@id='j_idt27:orderDetails:streetAddress']"),
    XPATH_TransactionNo("(//input[@id='j_idt27:orderDetails:transactionNum'])[1]"),
    XPATH_Zip_Code("//*[@id='j_idt27:orderDetails:getZipCodeAction']"),
    XPATH_AutomationClosing("//input[@id='j_idt27:orderDetails:closingTable:0:chkDefaultClosingProduct']"),
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
    XPATH_Title_Transactions("//a[normalize-space()='Transactions']"),
    XPATH_OrderInboxProduct("//div[@id='j_idt23_content']"),
    XPATH_OrderProduct("//div[text()='ORDER PRODUCT > VIEW : Automation product (Order:  ']"),
    XPATH_CompletedOrder("//div[contains(text(),'ORDER > VIEW :')]"),
    XPATH_SearchOrder("//a[@id='header:j_idt25:VIEWORDERACTION']"),
    XPATH_ActionItems("//li/a[normalize-space()='Action Items']"),
    XPATH_CloseTitle("//div[@id='j_idt23:orderTransactionDetails:productPanel']//td[2]/span"),
    XPATH_LaunchWorkFlow("//a[text()='Launch Workflows']"),
    XPATH_BalanceOrder("//a[@class='assigned AssignedCursor' or @class='unAssign']"),
    XPATH_OrderConfirmation("//div[text()='QUICK ORDER > ENTRY']"),
    XPATH_Disbursement("//a[@id='j_idt24:shared:launchWorkflows:CHECKMULTIPLECLOSINGPRODUCTSTATUSACTION']//img[@title='Launch Disbursement']"),
    XPATH_AssertDisburse("//span[text()='Disbursement Workflow launched successfully.']"),
    XPATH_BalanceAmt("//input[@id='j_idt23:clientDetails:txtAmountCredit']"),
    XPATH_BalancePage("//div[text()='ORDER PRODUCT > VIEW : Automation Closing (Order:  ']"),
    XPATH_AccSummary("//div[text()='Accounting Summary']"),
    XPATH_AccountSummary("//a[text()='Accounting Summary']"),
    XPATH_AddDeposit("//img[@title='Add Deposits']/parent::*"),
    XPATH_AccountNo("//select[@id='j_idt23:clientDetails:GETNOTIFYTOCLOSER']"),
    XPATH_AccountNoValue("//select[@id='j_idt23:clientDetails:GETNOTIFYTOCLOSER']/option[2]"),
    XPATH_BalanceText("//textarea[@id='j_idt23:clientDetails:inputOtherPayToCredit']"),
    XPATH_BalanceSave("//a[@id='j_idt23:clientDetails:listItemSaveActionCredit']"),
    XPATH_AddDebit("//span[@class='ui-button-text ui-c'][text()='Add']"),
    XPATH_BankAccountNo("//select[@id='j_idt24:balanceOrderFunds:addAccountnumDDLB']"),
    XPATH_BankAccountNoValue("//select[@id='j_idt24:balanceOrderFunds:addAccountnumDDLB']/option[2]"),
    XPATH_TransactionType("//select[@id='j_idt24:balanceOrderFunds:addTransactionTypeCodeDDLB']"),
    XPATH_BalanceAmount("//input[@id='j_idt24:balanceOrderFunds:addTxtAmount']"),
    XPATH_BankPayTo("//select[@id='j_idt24:balanceOrderFunds:GETPAYOFFENTITYACTION1']"),
    XPATH_BalanceOrderComplete("//a[@id='j_idt24:balanceOrderFunds:j_idt9082']"),
    XPATH_DescriptionLabel("//label[contains(text(),'County')]"),
    XPATH_BankPayToValue("//select[@id='j_idt24:balanceOrderFunds:GETPAYOFFENTITYACTION1']/option[2]"),
    XPATH_DebitSave("//a[@class='SaveButton']"),
    XPATH_AccountSummaryScreen("//div[text()='Accounting Summary']");

    private String pageVariables;

    private SAASDisbursementProcess(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}

