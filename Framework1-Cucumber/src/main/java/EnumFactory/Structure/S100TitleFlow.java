package EnumFactory.Structure;

public enum S100TitleFlow {
    XPATH_OrderInboxProduct("//div[@id='j_idt23_content']"),
    XPATH_OrderProduct("//div[text()='ORDER PRODUCT > VIEW : Automation product (Order:  ']"),
    XPATH_CompleteOrderProduct("//div[text()='ORDER > VIEW : '] "),
    XPATH_CompletedOrder("//div[contains(text(),'ORDER > VIEW :')]"),
    XPATH_OrderShared("//a[text()='Shared']"),
    XPATH_EventLogS150("//a[text()='Event Log']"),
    XPATH_ReceiveAssignment("//tr[@class='ui-widget-content ui-datatable-odd']//a[@class='unAssign']"),
    XPATH_OrderInbox("//img[@id='header:j_idt25:output']"),
    XPATH_OrderSearch("//input[@id='header:j_idt25:txtSearchValue']");

    private String pageVariables;

    private S100TitleFlow(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}