package EnumFactory.Structure;

public enum VPLogin {
    XPATH_USER_NAME("//input[@id='i0116']"),
    XPATH_Next("//input[@id='idSIButton9']"),
    XPATH_PASSWORD("//input[@id='i0118']"),
    XPATH_LOGIN_BUTTON("//input[@id='idSIButton9']");

    private String pageVariables;

    private VPLogin(String pageVariables) {

        this.pageVariables = pageVariables;
    }

    public String getValue() {
        return this.pageVariables;
    }

    public String getPageVariables(){return this.pageVariables;}
}

