package UtilitiesFactory.API;

import UtilitiesFactory.PropertyLoaderFactory;
import com.aventstack.extentreports.Status;
import io.restassured.RestAssured;
import io.restassured.config.RestAssuredConfig;
import io.restassured.config.SSLConfig;
import io.restassured.http.ContentType;
import io.restassured.response.Response;
import io.restassured.response.ResponseBody;
import io.restassured.specification.RequestSpecification;
import org.json.simple.JSONObject;
import org.junit.Assert;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;


import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathFactory;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.util.Map;

import static UtilitiesFactory.PropertyLoaderFactory.getXMLRequestFile;
import static UtilitiesFactory.UtilFactory.scenarioDef;
import static io.restassured.RestAssured.given;

public class POST {
    public static Response POSTResponse;
    public static String responseBody;
    public static int StatusCode;

    static Response Response;

    public static int statusCode;



    public static Response POSTRequest(String Base,String APIUrl, String APIBody) throws Exception {
        try{

            System.out.println(Base+APIUrl);
            System.out.println("Name of body:\t"+APIBody);

            JSONObject requestBody =  PropertyLoaderFactory.getRequestFile(APIBody);
            System.out.println("Request of body:\t"+requestBody.toString());
            POSTResponse= given().baseUri(Base).
                    header("Content-type", "application/xml").
//                    header("custom_header","pre_prod").
                    body(requestBody).
                    when().
                    post(APIUrl);
            ResponseBody body = POSTResponse.getBody();
            System.out.println("Response B0dy is: "+body.asString());
            responseBody = body.asString();
            System.out.println("Response C0de is: "+POSTResponse.getStatusCode());
            StatusCode = POSTResponse.getStatusCode();
            scenarioDef.log(Status.PASS,"<h5> <b>POST Request</b> </h4></br>" +
                    "<h6> Endpoint: </h6>"+Base+APIUrl+"</br> " +
                    "<h6>Payload </h6></br>"+requestBody.toString()+
                    "<h6>Response </h6></br>"+responseBody+"</br> " +
                    "<h6>HTTP Status Code: <b><font color=green>"+Integer.toString(StatusCode)+"</h5></b>");
            return POSTResponse;
        }catch (Exception e){
            scenarioDef.log(Status.FAIL,"User tried to request for <b>POST</b> Method on: </br>"+Base+APIUrl+"</br> error:"+e);
            throw new Exception(e);
        }
    }

    public static void POSTStatusCode(String code) throws Exception {
        try{
            StatusCode = POSTResponse.getStatusCode();
            System.out.println(StatusCode);
            int status= Integer.parseInt(code);
            System.out.println(status);
            Assert.assertEquals(status, StatusCode);
        }catch (Exception e){
            throw new Exception(e);
        }
    }


    public static String POSTRequestXml(String Base, String APIUrl, String APIBody, int expectedStatusCode,
                                        Map<String, String> queryParams, Map<String, String> headers)
            throws Exception {

        disableSslVerification();
        String completeUrl = Base + APIUrl;
        APIBody = getXMLRequestFile(APIBody);

        RequestSpecification requestSpec = given().contentType(ContentType.XML).body(APIBody);

        // Add query parameters dynamically
        if (queryParams != null && !queryParams.isEmpty()) {
            requestSpec.queryParams(queryParams);
        }

        // Add headers dynamically
        if (headers != null && !headers.isEmpty()) {
            requestSpec.headers(headers);
        }

        Response = requestSpec.when().post(completeUrl);

        responseBody = Response.getBody().asString();
        System.out.println("Raw XML Response Body:\n" + responseBody);
        statusCode = Response.getStatusCode();
        System.out.println("Status Code: " + statusCode);
        assertStatusCode(expectedStatusCode);
        return String.valueOf(Response);
    }


    public static String extractValueFromXml(String xmlResponse, String xPathExpression)
            throws Exception {
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();

        // Parse the XML response
        Document document = builder.parse(new ByteArrayInputStream(xmlResponse.getBytes()));

        // Create XPath
        XPathFactory xPathFactory = XPathFactory.newInstance();
        XPath xpath = xPathFactory.newXPath();

        // Compile XPath expression
        XPathExpression expression = xpath.compile(xPathExpression);

        // Evaluate XPath expression on XML document
        return (String) expression.evaluate(document, XPathConstants.STRING);
    }

    public static void assertStatusCode(int expectedStatusCode) {
        // Add your assertion logic here
        Assert.assertEquals(expectedStatusCode, statusCode);
    }
    private static void disableSslVerification() {
        RestAssured.config = RestAssured.config().sslConfig(
                new RestAssuredConfig().sslConfig(new SSLConfig().relaxedHTTPSValidation()).getSSLConfig()
        );
    }

    private static void updateElementValue(Document doc, String elementPath, String newValue) {
        try {
            XPathFactory xPathFactory = XPathFactory.newInstance();
            XPath xpath = xPathFactory.newXPath();

            XPathExpression expr = xpath.compile(elementPath);
            NodeList nodes = (NodeList) expr.evaluate(doc, XPathConstants.NODESET);

            for (int i = 0; i < nodes.getLength(); i++) {
                Node node = nodes.item(i);
                node.setTextContent(newValue);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void writeXmlToFile(Document doc, String filePath) throws TransformerException {
        TransformerFactory transformerFactory = TransformerFactory.newInstance();
        Transformer transformer = transformerFactory.newTransformer();
        DOMSource source = new DOMSource(doc);
        StreamResult result = new StreamResult(new File(filePath));

        // Write the updated XML to the file
        transformer.transform(source, result);
    }
    public static void updateValueInXmlRequestFile(String newValue, String elementPath, String fileName ) throws Exception {
        // Parse the XML file
        String filePath = "src/test/resources/API/Requests/"+fileName+".xml";
        DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
        Document doc = docBuilder.parse(filePath);

        // Update values in the XML document
        updateElementValue(doc, elementPath, newValue);

        // Write the updated XML back to the file
        writeXmlToFile(doc, filePath);
    }


}
