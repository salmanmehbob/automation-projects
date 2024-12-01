package EnumFactory.Structure;

public enum VendorInOutbound {
    XPATH_Transactions("//a[contains(text(),'Transactions')]"),
    XPATH_TxnOrderProduct("//span[contains(text(),'Automation product')]"),
    XPATH_VendorAssignment("//a[text()='Vendor Assignments']"),
    XPATH_AssignID("//td[label[contains(text(), 'Assignment ID')]]/following-sibling::td/input");

    private String pageVariables;

    private VendorInOutbound(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}





