package com.bnpp.steps;

import java.io.FileNotFoundException;
import java.io.IOException;
import org.json.simple.parser.ParseException;
import com.bnpp.library.CommonActions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class UC11_12_13_Referenzkonto {

	CommonActions commonActions;
	String CapturedEmpfanger_name="";
	String CapturedIBAN_oder_Kontonummer="";
	String CapturedMessage="";
	String CapturedErrorMesssages = "";
	int noofRowsForLoschen;

	//String Err1 = commonActions.getValueFromJson("Empfanger_nameError");
	String Err1 = "";
	//String Err2 = commonActions.getValueFromJson("IBAN_oder_KontonummerError");
	String Err2 = "";
	//String Err3 = commonActions.getValueFromJson("Ich_bestaetigeError");
	String Err3 = "";

	public UC11_12_13_Referenzkonto(CommonActions commonActions)
			throws FileNotFoundException, IOException, ParseException {
		this.commonActions = commonActions;

	}

	@Then("Verify displayed {string} on ReferenzKontoAnlengen")
	public void verify_displayed_ErrorMesssages_on_ReferenzKontoAnlengen(String ErrorMesssages)
			throws FileNotFoundException, IOException, ParseException {
		commonActions.getElement("ReferenzKontoAnlengen1");
		commonActions.getElement("ReferenzKontoAnlengen2");
		commonActions.getElement("ReferenzKontoAnlengen3");
		try {
			if (commonActions.isElementPresent("ReferenzKontoAnlengen1")) {
				commonActions.logPassStatus("Pass | Valid message displayed -"+commonActions.getText("ReferenzKontoAnlengen1"));
			} else {
				commonActions.logFailStatus("Error | Valid message display failed -"+commonActions.getText("ReferenzKontoAnlengen1"));
			}

		}
		catch (Exception e) {
			e.printStackTrace();
			commonActions.logAssert_Fail(commonActions.getScenarioName()+ "failed");
		} 
		try {
			if (commonActions.isElementPresent("ReferenzKontoAnlengen2")) {
				commonActions.logPassStatus("Pass | Valid message displayed -"+commonActions.getText("ReferenzKontoAnlengen2"));
			} else {
				commonActions.logFailStatus("Error | Valid message display failed -"+commonActions.getText("ReferenzKontoAnlengen2"));
			}

		}
		catch (Exception e) {
			e.printStackTrace();
			commonActions.logAssert_Fail(commonActions.getScenarioName()+ "failed");
		} 
		try {
			if (commonActions.isElementPresent("ReferenzKontoAnlengen3")) {
				commonActions.logPassStatus("Pass | Valid message displayed -"+commonActions.getText("ReferenzKontoAnlengen3"));
			} else {
				commonActions.logFailStatus("Error | Valid message display failed -"+commonActions.getText("ReferenzKontoAnlengen3"));
			}

		}
		catch (Exception e) {
			e.printStackTrace();
			commonActions.logAssert_Fail(commonActions.getScenarioName()+ "failed");
		} 
	}


	@And("Capture entered details on ReferenzKontonAnlengen")
	public void capture_entered_details_on_ReferenzKontonAnlengen() throws Exception, IOException, ParseException {
		try {
			commonActions.moveScrollDown();
			if (commonActions.getScenarioName().equals("Referenzkonto_Anlegen_IBAN")) {

				if (commonActions.getText("CaptureEmpfanger_name_ReferenzKontonAnlengen")
						.equals(commonActions.getValueFromJson("Empfanger_name")))
					commonActions.logPassStatus("Pass | Valid Empfanger_name displayed - "+commonActions.getText("CaptureEmpfanger_name_ReferenzKontonAnlengen"));
				else
					commonActions.logFailStatus("Fail | Valid Empfanger_name display failed - "+commonActions.getText("CaptureEmpfanger_name_ReferenzKontonAnlengen"));

				if (commonActions.getText("CaptureIBAN_oder_Kontonummer_ReferenzKontonAnlengen").equals(commonActions.getValueFromJson("IBAN_oder_Kontonummer")))
					commonActions.logPassStatus("Pass | Valid IBAN_oder_Kontonummer displayed - "+commonActions.getText("CaptureIBAN_oder_Kontonummer_ReferenzKontonAnlengen"));
				else
					commonActions.logFailStatus("Fail | Valid IBAN_oder_Kontonummer display failed - "+commonActions.getText("CaptureIBAN_oder_Kontonummer_ReferenzKontonAnlengen"));
			}

			if (commonActions.getScenarioName().equals("Referenzkonto_Anlegen_BLZ")) {

				if (commonActions.getText("CaptureEmpfanger_name_ReferenzKontonAnlengen")
						.equals(commonActions.getValueFromJson("Empfanger_name")))
					commonActions.logPassStatus("Pass | Valid Empfanger_name displayed - "+commonActions.getText("CaptureEmpfanger_name_ReferenzKontonAnlengen"));
				else
					commonActions.logFailStatus("Fail | Valid Empfanger_name display failed - "+commonActions.getText("CaptureEmpfanger_name_ReferenzKontonAnlengen"));

				System.out.println("CaptureIBAN page- "+commonActions.getText("CaptureIBAN_oder_Kontonummer_ReferenzKontonAnlengen"));
				String IBAN="DE76 7603 0080 0253 2541 91";				
				if (commonActions.getText("CaptureIBAN_oder_Kontonummer_ReferenzKontonAnlengen").equals(IBAN));
				else
					commonActions.logFailStatus("Fail | Valid IBAN_oder_Kontonummer display failed - "+commonActions.getText("CaptureIBAN_oder_Kontonummer_ReferenzKontonAnlengen"));

				if (commonActions.getText("CaptureBLZ_ReferenzkontoAnlegen").equals(commonActions.getValueFromJson("BLZ_Code")))

					commonActions.logPassStatus("Pass | Valid BLZ_ReferenzkontoAnlegen displayed - "+commonActions.getText("CaptureBLZ_ReferenzkontoAnlegen"));
				else
					commonActions.logFailStatus("Fail | Valid BLZ_ReferenzkontoAnlegen display failed - "+commonActions.getText("CaptureBLZ_ReferenzkontoAnlegen"));

			}} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				commonActions.logAssert_Fail(commonActions.getScenarioName()+ "failed");
			}}

	@And("Capture Message on ReferenzKontonAnlengen")
	public void capture_Message_on_ReferenzKontonAnlengen() {
		try{
			CapturedMessage = commonActions.getText("Message");

			System.out.println("Captured Message:" + CapturedMessage);
		} catch (Exception e) {
			e.printStackTrace();
			commonActions.logAssert_Fail(commonActions.getScenarioName()+ "failed");
		}
	}

	@When("User clicks on NeuesReferenzKontonAnlengen_ReferenzKonton to create template")
	public void user_clicks_on_NeuesReferenzKontonAnlengen_ReferenzKonton_to_create_template() {
		try {
			if(commonActions.getScenarioName().equals("Referenzkonto_Anlegen_IBAN")){		
				if(commonActions.isElementPresent("VerifyEmpfanger_name_ReferenzKontonAnlengenIBAN") && (commonActions.isElementPresent("VerifyIBAN_oder_Kontonummer_ReferenzKontonAnlengenIBAN") )) 
				{
					System.out.println("IBAN template exists");
					commonActions.click("IBAN_Delete_Referenzkonton");
					System.out.println("IBAN Delete_Referenzkonton clicked");
					commonActions.enterLoadenvironmentTan("TAN_field_Referenzkontoloeschen","12345678");
					commonActions.click("Referenzkontoloeschen_Referenzkontoloeschen");
					commonActions.click("ZuDenReferenzkonto_ReferenzKontonAnlengen");
				}}
			if(commonActions.getScenarioName().equals("Referenzkonto_Anlegen_BLZ")){		
				if(commonActions.isElementPresent("VerifyEmpfanger_name_ReferenzKontonAnlengenBLZ") && (commonActions.isElementPresent("VerifyIBAN_oder_Kontonummer_ReferenzKontonAnlengenBLZ") )) 
				{
					System.out.println("BLZ template exists");
					commonActions.click("BLZ_Delete_Referenzkonton");
					System.out.println("BLZ Delete_Referenzkonton clicked");
					commonActions.enterLoadenvironmentTan("TAN_field_Referenzkontoloeschen","12345678");
					commonActions.click("Referenzkontoloeschen_Referenzkontoloeschen");
					commonActions.click("ZuDenReferenzkonto_ReferenzKontonAnlengen");
				}}

			commonActions.waitForVisibilityofElement("NeuesReferenzKontonAnlengen_ReferenzKonton");
			commonActions.click("NeuesReferenzKontonAnlengen_ReferenzKonton");
			System.out.println("New_Referenzkonton clicked");
		}
		catch (Exception e) {
			e.printStackTrace();

		}
	}


	@Then("Verify {string},{string} on Referenzkonten")
	public void verify_on_Referenzkonten(String Empfanger_name, String IBAN_oder_Kontonummer) {
		try {
			String Empfanger_nameFromJson = commonActions.getKeyFromJson("Empfanger_name");
			String IBAN_oder_Kontonummer_FromJson= commonActions.getKeyFromJson("IBAN_oder_Kontonummer");
			System.out.println("Empfanger_nameFromJson:" + Empfanger_nameFromJson);		
			//System.out.println("Empfanger_nameFromPage:" + commonActions.getAttribute("VerifyEmpfanger_name_ReferenzKontonAnlengen", "title"));
			Thread.sleep(10000);
			if (commonActions.getScenarioName().equals("Referenzkonto_Anlegen_IBAN")) {
				if (Empfanger_nameFromJson.equals(commonActions.getText("VerifyEmpfanger_name_ReferenzKontonAnlengenIBAN")))
					commonActions
					.logPassStatus("Pass | Empfanger_name_ReferenzKontonAnlengen verify success "+commonActions.getText("VerifyEmpfanger_name_ReferenzKontonAnlengenIBAN"));
				else
					commonActions
					.logFailStatus("Fail | Empfanger_name_ReferenzKontonAnlengen verify failed "+commonActions.getText("VerifyEmpfanger_name_ReferenzKontonAnlengenIBAN"));


				if (IBAN_oder_Kontonummer_FromJson.equals(commonActions.getText("VerifyIBAN_oder_Kontonummer_ReferenzKontonAnlengenIBAN")))
					commonActions
					.logPassStatus("Pass | VerifyIBAN_oder_Kontonummer_ReferenzKontonAnlengen verify success "+commonActions.getText("VerifyIBAN_oder_Kontonummer_ReferenzKontonAnlengenIBAN"));
				else
					commonActions
					.logFailStatus("Fail | VerifyIBAN_oder_Kontonummer_ReferenzKontonAnlengen verify failed "+commonActions.getText("VerifyIBAN_oder_Kontonummer_ReferenzKontonAnlengenIBAN"));
			}
			if (commonActions.getScenarioName().equals("Referenzkonto_Anlegen_BLZ")) {

				if (Empfanger_nameFromJson.equals(commonActions.getText("VerifyEmpfanger_name_ReferenzKontonAnlengenBLZ")))
					commonActions
					.logPassStatus("Pass | Empfanger_name_ReferenzKontonAnlengen verify success "+commonActions.getText("VerifyEmpfanger_name_ReferenzKontonAnlengenBLZ"));
				else
					commonActions
					.logFailStatus("Fail | Empfanger_name_ReferenzKontonAnlengen verify failed "+commonActions.getText("VerifyEmpfanger_name_ReferenzKontonAnlengenBLZ"));


				String modifiedBLZ=commonActions.getValueFromJson("BLZ_Code").replace("3", "3 ");
				if (commonActions.getText("VerifyIBAN_oder_Kontonummer_ReferenzKontonAnlengenBLZ").contains(modifiedBLZ))
					commonActions
					.logPassStatus("Pass | VerifyIBAN_oder_Kontonummer_ReferenzKontonAnlengen verify success "+commonActions.getText("VerifyIBAN_oder_Kontonummer_ReferenzKontonAnlengenBLZ"));
				else
					commonActions
					.logFailStatus("Fail | VerifyIBAN_oder_Kontonummer_ReferenzKontonAnlengen verify failed "+commonActions.getText("VerifyIBAN_oder_Kontonummer_ReferenzKontonAnlengenBLZ"));

			}}

		catch (Exception e) {
			e.printStackTrace();
			commonActions.logAssert_Fail(commonActions.getScenarioName()+ "failed");
		}
	}
	@Then("Verify captured details,Message from ReferenzKontonAnlengen")
	public void verify_captured_details_Message_from_ReferenzKontonAnlengen() {
		try {
			if (CapturedMessage.equals(commonActions.getValueFromJson("Message"))) {
				commonActions.logPassStatus("Pass | Valid message displayed -"+CapturedMessage);
			} else {
				commonActions.logFailStatus("Error | Valid message display failed -"+CapturedMessage);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			//			commonActions.logAssert_Fail("text not found");
		}
	}

	@Then("Verify Message on Referenzkontoloschen")
	public void verify_Message_on_Referenzkontoloschen() {
		try {
			System.out.println("txtVerify for Referenzkontoloschen:" + commonActions.getText("Referenzkontoloschen"));
			String txtVerify = commonActions.getText("Referenzkontoloschen");
			System.out.println(commonActions.getValueFromJson("Message"));
			if (txtVerify.equalsIgnoreCase(commonActions.getValueFromJson("Message"))) {
				System.out.println("Verify Message on Referenzkontoloschen SUCCESSFULLY");
				commonActions.logPassStatus("Pass | Valid message displayed - " + txtVerify);

			} else
				commonActions.logFailStatus("Fail | Valid message display failed - " + txtVerify);
		} catch (Exception e) {
			e.printStackTrace();
			commonActions.logAssert_Fail("Fail | Data save fail for Referenzkontoloschen");
		}
	}


	@And("^user clicks on \"(.*?)\" of \"(.*?)\" in \"(.*?)\"$")
	public void user_click_on_of_in(String locatorKey, String datakey,String CreatedReferenzkonton_ReferenzKonton)
			throws FileNotFoundException, IOException, ParseException, InterruptedException {
		try {
			noofRowsForLoschen = commonActions.noofelement("NoOfKontos");
			System.out.println("No. of Rows: "+noofRowsForLoschen);

			if(noofRowsForLoschen>1) {
				if (datakey.equals("Created_Referenzkonton")) {
					System.out.println("CreatedReferenzkonton_ReferenzKonton: "+CreatedReferenzkonton_ReferenzKonton);
					if (commonActions.getScenarioName().equals("Referenzkonto_loeschen_1"))
					{	locatorKey = "IBAN_Delete_Referenzkonton";
					commonActions.waitForVisibilityofElement(locatorKey);
					commonActions.click(locatorKey);
					System.out.println("IBAN Loeschen SUCCESSFUL ");
					}

					if (commonActions.getScenarioName().equals("Referenzkonto_loeschen_2"))
					{	locatorKey = "BLZ_Delete_Referenzkonton";
					commonActions.waitForVisibilityofElement(locatorKey);
					commonActions.click(locatorKey);
					System.out.println("BLZ Loeschen SUCCESSFUL ");
					}					
				}	
			}
			else{
				System.out.println("Fail | Can not delete. Need at least two rows.");
				commonActions.logAssert_Fail("Fail | Can not delete. Need at least two templates.");

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
