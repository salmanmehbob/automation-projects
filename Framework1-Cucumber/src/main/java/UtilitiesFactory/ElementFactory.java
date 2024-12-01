package UtilitiesFactory;

import io.appium.java_client.android.AndroidDriver;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.util.List;

public class ElementFactory {

    WebDriver driver;

    public ElementFactory(WebDriver driver) throws Exception {
        this.driver = driver;
    }

    public ElementFactory(AndroidDriver androidDriver) throws Exception {
        this.driver = androidDriver;
    }

    public WebElement getElement(String locatorValue) {
        WebElement element = null;
        try {
            element = driver.findElement(By.xpath(locatorValue));
            return element;
        } catch (Exception e) {
            throw e;

        }

    }

    public int getElementList(String locatorValue) {

        List<WebElement> elements = null;
        elements = driver.findElements(By.xpath(locatorValue));
        return elements.size();
    }

    public void switchToFrame(String locatorValue){
        WebElement element = null;
        try {
            element = driver.findElement(By.xpath(locatorValue));
            driver.switchTo().frame(element);
        } catch (Exception e) {
            throw e;
        }
        if(element.equals("default")){
            driver.switchTo().defaultContent();
        }
    }

    public void switchToDefault(){

            driver.switchTo().defaultContent();

    }
}
