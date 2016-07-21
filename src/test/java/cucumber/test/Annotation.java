package cucumber.test;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When; 

public class Annotation {
	WebDriver driver = null;
	
	@Given("^User navigates to Facebook$")
	public void goToFacebook() {
		driver = new FirefoxDriver();
		driver.navigate().to("https://www.facebook.com/");
	}

	@When("^I enter username as \"(.*)\"$")
	public void enterUsername(String arg1) {
		driver.findElement(By.id("email")).sendKeys(arg1);
	}

	@When("^I enter password as \"(.*)\"$")
	public void enterPassword(String arg1) {
		driver.findElement(By.id("pass")).sendKeys(arg1);
		driver.findElement(By.id("u_0_m")).click();
	}

	@Then("^Login should fail$")
	public void checkFail() {
		if (driver.getCurrentUrl().equalsIgnoreCase("https://www.facebook.com/login.php?login_attempt=1&lwv=110")) {
			System.out.println("Test1 Pass");
		} else {
			System.out.println("Test1 Failed");
		}
		driver.close();
	}

}