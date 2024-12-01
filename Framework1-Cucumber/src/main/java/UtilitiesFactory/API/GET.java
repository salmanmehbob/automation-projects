package UtilitiesFactory.API;

import com.aventstack.extentreports.Status;
import io.restassured.response.Response;
import io.restassured.response.ResponseBody;
import org.junit.Assert;

import static UtilitiesFactory.UtilFactory.scenarioDef;
import static io.restassured.RestAssured.given;

public class GET {
    public static Response GETResponse;
    public static String responseBody;
    public static int StatusCode;

    public static Response GETRequest(String APIUrl) throws Exception
    {
        try{
            GETResponse=
                    given().
                            when().
                            get(APIUrl);
            ResponseBody body = GETResponse.getBody();
            System.out.println("Response Bidy is: "+body.asString());
            responseBody = body.asString();
            System.out.println(GETResponse.getStatusCode());
            StatusCode = GETResponse.getStatusCode();
            scenarioDef.log(Status.PASS,"<h5> <b>GET Request</b> </h5></br>" +
                    "<h6> Endpoint: </h6>"+APIUrl+"</br> " +
                    "<h6>Response </h6></br>"+
                    responseBody+
                    "</br> " +
                    "<h6>HTTP Status Code: <b><font color=green>"+Integer.toString(StatusCode)+"</h6></b>");
            return GETResponse;
        }catch (Exception e){
            scenarioDef.log(Status.PASS,"User tried to request for <b>GET</b> Method on: </br>"+APIUrl+"</br> error:"+e);
            throw new Exception(e);
        }
    }

    public static void getStatusCode(String code) throws Exception {
        try{
            StatusCode = GETResponse.getStatusCode();
            System.out.println(StatusCode);
            int status= Integer.parseInt(code);
            System.out.println(status);
            Assert.assertEquals(status, StatusCode);
        }catch (Exception e){
            throw new Exception(e);
        }
    }
}
