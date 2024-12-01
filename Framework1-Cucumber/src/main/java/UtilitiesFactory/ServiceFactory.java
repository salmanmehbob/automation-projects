package UtilitiesFactory;

import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.remote.AndroidMobileCapabilityType;
import io.appium.java_client.remote.MobileCapabilityType;
import io.appium.java_client.service.local.AppiumDriverLocalService;
import io.appium.java_client.service.local.AppiumServiceBuilder;
import io.appium.java_client.service.local.flags.GeneralServerFlag;
import io.appium.java_client.windows.WindowsDriver;
import io.github.bonigarcia.wdm.WebDriverManager;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.apache.commons.exec.CommandLine;
import org.apache.commons.exec.DefaultExecuteResultHandler;
import org.apache.commons.exec.DefaultExecutor;
import org.json.JSONObject;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.edge.EdgeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;
import  java.sql.Connection;
import  java.sql.Statement;
import  java.sql.DriverManager;

import java.io.File;
import java.net.URL;
import java.sql.*;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class ServiceFactory {

    private static ThreadLocal<WebDriver> driver = new ThreadLocal<WebDriver>();

//    private static  WebDriver driver;
    private static AppiumDriverLocalService service;
    private static AndroidDriver androidDriver ;
    private static WindowsDriver windDriver ;
    private static ServiceFactory instance = null;
    private static String BROWSER;
    private static String DBServer;
    private static RequestSpecification request;
    private static Response response;
    private static JSONObject requestParams = new JSONObject();
    public static String propFile = "run.properties";
    static Connection con = null;
    static Statement stmt;
    public static String SQLdbURL;
    public static String OracledbURL;
    public static String mySQLdbURL;
    public static String DB_USER;
    public static String DB_PASSWORD;
    static {
        try {
            DB_USER = new PropertyLoaderFactory().getPropertyFile(propFile).getProperty("DB_USER");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    static {
        try {
            DB_PASSWORD = new PropertyLoaderFactory().getPropertyFile(propFile).getProperty("DB_PASSWORD");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    static {
        try {
            SQLdbURL = "jdbc:sqlserver://"
                    +new PropertyLoaderFactory().getPropertyFile(propFile).getProperty("DB_URL")
                    +":1433;databaseName="+
                    new PropertyLoaderFactory().getPropertyFile(propFile).getProperty("DB_NAME")
                    +";user="+DB_USER
                    +";password="+DB_PASSWORD
                    +";integratedSecurity=false;" +
                    "encrypt=false;" +
                    "trustServerCertificate=true;";
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    static {
        try {
            OracledbURL = "jdbc:oracle:thin:@//"
                    +new PropertyLoaderFactory().getPropertyFile(propFile).getProperty("DB_URL")
                    +"/"+
                    new PropertyLoaderFactory().getPropertyFile(propFile).getProperty("DB_NAME");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    static {
        try {
            mySQLdbURL = "jdbc:mysql://"
                    +new PropertyLoaderFactory().getPropertyFile(propFile).getProperty("DB_URL")
                    +"/"+
                    new PropertyLoaderFactory().getPropertyFile(propFile).getProperty("DB_NAME");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    // Singleton to make thread safe
    private ServiceFactory() throws Exception {
//        sqlConnect();
    }

    public static ServiceFactory getInstance() throws Exception {
        if (instance == null)
        {
            instance = new ServiceFactory();
        }
        return instance;
    }
    public final void setDBConnection(String dbServer) throws Exception {
        switch (dbServer.toUpperCase()) {
            case "SQL":
                sqlConnect();
                break;
            case "Oracle":
                oracleConnect();
                break;
            case "MySQL":
                  mySQLConnect();
                break;
        }
    }

    public final void setDriver(String browser) throws Exception {
        switch (browser.toUpperCase()) {

            //Emulator settings for Android Mobile
            case "MOBILE":
                WebDriverManager.chromedriver().setup();
                driver.set(new ChromeDriver(chromeOptions_androidMobile()));
                break;

            case "FIREFOX":
                WebDriverManager.firefoxdriver().setup();
                driver.set(new FirefoxDriver(firefoxOptions()));
                break;

            case "CHROME":
//                System.setProperty("webdriver.chrome.driver", "src/test/resources/chromedriver-win64/chromedriver.exe");
//                driver = new ChromeDriver(chromeOptions_desktop());
//                WebDriverManager.chromedriver().proxy("https://chromedriver.storage.googleapis.com:443").setup();
//                WebDriverManager.chromedriver().setup();
                driver.set(new ChromeDriver(chromeOptions_desktop()));
                break;

            case "EDGE":
                WebDriverManager.edgedriver().setup();
                driver.set(new EdgeDriver(edgeOptions()));
                break;

            default:
                WebDriverManager.chromedriver().setup();
                driver.set(new ChromeDriver(chromeOptions_desktop()));
                break;
        }
    }
    public static String currentHandle;
    public static WebDriver getDriver()
    {
        return driver.get();
    }
    public static AndroidDriver getAndroidDriver() {
        return androidDriver;
    }
    public static WindowsDriver getWinDriver() {return windDriver;}
    public static Statement getStmt(){return stmt;}
    private ChromeOptions chromeOptions_androidMobile() throws Exception {
        Map<String, String> mobileEmulation = new HashMap<>();
        mobileEmulation.put("deviceName",new PropertyLoaderFactory().getPropertyFile("run.properties").getProperty("deviceName"));
        // Setup Chrome environment:
        ChromeOptions chromeOptions = new ChromeOptions();
        // Add command-line switches:
        chromeOptions.addArguments("--disable-extensions");
        chromeOptions.addArguments("--disable-extensions-file-access-check");
        chromeOptions.addArguments("--disable-extensions-http-throttling");
        chromeOptions.addArguments("--no-sandbox");
        chromeOptions.addArguments("--window-size=240,720");
        chromeOptions.setExperimentalOption("useAutomationExtension", false);
        chromeOptions.setExperimentalOption("excludeSwitches", Collections.singletonList("enable-automation"));
        chromeOptions.addArguments("disable-popup-blocking");
        chromeOptions.setExperimentalOption("mobileEmulation", mobileEmulation);
//        chromeOptions.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
        chromeOptions.setCapability(CapabilityType.ACCEPT_INSECURE_CERTS, true);
        chromeOptions.addArguments("--enable-automation");
        if (System.getenv("CHROME_HEADLESS") != null) {

            chromeOptions.addArguments("--headless");
            chromeOptions.addArguments("--disable-gpu");
            chromeOptions.addArguments("--disable-setuid-sandbox");
            chromeOptions.addArguments("--hide-scrollbars");
            chromeOptions.addArguments("--ignore-ssl-errors");
        }
        // Set Chrome Profile Preferences
        Map<String, Object> prefs = new HashMap<String, Object>();
        prefs.put("credentials_enable_service", false);
        prefs.put("password_manager_enabled", false);
        chromeOptions.setExperimentalOption("prefs", prefs);
        return chromeOptions;
    }
    private ChromeOptions chromeOptions_desktop(){
        ChromeOptions chromeOptions = new ChromeOptions();
//        chromeOptions.addArguments("--disable-extensions");
        chromeOptions.addArguments("-incognito");
        chromeOptions.setExperimentalOption("useAutomationExtension", false);
        chromeOptions.setExperimentalOption("excludeSwitches", Collections.singletonList("enable-automation"));
        chromeOptions.addArguments("disable-popup-blocking");
        chromeOptions.addArguments("start-maximized");
//        chromeOptions.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
        chromeOptions.setCapability(CapabilityType.ACCEPT_INSECURE_CERTS, true);
        chromeOptions.addArguments("--enable-automation");
        double zoomLevel = 0.9;
//         Add zoom level as a command-line argument
         chromeOptions.addArguments("force-device-scale-factor=" + zoomLevel);
        if (System.getenv("CHROME_HEADLESS") != null) {
            chromeOptions.addArguments("--headless");
            chromeOptions.addArguments("--disable-gpu");
            chromeOptions.addArguments("--disable-setuid-sandbox");
            chromeOptions.addArguments("--hide-scrollbars");
            chromeOptions.addArguments("--ignore-ssl-errors");
        }
        // Set Chrome Profile Preferences
        Map<String, Object> prefs = new HashMap<String, Object>();
        prefs.put("credentials_enable_service", false);
        prefs.put("password_manager_enabled", false);
        chromeOptions.setExperimentalOption("prefs", prefs);

        return chromeOptions;
    }
    private FirefoxOptions firefoxOptions(){
        // Setup Firefox Environment
        FirefoxOptions firefoxOptions = new FirefoxOptions();

        firefoxOptions.addArguments("--window-size=1536,722");
//        firefoxOptions.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
        firefoxOptions.setCapability(CapabilityType.ACCEPT_INSECURE_CERTS, true);


        return firefoxOptions;
    }
    private EdgeOptions edgeOptions() {
        // Setup Edge Environment
        EdgeOptions edgeOptions = new EdgeOptions();
//        edgeOptions.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
        edgeOptions.setCapability(CapabilityType.ACCEPT_INSECURE_CERTS, true);

        return edgeOptions;
    }

    public void setBrowser(String browser){
        BROWSER = browser;
    }
    public String getBrowser(){
        return BROWSER;
    }

    public void startsServer() throws Exception{
        CommandLine cmd = new CommandLine("C:\\Program Files (x86)\\Appium\\node.exe");
        cmd.addArgument("C:\\Program Files (x86)\\Appium\\node_modules\\appium\\bin\\Appium.js");
        cmd.addArgument("--address");
        cmd.addArgument("127.0.0.1");
        cmd.addArgument("--port");
        cmd.addArgument("4723");

        DefaultExecuteResultHandler handler = new DefaultExecuteResultHandler();
        DefaultExecutor executor = new DefaultExecutor();
        executor.setExitValue(1);
        try {
            executor.execute(cmd, handler);
            Thread.sleep(10000);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void startAppiumServer() {
        // Set the path to the Node.js executable and Appium.js
        String nodePath = "C:\\Program Files\\nodejs\\node.exe";
        String appiumPath = "C:\\Program Files\\Appium Server GUI\\resources\\app\\node_modules\\appium\\build\\lib\\main.js";

        AppiumServiceBuilder builder = new AppiumServiceBuilder()
                .usingDriverExecutable(new File(nodePath))
                .withAppiumJS(new File(appiumPath))
                .withArgument(GeneralServerFlag.LOCAL_TIMEZONE);



        // Start the Appium server
        service = builder.build();
        service.start();



        if (service.isRunning()) {
            System.out.println("Appium server started successfully.");
        } else {
            System.out.println("Failed to start Appium server.");
        }
    }
    public static void startServer () {
        AppiumServiceBuilder builder = new AppiumServiceBuilder ();
        builder.withIPAddress ("0.0.0.0")
                .usingPort (4723)
                .withAppiumJS (
                        new File("C:\\Program Files\\Appium Server GUI\\resources\\app\\node_modules\\appium\\build\\lib\\main.js"))
                .usingDriverExecutable (new File ("C:\\Program Files\\nodejs\\node.exe"))
//                .withArgument ("-app","/wd/hub")
                .withArgument (GeneralServerFlag.SESSION_OVERRIDE)
                .withArgument (GeneralServerFlag.LOG_LEVEL, "debug");

        service = AppiumDriverLocalService.buildService (builder);
        service.start ();
    }

    public void stopServer() throws Exception {
        Runtime runtime = Runtime.getRuntime();
        try {
            runtime.exec("taskkill /F /IM node.exe");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    public final void setAndroidDriver() throws Exception {
        startAppiumServer();
        DesiredCapabilities capabilities = new DesiredCapabilities();
        capabilities.setCapability("deviceName", "My Phone");
        String appPackage= new PropertyLoaderFactory().getPropertyFile(propFile).getProperty("appPackage");
        String appActivity= new PropertyLoaderFactory().getPropertyFile(propFile).getProperty("appActivity");
        capabilities.setCapability("platformName", "Android");
        capabilities.setCapability(MobileCapabilityType.AUTOMATION_NAME, "UiAutomator2");
        capabilities.setCapability("appPackage", appPackage);
        capabilities.setCapability("appActivity", appActivity);
        capabilities.setCapability("unicodeKeyboard", true);
        capabilities.setCapability("resetKeyboard", true);
        capabilities.setCapability("noReset", false);
        capabilities.setCapability(AndroidMobileCapabilityType.AUTO_GRANT_PERMISSIONS,true);
//        androidDriver =  new AndroidDriver(new URL("http://127.0.0.1:4723/wd/hub"), capabilities);
        androidDriver =  new AndroidDriver(new URL("http://0.0.0.0:4723/wd/hub"), capabilities);
    }
    public final void setWinAppDriver() throws Exception{
        DesiredCapabilities cap = new DesiredCapabilities();
        String appName = new PropertyLoaderFactory().getPropertyFile(propFile).getProperty("winApp");
        cap.setCapability("app", appName);
        cap.setCapability("platformName","Windows");
        cap.setCapability("deviceName","WindowsPC");
        try{
            windDriver = new WindowsDriver(new URL("http://127.0.0.1:4723/"), cap);
        }catch (Exception e){
            System.out.println(e);
        }
    }
    public final void sqlConnect() throws Exception{
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection(SQLdbURL, DB_USER, DB_PASSWORD);
            if(con != null){
                System.out.println("Connected SQL DB");
                stmt = con.createStatement();
            }else{
                System.out.println("Unable to connect SQL DB");
            }
        }catch (Exception e){
            System.err.println("SQL JDBC driver not found.");
            e.printStackTrace();
        }
    }

    public final void oracleConnect() throws Exception{
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(OracledbURL, DB_USER, DB_PASSWORD);

            if (con != null) {
                System.out.println("Connected to Oracle database!");
                stmt = con.createStatement();
            } else {
                System.out.println("Failed to connect to Oracle database.");
            }
            con.close();
        } catch (Exception e) {
            System.err.println("Oracle JDBC driver not found.");
            e.printStackTrace();
        }
    }

    public final void mySQLConnect() throws Exception{
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(mySQLdbURL, DB_USER, DB_PASSWORD);

            if (con != null) {
                System.out.println("Connected to MY SQL database!");
                stmt = con.createStatement();
            } else {
                System.out.println("Failed to connect to MYSQL database.");
            }
            con.close();
        } catch (Exception e) {
            System.err.println("MY SQL JDBC driver not found.");
            e.printStackTrace();
        }
    }

    public static RequestSpecification getRequest(){
        return request;
    }
    public static void setRequest(RequestSpecification requestSpecificationData){
        request = requestSpecificationData;
    }
    public static void setResponse(Response responseData){
        response = responseData;
    }
    public static void setParams(JSONObject paramsData){
        requestParams = paramsData;
    }
}
