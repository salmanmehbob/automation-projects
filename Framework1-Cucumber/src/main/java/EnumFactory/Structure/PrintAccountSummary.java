package EnumFactory.Structure;

public enum PrintAccountSummary {
    XPATH_AccountSummary("//a[text()='Accounting Summary']"),
    XPATH_AccountSummaryScreen("//div[contains(text(),'Accounting Summary')]"),
    XPATH_DisburseCheck("//input[@id='j_idt26:clientDetails:debitAccountingSummaryTable:reconciliationCheckAll']"),
    XPATH_OrderNoSearch("//input[@id='header:j_idt28:txtSearchValue']"),
    XPATH_PrintCheck("//a[@id='j_idt26:clientDetails:printCheckDialogAction']");

    private String pageVariables;

    private PrintAccountSummary(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}