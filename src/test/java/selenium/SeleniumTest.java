package selenium;

import java.util.concurrent.TimeUnit;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class SeleniumTest {

	private static WebDriver driver = null;

	@Test
	public void testLogin() {
		// Create a new instance of the Firefox driver

		driver = new FirefoxDriver();

		// Put a Implicit wait, this means that any search for elements on the
		// page could take the time the implicit wait is set for before throwing
		// exception

		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

		// Launch the Online Store Website

		driver.get("https://test-boot-fil-project-staging.herokuapp.com/accounts");

		// Find the element that's ID attribute is 'account'(My Account)

		driver.findElement(By.id("nav-menu")).click();


		driver.findElement(By.id("my-surveys-menu")).click();


		driver.findElement(By.id("outstanding-survey-menu")).click();

		
		driver.findElement(By.id("nav-menu")).click();
		driver.findElement(By.id("collaboration_product-menu")).click();


		System.out.println("Login Successfully");

		
		System.out.println("Test case executed Successfully");

		// Close the driver

		driver.quit();
		System.out.println("Driver quiteddddddd.......");
	}

}
