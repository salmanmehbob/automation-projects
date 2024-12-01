package UtilitiesFactory;

import atu.testrecorder.ATUTestRecorder;
import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.WordUtils;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.awt.*;
import java.io.*;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;

import static UtilitiesFactory.ServiceFactory.*;

public class UtilFactory {
    protected static ElementFactory elementFactory;
    public static WaitFactory waitFactory;
    private static String envPropFile = "environment.properties";
    public static String ENumPackage = "EnumFactory.Structure.";
    public static String methodName = "getValue";
    private static String screenshotFolder;
    public static String reportLocation;
    protected static String deviceName;
    public static String failureException;
    public static Alert alert;
    public static ServiceFactory serviceFactoryInstance;

    protected int timeOutInMilliSeconds;

    {
        try {


            timeOutInMilliSeconds = Integer.valueOf(new PropertyLoaderFactory().getPropertyFile(envPropFile).getProperty("timeOut"));
            int advTimeOutInMilliSeconds = Integer.valueOf(new PropertyLoaderFactory().getPropertyFile(envPropFile).getProperty("advTimeOut"));
            int pollingTimeInMilliSeconds = Integer.valueOf(new PropertyLoaderFactory().getPropertyFile(envPropFile).getProperty("pollingTime"));

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    static {
        try {
            serviceFactoryInstance = ServiceFactory.getInstance();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private static ATUTestRecorder recorder;
    static {
        try {
            screenshotFolder = new PropertyLoaderFactory().getPropertyFile(envPropFile).getProperty("screenshot.folder");
            reportLocation = new PropertyLoaderFactory().getPropertyFile(envPropFile).getProperty("extent.report.folder");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public ExtentReports extent;
    public static String scenarioName;
    public static ExtentTest scenarioDef;
    public static ExtentTest features;


    protected void click(String locator){
        try
        {
            WebElement element = elementFactory.getElement(locator);
            JavascriptExecutor jse = (JavascriptExecutor)elementFactory.driver;
            jse.executeScript("arguments[0].scrollIntoView();", element);
//            jse.executeScript("arguments[0].click();", element);
            element.click();

        } catch (Exception e)
        {

            throw e;
        }
    }

    protected void SimpleClick(String locator){
        try
        {
            WebElement element = elementFactory.getElement(locator);
//            JavascriptExecutor jse = (JavascriptExecutor)elementFactory.driver;
//            jse.executeScript("arguments[0].scrollIntoView();", element);
////            jse.executeScript("arguments[0].click();", element);
            element.click();

        } catch (Exception e)
        {

            throw e;
        }
    }


    protected void enterString(String locatorValue, String fieldValue) {
        WebElement element = elementFactory.getElement(locatorValue);
       try{
           JavascriptExecutor jse = (JavascriptExecutor)elementFactory.driver;
           jse.executeScript("arguments[0].scrollIntoView();", element);
       }
       catch (Exception e){
         String a = e.toString();
       }


        enterString(element,fieldValue);

    }
    protected void pressKey(String locatorValue) {
        WebElement element = elementFactory.getElement(locatorValue);
        hitEnter(element);
    }
    protected void pressTabKey() throws AWTException {
//        WebElement element = elementFactory.getElement(locatorValue);
//        element.sendKeys(Keys.TAB);
        Actions act = new Actions(elementFactory.driver);

        act.sendKeys(Keys.TAB).build().perform();
        act.sendKeys(Keys.RETURN).build().perform();
    }

    protected String getText(String locatorValue) {
        WebElement element = elementFactory.getElement(locatorValue);
        String actulValue = element.getText();
        return actulValue;
    }

    public void AppendOrderToFileUsingFileWriter(String screenName, String Value)
            throws IOException {

        FileWriter fw = new FileWriter("src/test/resources/Properties/TestData/"+screenName+".properties", true);
        BufferedWriter bw = new BufferedWriter(fw);
        bw.newLine();
        bw.write("OrderNo="+Value+"");
        bw.close();
    }

    protected String getAttributeValue(String locatorValue,String attribute) {
        WebElement element = elementFactory.getElement(locatorValue);
        String actualattributeValue = element.getAttribute(attribute);
        return actualattributeValue;
    }
    protected void enterString(WebElement element, String fieldValue) {
        element.sendKeys(fieldValue);
    }
    protected void hitEnter(WebElement element){element.sendKeys(Keys.ENTER);}

    protected void hover(WebElement element) {
        Actions action = new Actions(ServiceFactory.getDriver());
        action.moveToElement(element).perform();
    }
    public static Boolean isVisible(String locatorValue) {
        int size = elementFactory.getElementList(locatorValue);
        if(size > 0 ){
            return true;
        }
        else {
            return false;
        }
    }
    protected void waitForPageLoad(){
        if(deviceName.equalsIgnoreCase("WEB")){
            waitFactory.waitForPageToFinishLoading(ServiceFactory.getDriver());
        }
    }
    
//    public static String getBase64Screenshot() throws IOException {
//        String Base64StringofScreenshot="";
//        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("MMMM/dd/");
//        DateTimeFormatter dtf2 = DateTimeFormatter.ofPattern("__HH_mm_ss");
//        LocalDateTime now = LocalDateTime.now();
//        TakesScreenshot ts = null;
//        if(deviceName.equalsIgnoreCase("ANDROID")){
//            ts = ServiceFactory.getAndroidDriver();
//        }else if(deviceName.equalsIgnoreCase("WINDOWS")) {
//            ts = ServiceFactory.getWinDriver();
//        }else if(deviceName.equalsIgnoreCase("WEB")){
//            ts = (TakesScreenshot) ServiceFactory.getDriver();
//        }
//        File source = ts.getScreenshotAs(OutputType.FILE);
//        String dest = screenshotFolder + "/" +dtf.format(now) + "/" + deviceName + "/" +scenarioName+"/" +dtf2.format(now)+ ".png";
//        File destination = new File(dest);
//        FileUtils.copyFile(source, destination);
//        byte[] fileContent = FileUtils.readFileToByteArray(source);
//        Base64StringofScreenshot = "data:image/png;base64," + Base64.getEncoder().encodeToString(fileContent);
//        return Base64StringofScreenshot;
//    }

    public static String getBase64Screenshot() throws IOException {
        String base64StringOfScreenshot = "";

        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("MMMM/dd/");
        DateTimeFormatter dtf2 = DateTimeFormatter.ofPattern("__HH_mm_ss");
        LocalDateTime now = LocalDateTime.now();
        TakesScreenshot ts = null;

        if (deviceName == null || deviceName.isEmpty()) {
            throw new IllegalArgumentException("Device name is not provided.");
        }

        if (deviceName.equalsIgnoreCase("ANDROID")) {
            ts = ServiceFactory.getAndroidDriver();
        }
//         else if (deviceName.equalsIgnoreCase("IOS")) {
//            ts = ServiceFactory.getIOSDriver();}
         else {
            ts = (TakesScreenshot) ServiceFactory.getDriver();
        }

        if (ts != null) {
            File source = ts.getScreenshotAs(OutputType.FILE);

            String dest = screenshotFolder + "/" + dtf.format(now) + "/" + deviceName + "/" + scenarioName + "/" + dtf2.format(now) + ".png";
            File destination = new File(dest);
            FileUtils.copyFile(source, destination);

            byte[] fileContent = FileUtils.readFileToByteArray(source);
            base64StringOfScreenshot = "data:image/png;base64," + Base64.getEncoder().encodeToString(fileContent);
        } else {
            System.out.println("Device Name: " + deviceName);
            throw new IllegalStateException("Screenshot capability is not available for the specified device: " + deviceName);
        }

        return base64StringOfScreenshot;
    }

      public static String getLocatorNameforLog(String Locator) throws IOException {
        Locator = Locator.replace("XPATH_","");
        Locator = Locator.replace("_"," ");
        Locator = WordUtils.capitalizeFully(Locator);
        return Locator;
    }
    public int getRandomNumber(int min, int max) {
        return (int) ((Math.random() * (max - min)) + min);
    }
    public static String locatorXpath(String enumClassName, String locator) throws ClassNotFoundException {
        int i = 0;
        String XPath = null;
        Class cls = Class.forName(ENumPackage+enumClassName);
        for (Object obj : cls.getEnumConstants()) {
            try {
                Method m = cls.getMethod(methodName, null);
                XPath = m.invoke(obj, null).toString();
                if(cls.getEnumConstants()[i].toString().equals(locator)){
                    cls = null;
                    m = null;
                    return XPath;
                }
            } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException ex) {
                System.out.println("could not find enum");
            }
            i++;
        }
        return XPath;
    }
    public static ATUTestRecorder recording(String path) throws Exception {
        DateFormat datefromat = new SimpleDateFormat("yy-MM-dd HH-mm-ss");
        Date date = new Date();
        path = System.getProperty("user.dir")+path+"\\";
        Path fileToDeletePath = Paths.get(path).toAbsolutePath();
        File delFile = fileToDeletePath.toAbsolutePath().toFile();
        if(delFile.isDirectory()){
            File[] files = delFile.listFiles();

            for (File f: files) {
                f.delete();
            }
        }
        recorder = new ATUTestRecorder(path,"Execution Video-"+datefromat.format(date),false);
        return recorder;
    }

    public static String getSingleColumn(String query, String columnName) throws Exception {
        ResultSet rs;
        String result = null;
        serviceFactoryInstance.setDBConnection(new PropertyLoaderFactory().getPropertyFile("DB.properties").getProperty("DataBaseName"));
//        serviceFactoryInstance.sqlConnect();
        rs = stmt.executeQuery(query);
        while (rs.next()) {
            // Access and print data from the result set
            result = rs.getString(columnName);
            System.out.println(columnName);
        }
//            con.close();
        return result;
    }


    public void switchToFrame(String locator){
        try
        {
            elementFactory.switchToFrame(locator);
        } catch (Exception e)
        {
            throw e;
        }
    }

    public void switchToDefault(){
        try
        {
            elementFactory.switchToDefault();
        } catch (Exception e)
        {
            throw e;
        }
    }
    public static boolean iframeExistance() {
        return !getDriver().findElements(By.tagName("iframe")).isEmpty();
    }
    public void scrollToValue(String locator){
        try
        {

            WebElement element = elementFactory.getElement(locator);
//            hover(element);
            JavascriptExecutor js = (JavascriptExecutor) elementFactory.driver;
            js.executeScript("arguments[0].scrollTop += 600;", element);


        } catch (Exception e)
        {
            throw e;
        }
    }

    public void switchTab(int TabIndex){
        ArrayList<String> tabs = new ArrayList<String>(elementFactory.driver.getWindowHandles());
        elementFactory.driver.switchTo().window(tabs.get(TabIndex-1));
        elementFactory.driver.manage().window().maximize();
        System.out.println("Tab name is: "+ elementFactory.driver.getTitle());

    }

    public void TabClose(int TabIndex){
        System.out.println("ClosingTab name is: "+ elementFactory.driver.getTitle());
        elementFactory.driver.close();
        switchTab(TabIndex);

    }

    protected void selectDropdownByText(String locatorValue, String optionToSelect) throws Exception {
        WebElement element = elementFactory.getElement(locatorValue);
        selectDropdownByText(element, optionToSelect);
    }

    protected void selectDropdownByText(WebElement element, String fieldValue) {
        try
        {
            Select select = new Select(element);
            select.selectByVisibleText(fieldValue);

        } catch (Exception e)
        {
            throw e;
        }
    }


    protected void upload(String filename,String uploader){
        try
        {
            WebElement fileInput = ServiceFactory.getDriver().findElement(By.xpath(uploader)); // Change this to the actual locator
            File file = new File("src/test/resources/UploadDocuments/"+filename);
            String absolutePath = file.getAbsolutePath();
            // Provide the path to the file you want to upload
//            String filePath = "src/main/java/Resources/"+filename; // Change this to the correct file path

            // Use sendKeys to upload the file
            fileInput.sendKeys(absolutePath);
        } catch (Exception e)
        {
            throw e;
        }
    }

    public static void acceptWinAlert() throws Exception{
        if(isAlertPresent()){
            alert.accept();
        }
    }
    public static void cancelWinAlert() throws Exception{
        if(isAlertPresent()){
            alert.dismiss();
        }
    }
    public static boolean isAlertPresent() throws Exception
    {
        try
        {
            alert = ServiceFactory.getDriver().switchTo().alert();
            return true;
        }   // try
        catch (NoAlertPresentException Ex)
        {
            return false;
        }   // catch
    }

    protected String getAttribute(String locatorValue, String attributeValue)
    {
        WebElement element = elementFactory.getElement(locatorValue);
        return getAttribute(element,attributeValue);
    }

    protected String getAttribute(WebElement element,String attributeValue)
    {
        return element.getAttribute(attributeValue);
    }

    protected void scrollToElement(WebElement element) throws Exception
    {
        JavascriptExecutor js = (JavascriptExecutor) ServiceFactory.getDriver();
        js.executeScript("arguments[0].scrollIntoView();", element);
    }

    protected void scrollToElement(String locatorValue) throws Exception
    {
        WebElement element = elementFactory.getElement(locatorValue);
        scrollToElement(element);
    }

    protected boolean elementIsDisplayed(String locator){
        return elementIsDisplayed(elementFactory.getElement(locator));
    }

    protected boolean elementIsDisplayed(WebElement element){
        return element.isDisplayed();
    }

    protected void staleClearField(String element){
        final int MAX_STALE_ELEMENT_RETRIES = 20;
        final int MAX_ELEMENT_RETRIES = 5;

        WebDriverWait wait = new WebDriverWait(ServiceFactory.getDriver(), Duration.ofMillis(timeOutInMilliSeconds));
        JavascriptExecutor jse = (JavascriptExecutor)ServiceFactory.getDriver();
        int retries = 0;
        while (true) {
            try {
                WebElement elementToClear = wait.until(ExpectedConditions.elementToBeClickable(By.xpath(element)));
                jse.executeScript("arguments[0].value = '';", elementToClear);
                return;
            }
            catch (StaleElementReferenceException e) {
                System.out.println("Goes in Stale Exception clear field");
                if (retries < MAX_STALE_ELEMENT_RETRIES) {
                    System.out.println("Goes in Stale Exception if condition clear field");

                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
            catch (NoSuchElementException e) {
                System.out.println("Goes in No Such Exception clear field");
                if (retries < MAX_ELEMENT_RETRIES) {
                    System.out.println("Goes in No Such Exception if condition clear field");

                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
            catch (TimeoutException e) {
                System.out.println("Goes in Timeout Exception clear field");
                if (retries < MAX_ELEMENT_RETRIES) {
                    System.out.println("Goes in Timeout Exception if condition clear field");

                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
            catch (ElementNotInteractableException e) {
                System.out.println("Goes in Element Not Exception clear field");
                if (retries < MAX_ELEMENT_RETRIES) {
                    System.out.println("Goes in Element Not Exception if condition clear field");

                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
        }
    }

    protected void staleEnterString(String element, String fieldValue ){
        final int MAX_STALE_ELEMENT_RETRIES = 20;
        final int MAX_ELEMENT_RETRIES = 5;

        WebDriverWait wait = new WebDriverWait(ServiceFactory.getDriver(), Duration.ofMillis(timeOutInMilliSeconds));
        JavascriptExecutor jse = (JavascriptExecutor)ServiceFactory.getDriver();

        int retries = 0;
        while (true) {
            try {
               WebElement elementToEnterText = wait.until(ExpectedConditions.elementToBeClickable(By.xpath(element)));
               jse.executeScript("arguments[0].value = arguments[1];", elementToEnterText, fieldValue);
                return;
            }
            catch (StaleElementReferenceException e) {
                System.out.println("Goes in Stale Exception enter text field");

                if (retries < MAX_STALE_ELEMENT_RETRIES) {
                    System.out.println("Goes in Stale Exception if condition enter text field");

                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
            catch (NoSuchElementException e) {
                System.out.println("Goes in No Such Exception enter text field");

                if (retries < MAX_ELEMENT_RETRIES) {
                    System.out.println("Goes in No Such Exception if condition enter text field");

                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
            catch (TimeoutException e) {
                System.out.println("Goes in Timeout Exception enter text field");

                if (retries < MAX_ELEMENT_RETRIES) {
                    System.out.println("Goes in Timeout Exception if condition enter text field");

                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
            catch (ElementNotInteractableException e) {
                System.out.println("Goes in Element Not Exception enter text field");

                if (retries < MAX_ELEMENT_RETRIES) {
                    System.out.println("Goes in Element Not Exception if condition enter text field");

                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
        }
    }

    protected String staleGetTextFromElement(String element ){
        final int MAX_STALE_ELEMENT_RETRIES = 20;
        final int MAX_ELEMENT_RETRIES = 5;

        WebDriverWait wait = new WebDriverWait(ServiceFactory.getDriver(), Duration.ofMillis(timeOutInMilliSeconds));

        int retries = 0;
        while (true) {
            try {
                String getText = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(element))).getText();
                return getText;
            }
            catch (StaleElementReferenceException e) {
                System.out.println("Goes in Stale Exception get text field");

                if (retries < MAX_STALE_ELEMENT_RETRIES) {
                    System.out.println("Goes in Stale Exception if condition get text field");

                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
            catch (NoSuchElementException e) {
                System.out.println("Goes in No Such Exception get text field");

                if (retries < MAX_ELEMENT_RETRIES) {
                    System.out.println("Goes in No Such Exception if condition get text field");

                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
            catch (TimeoutException e) {
                System.out.println("Goes in Timeout Exception get text field");

                if (retries < MAX_ELEMENT_RETRIES) {
                    System.out.println("Goes in Timeout Exception if condition get text field");

                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
            catch (ElementNotInteractableException e) {
                System.out.println("Goes in Element Not Exception get text field");

                if (retries < MAX_ELEMENT_RETRIES) {
                    System.out.println("Goes in Element Not Exception if condition get text field");

                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
        }
    }

    protected String staleGetAttributeFromElement(String element, String attributeName ){
        final int MAX_STALE_ELEMENT_RETRIES = 20;
        final int MAX_ELEMENT_RETRIES = 5;

        WebDriverWait wait = new WebDriverWait(ServiceFactory.getDriver(), Duration.ofMillis(timeOutInMilliSeconds));

        int retries = 0;
        while (true) {
            try {
                String getAttributeValue = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(element))).getAttribute(attributeName);
                return getAttributeValue;
            }
            catch (StaleElementReferenceException e) {
                System.out.println("Goes in Stale Exception get text field");

                if (retries < MAX_STALE_ELEMENT_RETRIES) {
                    System.out.println("Goes in Stale Exception if condition get text field");

                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
            catch (NoSuchElementException e) {
                System.out.println("Goes in No Such Exception get text field");

                if (retries < MAX_ELEMENT_RETRIES) {
                    System.out.println("Goes in No Such Exception if condition get text field");

                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
            catch (TimeoutException e) {
                System.out.println("Goes in Timeout Exception get text field");

                if (retries < MAX_ELEMENT_RETRIES) {
                    System.out.println("Goes in Timeout Exception if condition get text field");

                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
            catch (ElementNotInteractableException e) {
                System.out.println("Goes in Element Not Exception get text field");

                if (retries < MAX_ELEMENT_RETRIES) {
                    System.out.println("Goes in Element Not Exception if condition get text field");

                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
        }
    }

    protected void staleClick(String element){
        final int MAX_STALE_ELEMENT_RETRIES = 20;
        final int MAX_ELEMENT_RETRIES = 5;

        WebDriverWait wait = new WebDriverWait(ServiceFactory.getDriver(), Duration.ofMillis(timeOutInMilliSeconds));
        JavascriptExecutor jse = (JavascriptExecutor)ServiceFactory.getDriver();
        int retries = 0;
        while (true) {
            try {
                WebElement elementToClick = wait.until(ExpectedConditions.elementToBeClickable(By.xpath(element)));
                jse.executeScript("arguments[0].scrollIntoView();", elementToClick);
                elementToClick.click();
                return;
            }
            catch (StaleElementReferenceException e) {
                System.out.println("Goes in Stale Exception click field");

                if (retries < MAX_STALE_ELEMENT_RETRIES) {
                    System.out.println("Goes in Stale Exception if condition click field");
                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
            catch (NoSuchElementException e) {
                System.out.println("Goes in No such Exception click field");

                if (retries < MAX_ELEMENT_RETRIES) {
                    System.out.println("Goes in No such Exception if condition click field");
                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
            catch (TimeoutException e) {
                System.out.println("Goes in Timeout Exception click field");

                if (retries < MAX_ELEMENT_RETRIES) {
                    System.out.println("Goes in Timeout Exception if condition click field");
                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
            catch (ElementClickInterceptedException e) {
                System.out.println("Goes in Intercept Exception click field");

                if (retries < MAX_ELEMENT_RETRIES) {
                    System.out.println("Goes in Intercept Exception if condition click field");
                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
            catch (ElementNotInteractableException e) {
                System.out.println("Goes in Element Not Exception click field");

                if (retries < MAX_ELEMENT_RETRIES) {
                    System.out.println("Goes in Element Not Exception if condition click field");
                    retries++;
                    continue;
                } else {
                    throw e;
                }
            }
        }
    }

    public String splitFunction(String value,String numericValue, int index){

        String[] splitText = value.split(numericValue);
        return splitText[index];
    }


}
