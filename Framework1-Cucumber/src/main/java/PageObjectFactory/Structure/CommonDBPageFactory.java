package PageObjectFactory.Structure;

import UtilitiesFactory.PropertyLoaderFactory;
import UtilitiesFactory.UtilFactory;
import com.aventstack.extentreports.MediaEntityBuilder;
import com.aventstack.extentreports.Status;
import org.junit.Assert;

import static UtilitiesFactory.ServiceFactory.propFile;

public class CommonDBPageFactory extends UtilFactory {
    public CommonDBPageFactory() {}
    public String replaceSpaces(String columnName) {
        String propertyFileName = columnName.replace(" ","_");
        return propertyFileName;
    }
    public String removeSpaces(String queryParam) {
        String propertyFileName = queryParam.replace(" ","");
        return propertyFileName;
    }
    public void verifyColumnName(String query,String columnName,String columnValue) throws Exception{
        try{
            String value = getSingleColumn(query,columnName);
            Assert.assertEquals(columnValue,value);
            scenarioDef.log(Status.PASS,"Verified "+columnName+" Column's value "+value+
                    "</br> " +
                    "Expected Value: "+columnValue+"</br> " +
                    "Executed Query: "+query+"</br> " +
                    "Database Name "+new PropertyLoaderFactory().getPropertyFile(propFile).getProperty("DB_NAME"));
        }catch (Exception e){
            failureException = e.toString();
            scenarioDef.log(Status.FAIL,"Unable to verify Column's : "+columnName+" value, due to error.</br>"+e+"</br> Executed Query: "+query+" in database "+new PropertyLoaderFactory().getPropertyFile(propFile).getProperty("DB_NAME"));
            throw e;
        }
    }
}
