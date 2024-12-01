package UtilitiesFactory.API;

import UtilitiesFactory.PropertyLoaderFactory;
import com.aventstack.extentreports.Status;
import io.restassured.response.Response;
import io.restassured.response.ResponseBody;
import org.json.simple.JSONObject;
import org.junit.Assert;

import static UtilitiesFactory.UtilFactory.scenarioDef;
import static io.restassured.RestAssured.given;

public class PATCH {
    public static Response PATCHResponse;
    public static String responseBody;
    public static int StatusCode;

    public static Response PATCHRequest(String Base,String APIUrl, String APIBody) throws Exception {
        try{
            System.out.println(Base+APIUrl);
            System.out.println(APIBody);
            JSONObject requestBody =  PropertyLoaderFactory.getRequestFile(APIBody);
            PATCHResponse= given().baseUri(Base).
                    header("Content-type", "application/json").
                    header("custom_header","pre_prod").
                    body(requestBody).
                    when().
                    patch(APIUrl);
            ResponseBody body = PATCHResponse.getBody();
            System.out.println("Response B0dy is: "+body.asString());
            responseBody = body.asString();
            System.out.println("Response C0de is: "+PATCHResponse.getStatusCode());
            StatusCode = PATCHResponse.getStatusCode();
            scenarioDef.log(Status.PASS,"<h5> <b>PATCH Request</b> </h4></br>" +
                    "<h6> Endpoint: </h6>"+Base+APIUrl+"</br> " +
                    "<h6>Payload </h6></br>"+requestBody.toString()+
                    "<h6>Response </h6></br>"+responseBody+"</br> " +
                    "<h6>HTTP Status Code: <b><font color=green>"+Integer.toString(StatusCode)+"</h5></b>");
            return PATCHResponse;
        }catch (Exception e){
            scenarioDef.log(Status.PASS,"User tried to request for <b>PATCH</b> Method on: </br>"+Base+APIUrl+"</br> error:"+e);
            throw new Exception(e);
        }
    }

    public static void PATCHStatusCode(String code) throws Exception {
        try{
            StatusCode = PATCHResponse.getStatusCode();
            System.out.println(StatusCode);
            int status= Integer.parseInt(code);
            System.out.println(status);
            Assert.assertEquals(status, StatusCode);
        }catch (Exception e){
            throw new Exception(e);
        }
    }
}
