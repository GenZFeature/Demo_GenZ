package com.bnpp.steps;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

import org.json.simple.parser.ParseException;

import com.bnpp.library.CommonActions;
import com.bnpp.runner.JunitRunner;
import com.bnpp.utilities.Configurations;
import com.bnpp.xray.Log;
import com.bnpp.xray.XrayHelper;
import com.dab.xray.XRAY_CONFIG;
import com.dab.xray.Xray;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class Luanch_URL {

	CommonActions commonActions;
	// String testStart = "";
	String testFinish = "";
	String XrayIssueKey = "";

	public  Luanch_URL(CommonActions con) {
		this.commonActions = con;
	}

	/**
	 * 
	 * @param s
	 * @throws Exception
	 *             Description Initialization before starting of each scenario
	 *             execution
	 */

	
	@Before
	public void before(Scenario s) throws Exception {

		if ((Configurations.RunOnBrowserStack).equals("Y")) {
			commonActions.initReports(s.getName() + "_" + System.getProperty("browser"));
		} else {
			commonActions.initReports(s.getName() + "_" + "chrome");
		}
		commonActions.setfeaturefilenameandsceanrio(s.getId(), s.getName());
		commonActions.setScenario(s);

		checkNewTest(s);
	}

	/**
	 * Description Closing the resources after execution of each scenario
	 * 
	 * @throws IOException
	 */
	@After
	public void after(Scenario s) {

		commonActions.quit();

		saveTestResultsToXray(s);

	}

	private void saveTestResultsToXray(Scenario s) {

		ZonedDateTime finishDateTime = ZonedDateTime.now();
		testFinish = finishDateTime.truncatedTo(ChronoUnit.SECONDS).format(DateTimeFormatter.ISO_OFFSET_DATE_TIME);
		Log.info("Test Finish Time: " + testFinish);

		if (s.isFailed()) {
			Log.error("Test Failed!");
			JunitRunner.featureTestPassed = false;
			Xray.writeResultsForSingleTest(JunitRunner.ExecutionID, XrayIssueKey, XRAY_CONFIG.TEST_STATUS_FAIL,
					JunitRunner.testStart, testFinish);
		} else {
			if (JunitRunner.featureTestPassed == true) {
				Log.info("Test Passed!");
				Xray.writeResultsForSingleTest(JunitRunner.ExecutionID, XrayIssueKey, XRAY_CONFIG.TEST_STATUS_PASS,
						JunitRunner.testStart, testFinish);
			}
		}

	}

	private void checkNewTest(Scenario s) {
		XrayIssueKey = XrayHelper.getTestIdFromFileName(s.getId());

		if (!JunitRunner.currentXrayIssueKey.contains(XrayIssueKey)) {
			System.out.println("This is a new Feature!");
			JunitRunner.currentXrayIssueKey = XrayIssueKey;
			JunitRunner.featureTestPassed = true;
		}

	}

	// ********Common step definitions ************//
	/*
	 * private String getTestIdFromFileName(String path) { String result = ""; File
	 * f = new File(path); //System.out.println("File Name1: " +
	 * f.getName().toString().toUpperCase().replace("_", "-").trim()); result =
	 * f.getName().toString().toUpperCase().replace("_",
	 * "-").trim().split(".FEATURE")[0]; System.out.println("File Name: " + result);
	 * // result = f.getName().toString().toUpperCase().replace("_", "-").trim();
	 * return result; }
	 * 
	 */
	
	
	@Given("User luanch the URL")
	public void user_luanch_the_URL() {
		
		try {
			commonActions.launchBrowser();
			Thread.sleep(10000);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
	    
	}


@When("User Logs in with {string}, {string}")
public void user_Logs_in_with(String Username, String Password) throws IllegalArgumentException, InterruptedException {
  
	try {
		String str = commonActions.getValueFromJson(Username);
		commonActions.enterText(Username,commonActions.getKeyFromJson(Username));
		System.out.println(str);
		
		String str1 = commonActions.getValueFromJson(Password);
		commonActions.enterText(Password, commonActions.getKeyFromJson(Password));
		System.out.println(str1);
		
		
	} catch (FileNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}

@When("Successfully login with {string}")
public void successfully_login_with(String Login1) {
	
	try {
		commonActions.click(Login1);
		
		
	} catch (InterruptedException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
  
}


@Then("Navigate to home page with {string}")
public void navigate_to_home_page_with(String Search) throws FileNotFoundException, IOException, ParseException {
   try {
	commonActions.click(Search);
	String str = commonActions.getValueFromJson(Search);
	commonActions.enterText(Search,commonActions.getKeyFromJson(Search));
	System.out.println(str);
	
	
} catch (InterruptedException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
}
	
}
