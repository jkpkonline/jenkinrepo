package cucumber.test;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When; 

public class Annotation {
	WebDriver driver = null;
	
	@Given("^User navigates to Heroku app$")
	public void goToMyApp() {
		driver = new FirefoxDriver();
		driver.navigate().to("https://test-boot-fil-project-staging.herokuapp.com/accounts");
		waitToRender();
	}

	@When("^User go to main menu$")
	public void openMainMenu() {
		driver.findElement(By.id("nav-menu")).click();
		waitToRender();
	}

	@When("^User go to the RFP screen$")
	public void goToRpf() {
		driver.findElement(By.id("rfp-menu")).click();
		waitToRender();
	}
	
	@When("^User go to the client dashboard screen$")
	public void goToClientDefaultDashboard() {
		driver.findElement(By.id("client-dashboard-menu")).click();
		waitToRender();
	}

	@When("^User go to the client's sales dashboard screen$")
	public void goToClientSalesDashboard() {
		driver.findElement(By.id("client-dashboard-sales")).click();
		waitToRender();
	}
	
	@When("^User go to the client's assets dashboard screen$")
	public void goToClientAssetsDashboard() {
		driver.findElement(By.id("client-dashboard-assets")).click();
		waitToRender();
		
	}
	
	@When("^User go to the thought leadership screen$")
	public void goToThoughtLeadership() {
		driver.findElement(By.id("thoughtleadership-menu")).click();
		waitToRender();
	}
	
	@When("^User go to the STFW screen$")
	public void goToSTFW() {
		driver.findElement(By.id("stfw-menu")).click();
		waitToRender();
	}
	
	@When("^User go to the opportunity screen$")
	public void goToOpportunity() {
		driver.findElement(By.id("opportunites-menu")).click();
		waitToRender();
	}
	
	void waitToRender() {
		try {
			Thread.currentThread().sleep(2000);
			} catch (Exception ex) {
				ex.printStackTrace();
			}
	}
	
	@Then("^Closing the app$")
	public void checkFail() {
		driver.close();
	}

}
