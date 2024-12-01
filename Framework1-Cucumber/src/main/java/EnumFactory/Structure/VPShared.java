package EnumFactory.Structure;

public enum VPShared {
    XPATH_OrderNoSearch("//input[@id='header:j_idt25:txtSearchValue']"),
    XPATH_OrderSearch("//input[@id='header:j_idt25:txtSearchValue']"),
    XPATH_Title_Transactions("//a[normalize-space()='Transactions']"),
    XPATH_CloseTitle("//div[@id='j_idt23:orderTransactionDetails:productPanel']//td[2]/span"),
    XPATH_Share("//a[normalize-space()='Shared']"),
    XPATH_Notes("//a[@class='selected']"),
    XPATH_AddNotes("//a[normalize-space()='Add New Note']"),
    XPATH_NoteTextbox("//textarea[@id='j_idt24:shared:shared:noteText']"),
    XPATH_NoteSave("//a[normalize-space()='Save']"),
    XPATH_Messages("//a[text()='Messages']"),
    XPATH_EmailFax("//a[text()='Email/Fax']"),
    XPATH_SendToTextbox("//input[@id='emailFaxView:emailFaxDetails:emailAddress']"),
    XPATH_SendEmail("//a[text()='Send']"),
    XPATH_Attachments("//a[text()='Attachments']"),
    XPATH_AddAttachments("//a[text()='Add New Attachment']"),
    XPATH_AttachType("//select[@id='j_idt24:shared:shared:GETATTACHMENTTYPEACTION']"),
    XPATH_uploadLoader("//div[@class='ui-dialog ui-widget ui-widget-content ui-corner-all ui-shadow ui-hidden-container ui-draggable ui-resizable' and @aria-hidden='true']"),
    XPATH_SharedNewFile("//input[@id='j_idt24:shared:shared:fileName']"),
    XPATH_UploadDoc("//span[@id='j_idt24:shared:shared:uploadForm_label']"),
    XPATH_SaveAttachments("//a[@class='SaveButton']");

    private String pageVariables;

    private VPShared(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}





