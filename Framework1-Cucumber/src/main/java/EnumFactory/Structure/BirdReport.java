package EnumFactory.Structure;

public enum BirdReport {
    XPATH_Report("//li[@class='ui-datalist-item']//a[text()='Reports']"),
    XPATH_Client("//li[@class='ui-datalist-item']//a[text()='Client']"),
    XPATH_AdditionalFee("//li[@class='ui-datalist-item']//a[text()='Additional Fee']"),
    XPATH_ShowReport("//div[@class='ui-panel-content ui-widget-content']//a[text()='Show Report']"),
    XPATH_ADDITIONAL_FEE("//div[text()='Additional Fee']"),
    XPATH_FrameBirdReport("//iframe[@id='vtpReportFrame']");

    private String pageVariables;

    private BirdReport(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}

