package EnumFactory.Structure;

public enum VendorNote {
    XPATH_VendorOrder("//a[text()='Orders']"),
    XPATH_MyOrder("//a[@id='navigation:j_idt84:j_idt85:1:j_idt88:0:j_idt90']"),
    XPATH_VendorOrderSearch("//tbody[@id='j_idt24:orderDetails:resultTable_data']/tr[1]"),
    XPATH_VendorNotes("//a[text()='Notes']"),
    XPATH_AddVendorNote("//a[text()='Add New Note']"),
    XPATH_OrderProductDrop("//select[@id='j_idt33:shared:ddlbOrderProduct']"),
    XPATH_TextField("//textarea[@id='j_idt33:shared:txtNote']"),
    XPATH_SaveVendorNote("//a[text()='Save']"),
    XPATH_VendorAttachment("//a[text()='Attachments']"),
    XPATH_AddVendorAttachment("//a[text()='Add New Attachment']"),
    XPATH_OrderAttachmentDrop("//select[@id='j_idt33:shared:ddlbAttachmentType']"),
    XPATH_BrowseFile("//span[@id='j_idt33:shared:uploadForm_label']"),
    XPATH_AttachmentSave("//a[text()='Save'][2]");

    private String pageVariables;

    private VendorNote(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}

