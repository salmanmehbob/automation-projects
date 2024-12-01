package EnumFactory.Structure;

public enum Shared {
    XPATH_OrderNoSearch("//input[@id='header:j_idt28:txtSearchValue']"),
    XPATH_Share("//a[normalize-space()='Shared']"),
    XPATH_Notes("//a[@class='selected']"),
    XPATH_AddNotes("//a[normalize-space()='Add New Note']"),
    XPATH_NoteTextbox("//textarea[@id='j_idt27:shared:shared:noteText']"),
    XPATH_NoteSave("//a[normalize-space()='Save']"),
    XPATH_Messages("//a[text()='Messages']"),
    XPATH_EmailFax("//a[text()='Email/Fax']"),
    XPATH_SendToTextbox("//input[@id='emailFaxView:emailFaxDetails:emailAddress']"),
    XPATH_SendEmail("//a[text()='Send']"),
    XPATH_Attachments("//a[text()='Attachments']"),
    XPATH_AddAttachments("//a[text()='Add New Attachment']"),
    XPATH_AttachType("//select[@id='j_idt27:shared:shared:GETATTACHMENTTYPEACTION']"),
    XPATH_SharedNewFile("//input[@id='j_idt27:shared:shared:fileName']"),
    XPATH_UploadDoc("//span[@id='j_idt27:shared:shared:uploadForm_label']"),
    XPATH_SaveAttachments("//a[@class='SaveButton']");

    private String pageVariables;

    private Shared(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}





