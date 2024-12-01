package UtilitiesFactory;

import org.apache.poi.xwpf.usermodel.Document;
import org.json.XML;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.xml.sax.InputSource;

import javax.xml.crypto.dsig.XMLObject;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Properties;

public class PropertyLoaderFactory {

    private Properties properties;
    private String propertiesPath;
    public static String requestBodyPath = "src/test/resources/API/Requests/";

    public Properties getPropertyFile(String filename) throws Exception {

        String path = null;

        try {

            path = System.getProperty("user.dir") + File.separator + "src/test/resources/Properties/";

        } catch (Exception e) {

            System.err.println("Could not locate .properties file");
            e.printStackTrace();
        }
        return getProperty(path, filename);
    }

    public Properties getTestDataPropertyFile(String filename) throws Exception {

        String path = null;

        try {

            path = System.getProperty("user.dir") + File.separator + "src/test/resources/Properties/TestData/";

        } catch (Exception e) {

            System.err.println("Could not locate Test Data properties file");
            e.printStackTrace();
        }
        return getProperty(path, filename);
    }

    public Properties getLocatorPropertyFile(String filename) throws Exception {

        String path = null;

        try {

            path = System.getProperty("user.dir") + File.separator + "src/test/resources/Properties/Locators/";

        } catch (Exception e) {

            System.err.println("Could not locate Locators properties file");
            e.printStackTrace();
        }
        return getProperty(path, filename);
    }

    public Properties getProperty(String path, String filename) throws Exception {

        propertiesPath = path;

        try {

            File file;

            file = new File(propertiesPath + filename);

            FileInputStream fileInput = new FileInputStream(file);
            properties = new Properties();
            properties.load(fileInput);

        } catch (Exception e) {

            System.err.println("Could not get Properties from the .properties file");
            e.printStackTrace();
            throw e;
        }
        return properties;
    }
    public static JSONObject getJson(String path, String filename) throws Exception {
        filename = filename + ".json";
        JSONParser parser = new JSONParser();
        JSONObject jsonObject;
        try {
            File file;
            file = new File(path + filename);
            Object obj = parser.parse(new FileReader(file));
            jsonObject = (JSONObject) obj;
        } catch (Exception e) {
            System.err.println("Could not get JSON from the JSON file");
            e.printStackTrace();
            throw e;
        }
        return jsonObject;
    }

    public static JSONObject getRequestFile(String filename) throws Exception {

        String path = null;

        try {
            path = System.getProperty("user.dir") + File.separator + requestBodyPath;
        } catch (Exception e) {

            System.err.println("Could not locate JSON file");
            e.printStackTrace();
        }
        return getJson(path, filename);
    }

    public static String getXMLRequestFile(String filePath) {
        try {
            Path path = Paths.get(requestBodyPath+filePath+".xml");
            byte[] fileBytes = Files.readAllBytes(path);
            return new String(fileBytes);
        } catch (IOException e) {
            e.printStackTrace();
            return null; // Handle the exception appropriately based on your use case
        }
    }

}
