package EnumFactory.Structure;

public enum DisbursementProcess {
    XPATH_OrderConfirmation("//div[text()='QUICK ORDER > ENTRY']"),
    XPATH_Disbursement("//a[@id='j_idt24:shared:launchWorkflows:CHECKMULTIPLECLOSINGPRODUCTSTATUSACTION']//img[@title='Launch Disbursement']"),
    XPATH_AssertDisburse("//span[text()='Disbursement Workflow launched successfully.']"),
    XPATH_BalanceAmt("//input[@id='j_idt23:clientDetails:txtAmountCredit']"),
    XPATH_BalancePage("//div[text()='ORDER PRODUCT > VIEW : Automation Closing (Order:  ']"),
    XPATH_AccSummary("//div[text()='Accounting Summary']"),
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

    private DisbursementProcess(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}

