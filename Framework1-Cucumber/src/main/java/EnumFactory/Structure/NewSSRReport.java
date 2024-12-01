package EnumFactory.Structure;

public enum NewSSRReport {
    XPATH_Report("//li[@class='ui-datalist-item']//a[text()='Reports']"),
    XPATH_Recording("//li[@class='ui-datalist-item']//a[text()='Recording']"),
    XPATH_AOMLReport("//li[@class='ui-datalist-item']//a[text()='AOM LR Dashboard Report']"),
    XPATH_SSRSLoader("//body[@onload='resizeReportScreen2();']/div[@class='loader'][@style]"),
    XPATH_SSRReport("//a[@id='j_idt29:MasterClosing:SHOWREPORT']");

    private String pageVariables;

    private NewSSRReport(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}
