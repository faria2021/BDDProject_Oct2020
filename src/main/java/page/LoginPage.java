package page;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

import net.masterthought.cucumber.json.Output;

public class LoginPage {

	WebDriver driver;
	
	public LoginPage(WebDriver driver) {
		this.driver=driver;
	}
	
	//liberary
		@FindBy(how = How.XPATH, using = "//input[@id='username']")
		
		WebElement User_Name;
		@FindBy(how = How.XPATH, using = "//input[@id='password']")
		WebElement Password;
		@FindBy(how = How.XPATH, using = "//button[@name='login']")
		WebElement SignIn;
		
		
		//interactive actions
		
		public  void enterUserName(String userName) {
			User_Name.sendKeys(userName);
			
		}
	 public void enterPassword(String password) {
		 Password.sendKeys(password);
	 }
	 
	public void enterCredentials(String userName, String password) {
		User_Name.sendKeys(userName);
		Password.sendKeys(password);
	}
	public void clickOnSignInButton() {
		SignIn.click();
	}
	public String getPageTitle() {
		return driver.getTitle();
		
	}
	public void takeScreenshotAtEndOfTest(WebDriver driver) throws IOException{
		
		TakesScreenshot ts =((TakesScreenshot)driver);
		SimpleDateFormat formatter = new SimpleDateFormat("MMddyy_HHmmss");
		Date date= new Date();
		String label = formatter.format(date);
		File sourceFile=ts.getScreenshotAs(OutputType.FILE);
		String currentDir = System.getProperty("user.dir");
		FileUtils.copyFile(sourceFile, new File(currentDir + "/screenshots/"+label+".png"));
	}
}
