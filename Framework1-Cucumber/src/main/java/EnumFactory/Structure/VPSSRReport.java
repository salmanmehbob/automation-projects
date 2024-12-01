package EnumFactory.Structure;

public enum VPSSRReport {
    XPATH_Report("//*[@id='navigation:j_idt90:j_idt92:7:j_idt93']"),
    XPATH_Recording("//a[@id='navigation:j_idt90:j_idt92:7:j_idt100:7:j_idt101']"),
    XPATH_AOMLReport("//a[@id='navigation:j_idt90:j_idt92:7:j_idt100:7:j_idt103:0:j_idt105']"),
    XPATH_SSRSLoader("//body[@onload='resizeReportScreen2();']/div[@class='loader'][@style]"),
    XPATH_SSRReport("//a[@id='j_idt26:MasterClosing:SHOWREPORT']");

    private String pageVariables;

    private VPSSRReport(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}
