package stepdefinitions;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import utilities.Driver;

public class Hooks {

    @Before
    public void setup(){
        System.out.println("setup methodu çalıştı.");
    }
    @After
    public void tearDown(Scenario scenario){
        System.out.println("tearDown methodu çalıştı.");

        // ekran fotosu almak için kullanılır
        final byte[] screenshot = ((TakesScreenshot) Driver.getDriver()).getScreenshotAs(OutputType.BYTES);
        if (scenario.isFailed()){
            scenario.embed(screenshot, "image/png");
        }
        Driver.closeDriver();
    }

}
