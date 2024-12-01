package EnumFactory.Structure;

public enum SAASVendorLogin {
    XPATH_USER_NAME("//label[normalize-space()='User Name']/following-sibling::input[@type='text']"),
    XPATH_PASSWORD("//label[normalize-space()='Password']/following-sibling::input[@type='password']"),
    XPATH_LOGIN_BUTTON("//span[contains(text(),'Login')]");

    private String pageVariables;

    private SAASVendorLogin(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}

