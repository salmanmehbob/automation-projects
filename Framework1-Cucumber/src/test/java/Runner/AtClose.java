package Runner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
        features = {
                "src/test/resources/FeatureFiles/AtClose/QA/QALogin.feature",
//                "src/test/resources/FeatureFiles/AtClose/TCE",
//                "src/test/resources/FeatureFiles/API/Sample.feature",

        },
//        tags = "@Smoke",
        monochrome = true,
        plugin = {"html:target/cucumber.html", "pretty"},
        glue = {"com.cucumber.StepsDefinitions",

        "UtilitiesFactory"})

public class AtClose extends AbstractTestNGCucumberTests {


}