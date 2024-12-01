package UtilitiesFactory;

import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.windows.WindowsDriver;
import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.*;

import java.time.Duration;
import java.util.List;
import java.util.concurrent.TimeUnit;

import static UtilitiesFactory.UtilFactory.deviceName;
import static UtilitiesFactory.UtilFactory.elementFactory;

public class WaitFactory {

    private WebDriver driver;
    private AndroidDriver driverA;
    private WindowsDriver driverW;

    private String envPropFile = "environment.properties";

    protected int timeOutInMilliSeconds = Integer.valueOf(new PropertyLoaderFactory().getPropertyFile(envPropFile).getProperty("timeOut"));
    protected int advTimeOutInMilliSeconds = Integer.valueOf(new PropertyLoaderFactory().getPropertyFile(envPropFile).getProperty("advTimeOut"));
    protected int pollingTimeInMilliSeconds = Integer.valueOf(new PropertyLoaderFactory().getPropertyFile(envPropFile).getProperty("pollingTime"));


    public WaitFactory(WebDriver driver) throws Exception {
        this.driver = driver;
    }

    public WaitFactory(AndroidDriver androidDriver) throws Exception {
        this.driverA = androidDriver;
    }

    public WaitFactory(WindowsDriver windDriver) throws Exception {
        this.driverW = windDriver;
    }

    public WaitFactory() throws Exception {
        if(deviceName.equalsIgnoreCase("ANDROID")){
            driver = driverA;
        } else if (deviceName.equalsIgnoreCase("WINDOWS")) {
            driver = driverW;
        }else{
            driver = driver;
            System.out.println(driver);
        }
    }

    public void waitForPageToFinishLoading(WebDriver driver) {

        ExpectedCondition<Boolean> pageLoadCondition = driver1 -> ((JavascriptExecutor) driver1).executeScript("return document.readyState").equals("complete");

        Wait<WebDriver> wait = new FluentWait<>(driver)
                .withTimeout(Duration.ofMillis(timeOutInMilliSeconds))
                .pollingEvery(Duration.ofMillis(pollingTimeInMilliSeconds))
                .ignoring(NoSuchElementException.class);

        wait.until(pageLoadCondition);
    }

    public void waitForElementToBeClickable(String locatorValue) {
        if(deviceName.equalsIgnoreCase("ANDROID")){
            WebDriverWait wait = new WebDriverWait(driverA, Duration.ofMillis(timeOutInMilliSeconds));
            wait.until(ExpectedConditions.elementToBeClickable(By.xpath(locatorValue)));
        } else if (deviceName.equalsIgnoreCase("WINDOWS")) {
            WebDriverWait wait = new WebDriverWait(driverW, Duration.ofMillis(timeOutInMilliSeconds));
            wait.until(ExpectedConditions.elementToBeClickable(By.xpath(locatorValue)));
        }else {
                WebDriverWait wait = new WebDriverWait(driver, Duration.ofMillis(timeOutInMilliSeconds));
                wait.until(ExpectedConditions.elementToBeClickable(By.xpath(locatorValue)));
                System.out.println(driver);
        }

    }



    public void waitForElementToBeVisible(String locatorValue) {

           if (deviceName.equalsIgnoreCase("ANDROID")) {
               WebDriverWait wait = new WebDriverWait(driverA, Duration.ofMillis(timeOutInMilliSeconds));
               wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(locatorValue)));
               System.out.println("ANDROID DRIVER :" + driver);
           } else if (deviceName.equalsIgnoreCase("WINDOWS")) {
               WebDriverWait wait = new WebDriverWait(driverW, Duration.ofMillis(timeOutInMilliSeconds));
               wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(locatorValue)));
               System.out.println("WEB DRIVER :" + driver);
           } else {
               WebDriverWait wait = new WebDriverWait(driver, Duration.ofMillis(timeOutInMilliSeconds));
               wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(locatorValue)));
               System.out.println(driver);
//               System.out.println("demo");
           }


//        WebDriverWait wait = new WebDriverWait(driver, TimeUnit.MILLISECONDS.toSeconds(timeOutInMilliSeconds));
//        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(locatorValue)));
    }
    public void waitForIframeToBeAvailable(String locatorValue) {

        if (deviceName.equalsIgnoreCase("ANDROID")) {
            WebDriverWait wait = new WebDriverWait(driverA, Duration.ofMillis(timeOutInMilliSeconds));
            wait.until(ExpectedConditions.frameToBeAvailableAndSwitchToIt((locatorValue)));
            System.out.println("ANDROID DRIVER :" + driver);
        } else if (deviceName.equalsIgnoreCase("WINDOWS")) {
            WebDriverWait wait = new WebDriverWait(driverW, Duration.ofMillis(timeOutInMilliSeconds));
            wait.until(ExpectedConditions.frameToBeAvailableAndSwitchToIt((locatorValue)));
            System.out.println("WEB DRIVER :" + driver);
        } else {
            WebDriverWait wait = new WebDriverWait(driver, Duration.ofMillis(timeOutInMilliSeconds));
            wait.until(ExpectedConditions.frameToBeAvailableAndSwitchToIt((locatorValue)));
            System.out.println(driver);
//               System.out.println("demo");
        }
    }


    public static void staticWait(int waitTime) {
        try {
            Thread.sleep(waitTime);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public void waitForElementToBeVisibleAdv(String locatorValue) {

        WebDriverWait wait = new WebDriverWait(driver, Duration.ofMillis(advTimeOutInMilliSeconds));
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(locatorValue)));
    }


}
