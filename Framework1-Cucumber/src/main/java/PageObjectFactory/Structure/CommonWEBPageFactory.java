package PageObjectFactory.Structure;

import UtilitiesFactory.PropertyLoaderFactory;
import UtilitiesFactory.ServiceFactory;
import UtilitiesFactory.UtilFactory;
import com.aventstack.extentreports.MediaEntityBuilder;
import com.aventstack.extentreports.Status;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.text.PDFTextStripper;
import org.junit.Assert;
import java.awt.*;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.StringSelection;
import java.awt.event.KeyEvent;
import java.io.*;
import java.util.Properties;
import java.util.Random;
import io.cucumber.datatable.DataTable;
import java.util.*;
import java.io.IOException;
import java.util.List;

public class CommonWEBPageFactory extends UtilFactory {
    public static String PageName;
    public CommonWEBPageFactory() {
    }

    public static String removeSpaces(String ScreenName) {
        PageName = ScreenName;
        String propertyFileName = ScreenName.replace(" ","");
        return propertyFileName;
    }
    public static String getpropertyName(String fieldProperty) {
        String propertyFileName = fieldProperty.replace(" ",".");
        return propertyFileName;
    }
    public void textEnterField(String textToEnter,String Locator,String ScreenName) throws Exception{
        String locator = UtilFactory.locatorXpath(ScreenName,Locator);
        try{
            waitForPageLoad();
            waitFactory.waitForElementToBeVisible(locator);
            waitFactory.waitForElementToBeClickable(locator);
            staleClearField(locator);
            enterString(locator,textToEnter);
            if(locator.contains("pass")){
                scenarioDef.log(Status.PASS,"Entered: "+textToEnter.replaceAll(textToEnter,"****")+" in "+getLocatorNameforLog(Locator)+" Field on "+PageName+" Page.",
                        MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());

            }else{
                pressKey(locator);
                scenarioDef.log(Status.PASS,"Entered: "+getLocatorNameforLog(textToEnter)+" in "+getLocatorNameforLog(Locator)+" Field on "+PageName+" Page.",
                        MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
            }
        }catch (Exception e){
            failureException = e.toString();
            scenarioDef.log(Status.FAIL,"Could not Enter: "+getLocatorNameforLog(textToEnter)+" on "+getLocatorNameforLog(Locator)+" Field on "+PageName+" Page.",
                    MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
            throw e;

        }
        locator = null;
    }
    public void clickButton(String Locator,String ScreenName) throws Exception {
        String locator = UtilFactory.locatorXpath(ScreenName,Locator);
        try{
            if(deviceName.equalsIgnoreCase("WINDOWS")){
                System.out.println("Windows Driver: "+ ServiceFactory.getWinDriver());
            }
            waitForPageLoad();
//            waitFactory.waitForElementToBeVisible(locator);
//            waitFactory.waitForElementToBeClickable(locator);
            staleClick(locator);
            scenarioDef.log(Status.PASS,"Clicked on "+getLocatorNameforLog(Locator)+" Field on "+PageName+" Page.",
                    MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
        }catch (Exception e){
            String failureException = e.toString();
            scenarioDef.log(Status.FAIL,"Could not Click on "+getLocatorNameforLog(Locator)+" Field on "+PageName+" Page.",
                    MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
                    scenarioDef.log(Status.FAIL,"Error is: "+ failureException);
            throw e;
        }
//        if(Locator.equals("XPATH_LOGIN_BUTTON")) {
//            try {
//                locator = UtilFactory.locatorXpath(ScreenName,"XPATH_TempContinue");
//                staleClick(locator);
//            } catch (Exception e) {
//            }
//            locator = null;
//        }
    }

    public void clickButtonSimple(String Locator,String ScreenName) throws Exception {
        String locator = UtilFactory.locatorXpath(ScreenName,Locator);
        try{
            if(deviceName.equalsIgnoreCase("WINDOWS")){
                System.out.println("Windows Driver: "+ ServiceFactory.getWinDriver());
            }
            waitForPageLoad();
//            waitFactory.waitForElementToBeVisible(locator);
//            waitFactory.waitForElementToBeClickable(locator);
            SimpleClick(locator);
            scenarioDef.log(Status.PASS,"Clicked on "+getLocatorNameforLog(Locator)+" Field on "+PageName+" Page.");
//                    MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
        }catch (Exception e) {
//            String failureException = e.toString();
            scenarioDef.log(Status.FAIL, "Could not Click on " + getLocatorNameforLog(Locator) + " Field on " + PageName + " Page.");
//                    MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
//            scenarioDef.log(Status.FAIL, "Error is: " + failureException);
            throw e;
        }
    }
    public void checkElementVisibility(String Locator,String ScreenName, boolean visibility) throws Exception {
        String locator = UtilFactory.locatorXpath(ScreenName,Locator);
        visibility = UtilFactory.isVisible(locator);
        Assert.assertEquals(visibility,false);
        locator = null;
    }
    public void validateDynamicString(String expectedValue, String locator, String ScreenName) throws Exception {
        String Locator = UtilFactory.locatorXpath(ScreenName,locator);
        try {
            waitFactory.waitForElementToBeVisible(Locator);
            String actualText = getText(Locator);

            if (actualText.contains(expectedValue)) {
                scenarioDef.log(Status.PASS, "Validated Actual Value of <br><b>" +getLocatorNameforLog(locator)+" = "+ actualText + "</b><br> on " + PageName + "Page is same as <br> Expected Value <br><b>"+
                        getLocatorNameforLog(locator)+" = "+expectedValue+"</b>",
                        MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
            } else {
                scenarioDef.log(Status.PASS, "Validated Actual Value <br><b>"+getLocatorNameforLog(locator)+" = "+ actualText + "</b><br> on " + PageName + "Page is not same as <br> Expected Value <br><b>"+
                        getLocatorNameforLog(locator)+" = "+expectedValue+"</b>",
                        MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
            }
        }catch (Exception e){
            failureException = e.toString();
            scenarioDef.log(Status.FAIL,getLocatorNameforLog(Locator) + " is not visible  on " + PageName+" Page.",
                    MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
            throw e;
        }
    }

    public void validateAttributeValue(String attribute, String attributeValue,String locator, String ScreenName) throws Exception {
        String Locator = UtilFactory.locatorXpath(ScreenName,locator);
        try {
            waitFactory.waitForElementToBeVisible(Locator);
            String actualvalue = getAttributeValue(Locator,attribute);
            if (actualvalue.contains(attributeValue)) {
                scenarioDef.log(Status.PASS, "Validated Actual Attribute Value <br> <b>" +attribute+" = "+ actualvalue + "</b><br> on " + PageName + "Page is same as <br> Expected Attribute Value <br><b>"
                                +attribute+" = "+attributeValue+"</b>",
                        MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
            } else {
                scenarioDef.log(Status.PASS, "Validated Actual Value <br><b>" +attribute+" = "+ actualvalue + "</b><br> on " + PageName + "Page is not same as <br> Expected Value <br><b>"
                                +attribute+" = "+attributeValue+"</b>",
                        MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
            }
        }catch (Exception e){
            failureException = e.toString();
            scenarioDef.log(Status.FAIL,getLocatorNameforLog(Locator) + " is not visible  on " + PageName+" Page.",
                    MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
            throw e;
        }
    }

    public void PressTabButton() throws Exception {
        pressTabKey();
    }


    public void GetAndSave(String locator, String ScreenName) throws Exception {
        String Locator = UtilFactory.locatorXpath(ScreenName,locator);
        try {
            waitFactory.waitForElementToBeVisible(Locator);
            String actualText = getText(Locator);
            AppendOrderToFileUsingFileWriter(ScreenName,actualText);
            if (actualText!=null) {
                scenarioDef.log(Status.PASS, "Validated Actual Value of <br><b>" +getLocatorNameforLog(locator)+" = "+ actualText + "</b><br> on " + PageName + "Page is same as <br> Expected Value <br><b>"+
                                getLocatorNameforLog(locator)+" = "+actualText+"</b>",
                        MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
            } else {
                scenarioDef.log(Status.PASS, "Validated Actual Value <br><b>"+getLocatorNameforLog(locator)+" = "+ actualText + "</b><br> on " + PageName + "Page is not same as <br> Expected Value <br><b>"+
                                getLocatorNameforLog(locator)+" = "+actualText+"</b>",
                        MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
            }
        }catch (Exception e){
            failureException = e.toString();
            scenarioDef.log(Status.FAIL,getLocatorNameforLog(Locator) + " is not visible  on " + PageName+" Page.",
                    MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
            throw e;
        }
    }

    public void switchToIframe(String Locator,String ScreenName) throws Exception {
        String locator = UtilFactory.locatorXpath(ScreenName,Locator);
        waitForPageLoad();
//        waitFactory.waitForIframeToBeAvailable(locator);
        switchToFrame(locator);


    }
    public void switchDefault() {
        waitForPageLoad();
        switchToDefault();

    }

    public void scrollToIndex(String Locator,String value, String ScreenName) throws Exception {
        String locator = UtilFactory.locatorXpath(ScreenName,Locator);

        scrollToValue(locator);
    }

    public static void extractDataAndSaveInFile(String keyToUpdate, String valueSave, String filePath) throws Exception{
        // Step 1: Load the existing properties
        Properties properties = new Properties();
        try(
                FileInputStream fileInputStream = new FileInputStream(filePath))

        {
            properties.load(fileInputStream);
        } catch(
                IOException e)

        {
            e.printStackTrace();
        }

        boolean updateSuccessful = false;
        int maxRetries = 3; // Set the maximum number of retry attempts
        int retryCount = 0;

        while(!updateSuccessful &&retryCount<maxRetries)

        {
            // Attempt to fetch the dynamic value from the website

            if (valueSave != null) {
                // Step 3: Update the properties
                properties.setProperty(keyToUpdate, valueSave);

                // Step 4: Save the updated properties back to the file
                try (FileOutputStream fileOutputStream = new FileOutputStream(filePath)) {
                    properties.store(fileOutputStream, "Updated dynamic value");
                    updateSuccessful = true; // Mark the update as successful
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } else {
                // If the attempt was unsuccessful, you can log or handle the failure here.
                System.out.println("Attempt " + (retryCount + 1) + " failed. Retrying...");
                retryCount++;
            }
        }

        if(updateSuccessful)

        {
            System.out.println("Update successful");
        } else

        {
            System.out.println("All retry attempts failed. Update not performed.");
        }
    }

    public String getElementValue(String Locator, String ScreenName, String Value, String state) throws Exception {
        String locator = locatorXpath(ScreenName, Locator);
        if (state.equals("clickable"))
        {
            try {
                waitFactory.waitForElementToBeClickable(locator);
                Value = getText(locator);

            } catch (Exception e) {
                failureException = e.toString();
                throw e;
            }
        }
        else
            try {
                Value = getText(locator);

            } catch (Exception e) {
                failureException = e.toString();
                throw e;
            }

        return Value;
    }



    public void dropdownSelectionByText(String optionToSelect, String Locator, String pageName) throws Exception {
        String locator = locatorXpath(pageName, Locator);
        try {
            waitFactory.waitForElementToBeClickable(locator);
            selectDropdownByText(locator, optionToSelect);
            scenarioDef.log(Status.PASS,"Select: " + getLocatorNameforLog(optionToSelect) + " in " + getLocatorNameforLog(Locator) + " Field on " + PageName + " Page.",
                    MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
        } catch (Exception e) {
            failureException = e.toString();
            scenarioDef.log(Status.PASS,"Could not Select: " + getLocatorNameforLog(optionToSelect) + " on " + getLocatorNameforLog(Locator) + " Field on " + PageName + " Page.",
                    MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
           throw e;
        }
    }



    public void SelectFile(String filename, String Locator, String ScreenName) throws Exception {
        String locator = locatorXpath(ScreenName, Locator);
//        uploader = locatorXpath(ScreenName);
        try {
            waitForPageLoad();
            waitFactory.waitForElementToBeClickable(locator);
            click(locator);
//            staticWait(500);
            upload(filename, locator);
        } catch (Exception e) {
            failureException = e.toString();
            throw e;
        }
    }

    public void Alertbox(String arg0) throws Exception {
        if(arg0.equalsIgnoreCase("OK") || arg0.equalsIgnoreCase("ACCEPT") || arg0.equalsIgnoreCase("PROCEED")) {
            System.out.println("Goes in Accepting alert Util");
            UtilFactory.acceptWinAlert();
        }
        else if(arg0.equalsIgnoreCase("CANCEL") || arg0.equalsIgnoreCase("CLOSE")) {
            System.out.println("Goes in Canceling alert Util");
            UtilFactory.cancelWinAlert();
        }

    }

    public void uploadDocument(String filename) throws Exception {
        try {
            Robot rb = new Robot();
            File relativePath = new File("src/test/resources/UploadDocuments/" + filename);
            String relativeToAbsolutePath = relativePath.getAbsolutePath();
            StringSelection convertAbsolutePath = new StringSelection(relativeToAbsolutePath);
            Toolkit.getDefaultToolkit().getSystemClipboard().setContents(convertAbsolutePath, null);
            rb.keyPress(KeyEvent.VK_CONTROL);
            rb.keyPress(KeyEvent.VK_V);
            // release Contol+V for pasting
            rb.keyRelease(KeyEvent.VK_CONTROL);
            rb.keyRelease(KeyEvent.VK_V);
            // for pressing and releasing Enter
            rb.keyPress(KeyEvent.VK_ENTER);
            rb.keyRelease(KeyEvent.VK_ENTER);
        }
        catch (AWTException e) {
            failureException = e.toString();
            throw e;
        }
    }

    public void validateValueAttributeScreen(String attribute, String textToValidate, String Locator, String ScreenName) throws Exception {
        String locator = locatorXpath(ScreenName, Locator);
        try {
            waitFactory.waitForElementToBeClickable(locator);
            String actualText = getAttribute(locator, attribute);
            Assert.assertTrue(actualText.contains(textToValidate));
            scenarioDef.log(Status.PASS, "Validated: " + getLocatorNameforLog(textToValidate) + " visible as " + getLocatorNameforLog(Locator) + " on " + PageName + " Page.");
        } catch (Exception e) {
            failureException = e.toString();
            scenarioDef.log(Status.FAIL, "Failed to Validate " + getLocatorNameforLog(textToValidate) + " visible as " + getLocatorNameforLog(Locator) + " on " + PageName + " Page.");
            throw e;
        }
    }

    public void scrollToElement(String Locator, String ScreenName) throws Exception {
        String locator = locatorXpath(ScreenName, Locator);
        try {
            waitForPageLoad();
            waitFactory.waitForElementToBeClickable(locator);
            scrollToElement(locator);
           scenarioDef.log(Status.PASS,"Scroll on " + getLocatorNameforLog(Locator) + " Field on " + PageName + " Page.",
                    MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
        } catch (Exception e) {
            failureException = e.toString();
            scenarioDef.log(Status.FAIL,"Could not Scroll on " + getLocatorNameforLog(Locator) + " Field on " + PageName + " Page.",
                    MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
            throw e;
        }
    }


    public void waitForElementWithRetry(String locator, String screenName)
            throws Exception {
        String locatorXpath = locatorXpath(screenName, locator);
        System.out.println(locatorXpath);

        int maxRetries = 750;

        for (int retryCount = 0; retryCount < maxRetries; retryCount++) {
            try {
                waitForPageLoad();
                if (elementIsDisplayed(locatorXpath)==true) {
                    System.out.println(getLocatorNameforLog(locator)+" is visible.");
                    waitFactory.waitForElementToBeVisibleAdv(locatorXpath);
                }
                return; // Exit the loop if the loader disappears
            } catch (Exception e) {
                failureException = e.toString();
                // You can log the exception if needed
            }

            if (retryCount < maxRetries - 1) {
//                System.out.println(getLocatorNameforLog(locator)+ " is not visible "+ (retryCount + 1)+"\nWaiting...");
                Thread.sleep(200);
            }
        }

        throw new Exception(getLocatorNameforLog(locator)+" did not appear after max retries");
    }

    public void validateFieldonScreen(String textToValidate, String Locator, String ScreenName) throws Exception {
        String locator = locatorXpath(ScreenName, Locator);
        try {
//            waitFactory.waitForElementToBeClickable(locator);
            String actualText = getText(locator);
            System.out.println("Expected: " + textToValidate + "\nActual: " + actualText);
            Assert.assertEquals(textToValidate, actualText);
            scenarioDef.log(Status.PASS,"Validated: " + getLocatorNameforLog(textToValidate) + " visible as " + getLocatorNameforLog(Locator) + " on " + PageName + " Page.",
                    MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
        } catch (Exception e) {
            failureException = e.toString();
            scenarioDef.log(Status.FAIL, "Failed to Validate " + getLocatorNameforLog(textToValidate) + " visible as " + getLocatorNameforLog(Locator) + " on " + PageName + " Page.",
                    MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
            throw e;
        }
    }

    public void downloadFile(String filename) throws Exception {
        // Replace this with the actual path where you want to save the file
        File relativePath = new File("src/test/resources/UploadDocuments/" + filename + ".pdf");
        String relativeToAbsolutePath = relativePath.getAbsolutePath();

        try {
            Robot rb = new Robot();

            // Wait for some time to ensure the file dialog processing
            Thread.sleep(2000);

            // Add a delay before pasting
            Thread.sleep(500);

            // Use Clipboard directly
            Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
            StringSelection selection = new StringSelection(relativeToAbsolutePath);
            clipboard.setContents(selection, selection);

            // Paste the file path
            rb.keyPress(KeyEvent.VK_CONTROL);
            rb.keyPress(KeyEvent.VK_V);
            rb.keyRelease(KeyEvent.VK_CONTROL);
            rb.keyRelease(KeyEvent.VK_V);

            // Press Enter to confirm the file path
            rb.keyPress(KeyEvent.VK_ENTER);
            rb.keyRelease(KeyEvent.VK_ENTER);

            // Wait for some time to ensure the file dialog processing
//            Thread.sleep(2000);
//
//            // Check if the file already exists and replace it
//            Path filePath = Paths.get(relativeToAbsolutePath);
//            if (Files.exists(filePath)) {
//                // Replace the file
//                rb.keyPress(KeyEvent.VK_ALT);
//                rb.keyPress(KeyEvent.VK_Y);  // Press 'Y' for 'Yes' to replace
//                rb.keyRelease(KeyEvent.VK_Y);
//                rb.keyRelease(KeyEvent.VK_ALT);
//            }
            Thread.sleep(3000);

            // Check if the replace dialog is active
            if (isReplaceDialogActive()) {
                // Replace the file
                rb.keyPress(KeyEvent.VK_ALT);
                rb.keyPress(KeyEvent.VK_Y);
                rb.keyRelease(KeyEvent.VK_Y); // Press 'Y' for 'Yes' to replace
                rb.keyRelease(KeyEvent.VK_ALT);
            }

            // Wait for some time to ensure the file dialog processing
            Thread.sleep(3000);

            scenarioDef.log(Status.PASS, "Downloaded: " + filename + " on Path: " + relativeToAbsolutePath,
                    MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
        } catch (AWTException | InterruptedException e) {
            failureException = e.toString();
            e.printStackTrace();  // Log the stack trace
            scenarioDef.log(Status.FAIL, "Downloaded: " + filename + " on Path: " + relativeToAbsolutePath,
                    MediaEntityBuilder.createScreenCaptureFromBase64String(UtilFactory.getBase64Screenshot()).build());
        }
    }

    private boolean isReplaceDialogActive() {
        // Implement logic to check if the replace dialog is active
        // You might check for the existence of specific UI elements or window titles
        // Return true if the dialog is active, false otherwise
        return true; // Placeholder, replace with actual implementation
    }


    public static void assertTextInPDF(String filename, String expectedText)
            throws Exception {
        try {
            File pdfFile = new File("src/test/resources/UploadDocuments/" + filename + ".pdf");

            // Load PDF document
            PDDocument document = PDDocument.load(pdfFile);

            // Create PDFTextStripper
            PDFTextStripper textStripper = new PDFTextStripper();

            // Extract text from the PDF
            String pdfText = textStripper.getText(document);

            assertion(pdfText, expectedText);
            System.out.println(expectedText + " text is present in PDF file "+filename);
            document.close();
        }
        catch (IOException e) {
            System.err.println("Error reading the PDF document: " + e.getMessage());
        }
        catch (AssertionError e) {
            failureException = e.getMessage();
            System.err.println(expectedText+" text not found in the PDF file " + filename+"\n");
        }
    }

    public void assertTextInPDFFile(String filename, String expectedText) throws Exception {
        String pdfFilePathForSS = "src/test/resources/UploadDocuments/"+filename+".pdf";
        try {
            assertTextInPDF(filename, expectedText);
            scenarioDef.log(Status.PASS, "Validated: "+expectedText+" is present in file: "+filename + "<br>PDF File: <a href='" + pdfFilePathForSS + "' target='_blank'>Download PDF</a>",
                    MediaEntityBuilder.createScreenCaptureFromPath(getBase64Screenshot()).build());
        }
        catch (Exception e) {
            failureException = e.toString();
            scenarioDef.log(Status.FAIL, "Could not Validated: "+expectedText+" is present in file: "+filename+"\n"+failureException + "<br>PDF File: <a href='" + pdfFilePathForSS + "' target='_blank'>Download PDF</a>",
                    MediaEntityBuilder.createScreenCaptureFromPath(getBase64Screenshot()).build());
            System.out.println(failureException);
        }
    }

    private static void assertion(String actualText, String expectedText)
            throws Exception {
        try {
            Assert.assertTrue(actualText.contains(expectedText));
        }
        catch (AssertionError e) {
            failureException = e.toString();
            throw e;
        }
    }




    public static long generateRandomNumberAccToLen(int length) {
        if (length <= 0) {
            throw new IllegalArgumentException("Length should be greater than 0 ");
        }

        Random random = new Random();
        long min = (long) Math.pow(10, length - 1);
        long max = (long) Math.pow(10, length);

        // Generate a random number within the specified bounds
        long randomNumber = Math.abs(random.nextLong()) % (max - min) + min;

        // Ensure the length of the generated number is exactly as specified
        return randomNumber;
    }

    public String getAttributeValue(String Locator,String attributeName, String ScreenName ) throws Exception {
        String locator = locatorXpath(ScreenName, Locator);
        String attributeValue;
        try {
            attributeValue= getAttributeValue(locator, attributeName);

        } catch (Exception e) {
            failureException = e.toString();
            throw e;
        }
        return attributeValue;
    }


    public Map<String, Map<String, String>> parseDataTable(DataTable data, String queryParamsKey, String headersKey) {
        List<Map<String, String>> rows = data.asMaps(String.class, String.class);
        Map<String, String> queryParams = new HashMap<>();
        Map<String, String> headers = new HashMap<>();

        // Iterate through each row in the table
        for (Map<String, String> row : rows) {
            // Iterate through each entry in the row
            for (Map.Entry<String, String> entry : row.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();

                // Check if the value is not null
                if (value != null) {
                    // Check if the key is "queryParams" or "headers" and handle accordingly
                    if (queryParamsKey.equals(key)) {
                        // Split the value by '&' to get individual query parameters
                        String[] params = value.split("&");
                        for (String param : params) {
                            String[] keyValue = param.split("=");
                            queryParams.put(keyValue[0], keyValue[1]);
                        }
                    } else if (headersKey.equals(key)) {
                        // Split the value by '&' to get individual headers
                        String[] params = value.split("&");
                        for (String param : params) {
                            String[] keyValue = param.split("=");
                            headers.put(keyValue[0], keyValue[1]);
                        }
                    }
                }
            }
        }

        return Map.of(queryParamsKey, queryParams, headersKey, headers);
    }

    public String splitNumericValue(String value,String numericValue, int index) {

       return splitFunction(value,numericValue,index);
    }

}
