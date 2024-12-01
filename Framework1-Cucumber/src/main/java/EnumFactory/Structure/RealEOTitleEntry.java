package EnumFactory.Structure;

public enum RealEOTitleEntry {
    XPATH_Frame_QuickOrderEntry("//iframe[@id='etpMainFrame']"),
    XPATH_Title_Transactions("//a[normalize-space()='Transactions']"),
    XPATH_OrderSearch("//input[@id='header:j_idt25:txtSearchValue']"),
    XPATH_TestSearch("//input[@id='header:j_idt25:txtSearchValue']"),
    XPATH_Select_Title("//tbody/tr[1]/td[7]/a[1]/img[1]"),
    XPATH_Title_Entry("//a[normalize-space()='Title Entry']"),
    XPATH_Property("//a[normalize-space()='Edit']"),
    XPATH_Search_Date("//input[@id='titleForm:titleTypingSubview:searchDate_input']"),
    XPATH_Effective_Date("//input[@id='titleForm:titleTypingSubview:effectiveDate_input']"),
    XPATH_Vesting("//textarea[@id='titleForm:titleTypingSubview:mortgageRelationshipsTXT1']"),
    XPATH_Legal("//textarea[@id='titleForm:titleTypingSubview:legalDescription']"),
    XPATH_PropertySave("//a[normalize-space()='Save']"),
    XPATH_Deeds("//a[normalize-space()='Deeds']"),
    XPATH_AddDeed("//a[normalize-space()='Add New Deed']"),
    XPATH_DropDown("//select[@id='titleForm:deedDetails:ddlbDeedType']"),
    XPATH_DeedDate("//input[@id='titleForm:deedDetails:recordingInfoRecordedDate_input']"),
    XPATH_DeedQualifier("//input[@id='titleForm:deedDetails:recordingInfoInstrumentNumber']"),
    XPATH_Grantor("//button[@id='titleForm:deedDetails:j_idt846']"),
    XPATH_GrantorFirstName("//input[@id='titleForm:deedDetails:firstName']"),
    XPATH_GrantorLastName("//input[@id='titleForm:deedDetails:lastName']"),
    XPATH_GrantorSave("//button[@id='titleForm:deedDetails:j_idt848']"),
    XPATH_Grantee("//input[@id='titleForm:deedDetails:j_idt713:1']"),
    XPATH_DeedSave("//div[@id='titleForm:deedDetails:j_idt906_content']//a[normalize-space()='Save']"),
    XPATH_Taxes("//a[normalize-space()='Taxes']"),
    XPATH_AddTax("//a[normalize-space()='Add New Tax']"),
    XPATH_TaxParcel("//input[@id='titleForm:j_idt962:parcelNumber']"),
    XPATH_TaxStart("//input[@id='titleForm:j_idt962:yearTxt']"),
    XPATH_TaxEnd("//input[@id='titleForm:j_idt962:calYearToTxt']"),
    XPATH_TaxYearSave("//a[@id='titleForm:j_idt962:SAVEACTION']"),
    XPATH_TaxesSave("//span[normalize-space()='Save']"),
    XPATH_Mortgages("//a[normalize-space()='Mortgages']"),
    XPATH_AddMortgages("//a[normalize-space()='Add New Mortgage']"),
    XPATH_MortgageDropDown("//select[@id='titleForm:mortgageSubview:mortgageIdDDLB']"),
    XPATH_Mortgage("//input[@id='titleForm:mortgageSubview:mortgagee']"),
    XPATH_MortgageAmt("//input[@id='titleForm:mortgageSubview:mortgageAmount']"),
    XPATH_SubjectMortgage("//input[@id='titleForm:mortgageSubview:subjectMortgage:1']"),
    XPATH_MortgageRecordDate("//input[@id='titleForm:mortgageSubview:recordingInfoRecordedDate_input']"),
    XPATH_MortQualifier("//input[@id='titleForm:mortgageSubview:recordingInfoInstrumentNumber']"),
    XPATH_NewMortgage("//span[normalize-space()='Add']"),
    XPATH_MortgageFirstName("//input[@id='titleForm:mortgageSubview:firstName']"),
    XPATH_MortgageLastName("//input[@id='titleForm:mortgageSubview:lastName']"),
    XPATH_MortgagesSave("//div[@id='titleForm:mortgageSubview:j_idt2559_content']//a[normalize-space()='Save']"),
    XPATH_Liens("//a[normalize-space()='Liens/Judgments']"),
    XPATH_AddLien("//a[normalize-space()='Add New Lien']"),
    XPATH_LienDropDown("//select[@id='titleForm:lienJudgmentDetails:ddlbLienType']"),
    XPATH_LienAmt("//input[@id='titleForm:lienJudgmentDetails:txtAmount']"),
    XPATH_LienRecordDate("//input[@id='titleForm:lienJudgmentDetails:recordedDate_input']"),
    XPATH_LienQualifier1("//input[@id='titleForm:lienJudgmentDetails:recordingInfoRecordedNumber']"),
    XPATH_LienQualifier2("//input[@id='titleForm:lienJudgmentDetails:recordingInfoPage']"),
    XPATH_NewLien("//span[text()='Add New Defendant/Plaintiff']"),
    XPATH_DefendsFirstName("//input[@id='titleForm:lienJudgmentDetails:firstName']"),
    XPATH_DefendsLastName("//input[@id='titleForm:lienJudgmentDetails:lastName']"),
    XPATH_Plain("//input[@id='titleForm:lienJudgmentDetails:rdbType:0']"),
    XPATH_SaveDefend("//span[normalize-space()='Save']"),
    XPATH_SaveLien("//div[@id='titleForm:lienJudgmentDetails:j_idt3031_content']//a[normalize-space()='Save']"),
    XPATH_Estate("//a[normalize-space()='Estates']"),
    XPATH_AddEstate("//a[normalize-space()='Add New Estate']"),
    XPATH_EstatesFirstName("//input[@id='titleForm:estateDetails:firstName']"),
    XPATH_EstatesLastName("//input[@id='titleForm:estateDetails:lastName']"),
    XPATH_EstatesDeathDate("//input[@id='titleForm:estateDetails:dateOfDeath_input']"),
    XPATH_EstateSave("//div[@id='titleForm:estateDetails:j_idt3304_content']//a[normalize-space()='Save']"),
    XPATH_Ancillary("//a[normalize-space()='Ancillary Recordings']"),
    XPATH_AddAncillary("//a[normalize-space()='Add Ancillary Recording']"),
    XPATH_AncillaryDropDown("//select[@id='titleForm:ancillaryRecordingsDetails:ddlbAncillaryRecordingsType']"),
    XPATH_AncillaryRecordDate("//input[@id='titleForm:ancillaryRecordingsDetails:ancillaryRecordingRecordedDate_input']"),
    XPATH_AnciQualifier("//input[@id='titleForm:ancillaryRecordingsDetails:recordingInfoInstrumentNumber']"),
    XPATH_AncillarySave("//a[normalize-space()='Save']"),
    XPATH_ExceptionForm("//a[normalize-space()='Exception/Requirement']"),
    XPATH_AddException("//span[normalize-space()='Add New Exception']"),
    XPATH_ExceptionsText("//textarea[@id='titleForm:paragraphDetails:txtexception']"),
    XPATH_ExceptionSave("//span[normalize-space()='Save']"),
    XPATH_AddReq("//span[normalize-space()='Add New Requirement']"),
    XPATH_RequirementText("//textarea[@id='titleForm:paragraphDetails:txtRequirement']"),
    XPATH_ReqSave("//span[normalize-space()='Save']"),
    XPATH_FinalExceptionSave("//a[@id='titleForm:paragraphDetails:PUBLISHTODEED']"),
    XPATH_MailingForm("//a[normalize-space()='Mailing Section']"),
    XPATH_AddMail("//a[normalize-space()='Add New Contact']"),
    XPATH_MailDropDown("//select[@id='titleForm:mailingSectionDetails:ddlbMailType']"),
    XPATH_MailText("//input[@id='titleForm:mailingSectionDetails:organization']"),
    XPATH_MailSave("//a[normalize-space()='Save']"),
    XPATH_CrossTabForm("//a[normalize-space()='Cross Tab Sorting']"),
    XPATH_EditCross("//a[normalize-space()='Edit']"),
    XPATH_EnableCross("//input[@id='titleForm:crossTabSortingReqSubview:crossTabSortingReq']"),
    XPATH_CrossSave("//a[normalize-space()='Save']");
    private String pageVariables;

    private RealEOTitleEntry(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}





