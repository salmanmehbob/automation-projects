package EnumFactory.Structure;

public enum VPPrintAccountSummary {
    XPATH_AccountSummary("//a[text()='Accounting Summary']"),
    XPATH_AccountSummaryScreen("//div[contains(text(),'Accounting Summary')]"),
    XPATH_DisburseCheck("//input[@id='j_idt23:clientDetails:debitAccountingSummaryTable:0:ADDALLTOTALAMOUNT']"),
    XPATH_OrderNoSearch("//input[@id='header:j_idt25:txtSearchValue']"),
    XPATH_PrintCheck("//a[@id='j_idt23:clientDetails:printCheckDialogAction']");

    private String pageVariables;

    private VPPrintAccountSummary(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}