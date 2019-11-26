package com.bnpp.steps;

import java.io.FileNotFoundException;
import java.io.IOException;

import org.json.simple.parser.ParseException;
import org.openqa.selenium.StaleElementReferenceException;

import com.bnpp.library.CommonActions;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class UC22_23_24_25_26_TradingVerkauf {
	CommonActions commonActions;
	String CaptureOrderart ="";
	String CaptureWKN = "";
	String CaptureStuck = "";
	String CaptureHandelsplatz = "";
	String CaptureMessage = "";
	String ort_TradingVerkauf ="";
	String Handelsplatz_TradingVerkauf ="";
	String WKN_TradingVerkauf ="";
	String Stuck_TradingVerkauf = "";

	public UC22_23_24_25_26_TradingVerkauf(CommonActions con) {
		this.commonActions = con;
	}
	
    
	@When("User selects Handelsplatz in Handelsplatz_OrderErteilen")
	public void user_selects_Handelsplatz_in_Handelsplatz_OrderErteilen() throws InterruptedException {
		if (commonActions.getScenarioName().equals("VerkaufOrder_Anlegen_Fonds")) {
			try {
				commonActions.click("Handelsplatz_OrderErteilen");
				commonActions.pressTab();
				Thread.sleep(2000);				
				commonActions.click("Handelsplatz_Tradegate");
			//	Thread.sleep(1000);	
				commonActions.pressTab();
				//commonActions.pressEnter();
				System.out.println("Handelsplatz_Tradegate selected");
			}catch (Exception e) {
				e.printStackTrace();
				System.out.println("Handelsplatz_Tradegate not selected");
				commonActions.logAssert_Fail("text not found");
		}
	   }
	}
	
	@When("Capture entered details on OrderErteilen_TradingVerkauf")
	public void capture_entered_details_on_OrderErteilen_TradingVerkauf() {
		try {
	    CaptureOrderart = commonActions.getText("Anlegen_Fonds_OrderArt");
	    CaptureWKN = commonActions.getText("Anlegen_Fonds_WKN");
	    CaptureStuck = commonActions.getText("Anlegen_Fonds_Stueck");
	    CaptureHandelsplatz = commonActions.getText("Anlegen_Fonds_Handelsplatz");
	    
	    System.out.println("CaptureOrderart:" + CaptureOrderart);
		System.out.println("CaptureWKN:" + CaptureWKN);
		System.out.println("CaptureStuck:" + CaptureStuck);
		System.out.println("CaptureHandelsplatz:" + CaptureHandelsplatz);
		}
		catch (StaleElementReferenceException e) {
			e.printStackTrace();
			System.out.println("element not selected");
			commonActions.logAssert_Fail("text not found");
	}
		catch (Exception e) {
			e.printStackTrace();
			System.out.println("element not selected");
			commonActions.logAssert_Fail("text not found");
	}
	}
	
	@When("Capture Message on OrderErteilen_TradingVerkauf")
	public void capture_Message_on_OrderErteilen_TradingVerkauf() {
		CaptureMessage = commonActions.getText("Message");
		
		System.out.println("CaptureMessage:" + CaptureMessage);
	}
	
	@Then("Verify {string},{string},{string},{string},{string} on OrderUebersicht_TradingVerkauf")
	public void verify_on_OrderUebersicht_TradingVerkauf(String string, String string2, String string3, String string4, String string5) {
		ort_TradingVerkauf = commonActions.getText("Verify_OrderartTable_Verkauf");
		Handelsplatz_TradingVerkauf = commonActions.getText("Verify_Handelsplatz_table_Verkauf");
		WKN_TradingVerkauf = commonActions.getText("Verify_WKN_table_Verkauf");
		Stuck_TradingVerkauf = commonActions.getText("Verify_Stuck_table_Verkauf");
		
		System.out.println("ort_TradingVerkauf:" + ort_TradingVerkauf);
		System.out.println("Handelsplatz_TradingVerkauf:" + Handelsplatz_TradingVerkauf);
		System.out.println("WKN_TradingVerkauf:" + WKN_TradingVerkauf);
		System.out.println("Stuck_TradingVerkauf:" + Stuck_TradingVerkauf);
		
		
		if(ort_TradingVerkauf.equals(CaptureOrderart))
		{
		commonActions.logPassStatus("Pass | Valid Ort value displayed - " + ort_TradingVerkauf);
		}else
		{
		commonActions.logFailStatus("Fail | Valid Ort value display failed - " + ort_TradingVerkauf);
		} 
		
		if(Handelsplatz_TradingVerkauf.equals(CaptureHandelsplatz))
		{
		commonActions.logPassStatus("Pass | Valid Handelsplatz value displayed - " + Handelsplatz_TradingVerkauf);
		}else
		{
		commonActions.logFailStatus("Fail | Valid Handelsplatz value display failed - " + Handelsplatz_TradingVerkauf);
		} 
		
		if(CaptureWKN.contains(WKN_TradingVerkauf))
		{
		commonActions.logPassStatus("Pass | Valid WKN value displayed - " + WKN_TradingVerkauf);
		}else
		{
		commonActions.logFailStatus("Fail | Valid WKN value display failed - " + WKN_TradingVerkauf);
		} 
		
		if(Stuck_TradingVerkauf.equals(CaptureStuck))
		{
		commonActions.logPassStatus("Pass | Valid Stuck value displayed - " + Stuck_TradingVerkauf);
		}else
		{
		commonActions.logFailStatus("Fail | Valid Stuck value display failed - " + Stuck_TradingVerkauf);
		} 
	}
	
	@Then("Verify captured details,Message from OrderErteilen_TradingVerkauf")
	public void verify_captured_details_Message_from_OrderErteilen_TradingVerkauf() throws FileNotFoundException, IOException, ParseException {
		if (CaptureMessage.equals(commonActions.getValueFromJson("Message"))) {
			commonActions.logPassStatus("Pass | Valid Messge displayed -"+CaptureMessage);
		} else {
			commonActions.logFailStatus("Error | Valid Messge display failed -"+CaptureMessage);
		}
	}
	
	}
