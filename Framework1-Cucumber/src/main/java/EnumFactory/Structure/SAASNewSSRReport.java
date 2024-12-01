package EnumFactory.Structure;

public enum SAASNewSSRReport {
    XPATH_Report("//*[@id='navigation:j_idt91:j_idt93:8:j_idt94']"),
    XPATH_Recording("//a[@id='navigation:j_idt91:j_idt93:8:j_idt101:7:j_idt102']"),
    XPATH_eRecordingReport("//a[@id='navigation:j_idt91:j_idt93:8:j_idt101:7:j_idt104:0:j_idt106']"),
    XPATH_SSRSLoader("//body[@onload='resizeReportScreen2();']/div[@class='loader'][@style]"),
    XPATH_SSRReport("//a[@id='j_idt26:ClientEsclation:SHOWREPORT']");

    private String pageVariables;

    private SAASNewSSRReport(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}
