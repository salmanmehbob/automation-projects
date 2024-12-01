package EnumFactory.Structure;

public enum RealEOClosingDisclosureEntry {
    XPATH_OrderNoSearch("//input[@id='header:j_idt25:txtSearchValue']"),
    XPATH_Title_Transactions("//a[normalize-space()='Transactions']"),
    XPATH_CloseTitle("//div[@id='j_idt23:orderTransactionDetails:productPanel']//td[2]/span"),
    XPATH_Frame_QuickOrderEntry("//iframe[@id='etpMainFrame']"),
    XPATH_DisEntry("//a[text()='Disclosure Entry']"),
    XPATH_IssueDate("//input[@id='j_idt47:issueDate_input']"),
    XPATH_ClosingDate("//input[@id='j_idt47:closingDate_input']"),
    XPATH_DisbursingDate("//input[@id='j_idt47:disbursementDate_input']"),
    XPATH_TermDropDown("//select[@id='j_idt47:loanTermDDLB']"),
    XPATH_PeriodDropDown("//select[@id='j_idt47:periodTypeDDLB']"),
    XPATH_TermDay("//input[@id='j_idt47:loanMaturityPeriodCount']"),
    XPATH_TermYear("//input[@id='j_idt47:loanTermYears']"),
    XPATH_AmortizeDropDown("//select[@id='j_idt47:productDDLB']"),
    XPATH_DisSave("//span[text()='Save']"),
    XPATH_LoanCost("//a[text()='Loan Cost']"),
    XPATH_OriginPercentage("//input[@id='j_idt47:ucdLoanCostSection:0:ucdLoanCostSectionTable:0:loanAmtPercentage']"),
    XPATH_OriginV1("//input[@id='j_idt47:ucdLoanCostSection:0:ucdLoanCostSectionTable:0:borrowerClosingAmount']"),
    XPATH_OriginV2("//input[@id='j_idt47:ucdLoanCostSection:0:ucdLoanCostSectionTable:0:borrowerBeforeClosingAmount']"),
    XPATH_ServiceBorrowerAdd("//button[@id='j_idt47:ucdLoanCostSection:1:ADDSECTIONLINE']//span[@class='ui-button-text ui-c'][text()='Add']"),
    XPATH_ServiceDropDown("//select[@id='j_idt47:ucdLoanCostSection:1:ucdLoanCostSectionTable:1:feeTypeCode']"),
    XPATH_ServiceV1("//input[@id='j_idt47:ucdLoanCostSection:1:ucdLoanCostSectionTable:1:borrowerClosingAmount']"),
    XPATH_ServiceV2("//input[@id='j_idt47:ucdLoanCostSection:1:ucdLoanCostSectionTable:1:borrowerBeforeClosingAmount']"),
    XPATH_ServiceShopAdd("//button[@id='j_idt47:ucdLoanCostSection:2:ADDSECTIONLINE']//span[@class='ui-button-text ui-c'][text()='Add']"),
    XPATH_ServiceShopDropDown("//select[@id='j_idt47:ucdLoanCostSection:2:ucdLoanCostSectionTable:0:feeTypeCode']"),
    XPATH_ServiceShopV1("//input[@id='j_idt47:ucdLoanCostSection:2:ucdLoanCostSectionTable:0:borrowerClosingAmount']"),
    XPATH_ServiceShopV2("//input[@id='j_idt47:ucdLoanCostSection:2:ucdLoanCostSectionTable:0:borrowerBeforeClosingAmount']"),
    XPATH_LoanCostSave("//span[text()='Save']"),
    XPATH_OtherCost("//a[text()='Other Cost']"),
    XPATH_TaxesAdd("//button[@id='j_idt47:j_idt775:0:ADDSECTIONLINE']//span[@class='ui-button-text ui-c'][text()='Add']"),
    XPATH_TaxesValue("//input[@id='j_idt47:j_idt775:0:ucdOtherCostitemList:0:linePayeeName']"),
    XPATH_TaxesV1("//input[@id='j_idt47:j_idt775:0:ucdOtherCostitemList:0:borrowerClosingAmount']"),
    XPATH_TaxesV2("//input[@id='j_idt47:j_idt775:0:ucdOtherCostitemList:0:borrowerBeforeClosingAmount']"),
    XPATH_PrepaidInterest("//input[@id='j_idt47:j_idt775:1:ucdOtherCostitemList:0:perMonthAmount']"),
    XPATH_PerDayFrom("//input[@id='j_idt47:j_idt775:1:ucdOtherCostitemList:0:interestDateFrom_input']"),
    XPATH_PerDayTo("//input[@id='j_idt47:j_idt775:1:ucdOtherCostitemList:0:interestDateTo_input']"),
    XPATH_PrepaidV2("//input[@id='j_idt47:j_idt775:1:ucdOtherCostitemList:0:borrowerBeforeClosingAmount']"),
    XPATH_InitialPayV1("//input[@id='j_idt47:j_idt775:2:ucdOtherCostitemList:0:borrowerClosingAmount']"),
    XPATH_InitialPayV2("//input[@id='j_idt47:j_idt775:2:ucdOtherCostitemList:0:borrowerBeforeClosingAmount']"),
    XPATH_OtherAdd("//button[@id='j_idt47:j_idt775:3:ADDSECTIONLINE']//span[@class='ui-button-text ui-c'][text()='Add']"),
    XPATH_OtherDropDown("//select[@id='j_idt47:j_idt775:3:ucdOtherCostitemList:0:j_idt791']"),
    XPATH_OtherValue("//input[@id='j_idt47:j_idt775:3:ucdOtherCostitemList:0:linePayeeName']"),
    XPATH_OtherV1("//input[@id='j_idt47:j_idt775:3:ucdOtherCostitemList:0:borrowerClosingAmount']"),
    XPATH_OtherV2("//input[@id='j_idt47:j_idt775:3:ucdOtherCostitemList:0:borrowerBeforeClosingAmount']"),
    XPATH_OtherSave("//span[text()='Save']"),
    XPATH_SumOfTrans("//a[text()='Summaries of Transactions']"),
    XPATH_SalePriceV1("//input[@id='j_idt47:ucdsummariesBorrowerTransactionScreenSubView:originalChargesList:0:borrowerRowList:1:borrowerClosingAmount']"),
    XPATH_DueDropDown("//select[@id='j_idt47:ucdsummariesBorrowerTransactionScreenSubView:originalChargesList:0:borrowerRowList:3:adjustmentItemTypes']"),
    XPATH_DueDropAmt("//input[@id='j_idt47:ucdsummariesBorrowerTransactionScreenSubView:originalChargesList:0:borrowerRowList:3:borrowerClosingAmount']"),
    XPATH_AdjustDrop("//select[@id='j_idt47:ucdsummariesBorrowerTransactionScreenSubView:originalChargesList:1:borrowerRowList:0:adjustmentItemTypes']"),
    XPATH_AdjustAmt("//input[@id='j_idt47:ucdsummariesBorrowerTransactionScreenSubView:originalChargesList:1:borrowerRowList:0:borrowerClosingAmount']"),
    XPATH_AdjustCityF("//input[@id='j_idt47:ucdsummariesBorrowerTransactionScreenSubView:originalChargesList:2:borrowerRowList:0:interestDateFrom_input']"),
    XPATH_AdjustCityT("//input[@id='j_idt47:ucdsummariesBorrowerTransactionScreenSubView:originalChargesList:2:borrowerRowList:0:interestDateTo_input']"),
    XPATH_CityAmt("//input[@id='j_idt47:ucdsummariesBorrowerTransactionScreenSubView:originalChargesList:2:borrowerRowList:0:borrowerClosingAmount']"),
    XPATH_PaidDepositAmt("//input[@id='j_idt47:ucdsummariesBorrowerTransactionScreenSubView:originalChargesList:3:borrowerRowList:0:borrowerClosingAmount']"),
    XPATH_SaleAmt("//input[@id='j_idt47:ucdsummariesSellerTransactionScreenSubView:originalChargesList:0:sellerRowList:1:sellerClosingAmount']"),
    XPATH_SellerCityF("//input[@id='j_idt47:ucdsummariesSellerTransactionScreenSubView:originalChargesList:1:sellerRowList:0:interestDateFrom_input']"),
    XPATH_SellerCityT("//input[@id='j_idt47:ucdsummariesSellerTransactionScreenSubView:originalChargesList:1:sellerRowList:0:interestDateTo_input']"),
    XPATH_SellerCityA("//input[@id='j_idt47:ucdsummariesSellerTransactionScreenSubView:originalChargesList:1:sellerRowList:0:sellerClosingAmount']"),
    XPATH_SellerDepositAmt("//input[@id='j_idt47:ucdsummariesSellerTransactionScreenSubView:originalChargesList:2:sellerRowList:0:sellerClosingAmount']"),
    XPATH_UnpaidSellerCityF("//input[@id='j_idt47:ucdsummariesSellerTransactionScreenSubView:originalChargesList:3:sellerRowList:0:interestDateFrom_input']"),
    XPATH_UnpaidSellerCityT("//input[@id='j_idt47:ucdsummariesSellerTransactionScreenSubView:originalChargesList:3:sellerRowList:0:interestDateTo_input']"),
    XPATH_UnpaidSellerCityA("//input[@id='j_idt47:ucdsummariesSellerTransactionScreenSubView:originalChargesList:3:sellerRowList:0:sellerClosingAmount']"),
    XPATH_SumOfTransSave("//span[text()='Save']");

    private String pageVariables;

    private RealEOClosingDisclosureEntry(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}





