package EnumFactory.Structure;

public enum RealEOLogin {
    XPATH_USER_NAME("//label[@class='LoginLabel-revamp'][text()='Username']/following-sibling::input[@type='text']"),
    XPATH_PASSWORD("//label[@class='LoginLabel-revamp'][text()='Password']/following-sibling::input[@type='password']"),
    XPATH_LOGIN_BUTTON("//button[@id='signin:multiLoginButton']"),
    XPATH_TempContinue("//a[@id='signin:continueButton']");

    private String pageVariables;

    private RealEOLogin(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}

