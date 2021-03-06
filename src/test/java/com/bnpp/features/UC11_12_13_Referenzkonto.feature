@UC11
Feature: UC11_12_13_Referenzkonto

  #Executable - Referenzkonto anlegen,loeschen
  # Verify Error
  @UC11_1
  Scenario Outline: <TestCase>
    Given User launches Consorsbank web application
    When User Logs in with "UserID_Kontonummer","PIN_Password"
    And User submits generated TAN number in "TAN_field_Login"
    And User navigates to "Referenz_konton" in "Mein_Konto_Depot"
    And User selects "Account_Type" in "AccountType_ReferenzKonton"
    And User clicks on NeuesReferenzKontonAnlengen_ReferenzKonton to create template
    And User enters "Empfanger_name" in "EmpfangerName_ReferenzKontoAnlengen"
    And User enters "IBAN_oder_Kontonummer" in "IBANOderKontonummer_ReferenzKontoAnlengen"
    And User selects checkbox "Ich_bestaetige" in "IchBestaetige_ReferenzKontoAnlengen"
    And User clicks on "WeiterZurTanEingabe_ReferenzKontoAnlengen"
    Then Verify displayed "ErrorMesssages" on ReferenzKontoAnlengen

    Examples: 
      | TestCase                    |
      | Referenzkonto_Verify_Errors |

  #Create/Anlegen IBAN Referenzkonto
  @UC11_2
  Scenario Outline: <TestCase>
    Given User launches Consorsbank web application
    When User Logs in with "UserID_Kontonummer","PIN_Password"
    And User submits generated TAN number in "TAN_field_Login"
    And User navigates to "Referenz_konton" in "Mein_Konto_Depot"
    And User selects "Account_Type" in "AccountType_ReferenzKonton"
    And User clicks on NeuesReferenzKontonAnlengen_ReferenzKonton to create template
    And User enters "Empfanger_name" in "EmpfangerName_ReferenzKontoAnlengen"
    And User enters "IBAN_oder_Kontonummer" in "IBANOderKontonummer_ReferenzKontoAnlengen"
    And User selects checkbox "Ich_bestaetige" in "IchBestaetige_ReferenzKontoAnlengen"
    And User clicks on "WeiterZurTanEingabe_ReferenzKontoAnlengen"
    And User submits generated TAN number using "MobileTanLink_ReferenzKontonAnlengen" on "TAN_field_ReferenzKontonAnlengen"
    And User clicks on "ReferenzkontoAnlegen_ReferenzKontonAnlengen"
    And Capture entered details on ReferenzKontonAnlengen
    And User clicks on "ZuDenReferenzkonto_ReferenzKontonAnlengen"
    Then Verify "Empfanger_name","IBAN_oder_Kontonummer" on Referenzkonten
     Examples: 
      | TestCase                   |
      | Referenzkonto_Anlegen_IBAN |

  #Create/Anlegen konto-BLZ Referenzkonto
  @UC11_3
  Scenario Outline: <TestCase>
    Given User launches Consorsbank web application
    When User Logs in with "UserID_Kontonummer","PIN_Password"
    And User submits generated TAN number in "TAN_field_Login"
    And User navigates to "Referenz_konton" in "Mein_Konto_Depot"
    And User selects "Account_Type" in "AccountType_ReferenzKonton"
    And User clicks on NeuesReferenzKontonAnlengen_ReferenzKonton to create template
    And User enters "Empfanger_name" in "EmpfangerName_ReferenzKontoAnlengen"
    And User enters "IBAN_oder_Kontonummer" in "IBANOderKontonummer_ReferenzKontoAnlengen"
    And User enters "BLZ_Code" in "BLZ_ReferenzkontoAnlegen"
    And User selects checkbox "Ich_bestaetige" in "IchBestaetige_ReferenzKontoAnlengen"
    And User clicks on "WeiterZurTanEingabe_ReferenzKontoAnlengen"
    And User submits generated TAN number using "MobileTanLink_ReferenzKontonAnlengen" on "TAN_field_ReferenzKontonAnlengen"
    And User clicks on "ReferenzkontoAnlegen_ReferenzKontonAnlengen"
    And Capture entered details on ReferenzKontonAnlengen
    And User clicks on "ZuDenReferenzkonto_ReferenzKontonAnlengen"
    Then Verify "Empfanger_name","IBAN_oder_Kontonummer" on Referenzkonten
    Examples: 
      | TestCase                  |
      | Referenzkonto_Anlegen_BLZ |

  #Deletion/loeschen
  # One-Referenzkonton need two records to get delete button available
  @UC11_4
  Scenario Outline: <TestCase>
    Given User launches Consorsbank web application
    When User Logs in with "UserID_Kontonummer","PIN_Password"
    And User submits generated TAN number in "TAN_field_Login"
    And User navigates to "Referenz_konton" in "Mein_Konto_Depot"
    And user clicks on "Delete_Referenzkonton" of "Created_Referenzkonton" in "CreatedReferenzkonton_ReferenzKonton"
    And User submits generated TAN number using "MobileTanLink_Referenzkontoloeschen" on "TAN_field_Referenzkontoloeschen"
    And User clicks on "Referenzkontoloeschen_Referenzkontoloeschen"
    Then Verify Message on Referenzkontoloschen

    Examples: 
      | TestCase                 |
      | Referenzkonto_loeschen_1 |
      | Referenzkonto_loeschen_2 |
