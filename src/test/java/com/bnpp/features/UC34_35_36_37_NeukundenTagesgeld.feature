@UC34
Feature: UC34_35_36_37_NeukundenTagesgeld

  #Neukunden Tagesgeld Anlegen
  #Einzelkonto Anlegen
  @UC34_1
  Scenario Outline: <TestCase>
    Given User launches Consorsbank web application
    And User navigates to "Tagesgeld" in "Sparen_Anlegen"
    And User clicks on "TagesgeldkontoEroeffnen_SparenAnlegen"
    And User selects radiobutton "Kunde_bei_der_Consorsbank" in "KundeBeiDerConsorsbank_TagesgeldkontoEroeffnen"
    And User selects radiobutton "Gemeinschaftskonto_eroeffnen" in "GemeinschaftskontoEroeffnen_TagesgeldkontoEroeffnen"
    And User selects radiobutton "minderjaehriges_Kind_eroeffnen" in "minderjaehrigesKindEroeffnen_TagesgeldkontoEroeffnen"
    And User clicks on "Weiter_TagesgeldkontoEroeffnen"
    And User clicks on "WeiterZurAntragsstrecke_KundeninformationZumDatenschutz"
    And User selects radiobutton "Anrede" in "Anrede_AngabenZurPerson"
    And User enters "Vorname" in "Vorname_AngabenZurPerson"
    And User enters "Nachname" in "Nachname_AngabenZurPerson"
    And User enters "Geburtsdatum_TT" in "GeburtsdatumTT_AngabenZurPerson"
    And User enters "Geburtsdatum_MM" in "GeburtsdatumMM_AngabenZurPerson"
    And User enters "Geburtsdatum_JJ" in "GeburtsdatumJJ_AngabenZurPerson"
    And User enters "Geburtsort" in "Geburtsort_AngabenZurPerson"
    And User selects "Geburtsland" in "Geburtsland_AngabenZurPerson"
    And User selects "Staatsangehoerigkeit" in "Staatsangehoerigkeit_AngabenZurPerson"
    And User selects radiobutton "Weitere_Staatsangehoerigkeit_USA" in "WeitereStaatsangehoerigkeitUSA_AngabenZurPerson"
    And User selects radiobutton "USA_steuerpflichtig" in "USASteuerpflichtig_AngabenZurPerson"
    And User enters "Strasse_Hausnummer" in "StrasseHausnummer_AngabenZurPerson"
    And User enters "PLZ" in "PLZ_AngabenZurPerson"
    And User enters "Ort" in "Ort_AngabenZurPerson"
    And User selects "Land" in "Land_AngabenZurPerson"
    And User selects radiobutton "Ansaessigkeit_ausserhalb_Deutschlands_USA" in "AnsaessigkeitAusserhalbDeutschlandsUSA_AngabenZurPerson"
    And User enters "EMail" in "EMail_AngabenZurPerson"
    And User enters "EMail_wiederholen" in "EMailWiederholen_AngabenZurPerson"
    And User enters "Telefon_privat" in "TelefonPrivat_AngabenZurPerson"
    And User selects "Beruf" in "Beruf_AngabenZurPerson"
    And User selects "Branche" in "Branche_AngabenZurPerson"
    And User selects "Jahreseinkommen_Netto" in "JahreseinkommenNetto_AngabenZurPerson"
    And User selects "Verfuegbares_Vermoegen" in "VerfuegbaresVermoegen_AngabenZurPerson"
    And User clicks on "Weiter_AngabenZurPerson"
    And User clicks on "KontoEroeffnen_AngabenZurPerson"
    And Capture Vorgangsnummer,Message on TagesgeldkontoEinzel
    And User clicks on "EroeffnungsunterlagenHerunterladen_TagesgeldkontoEinzel"
    Then Verify captured Vorgangsnummer,message from TagesgeldkontoEinzel

    Examples: 
      | TestCase                     |
      | TagesgeldEinzelkonto_Anlegen |

  #Gemeinschaftskonto Anlegen
  @UC34_2
  Scenario Outline: <TestCase>
    Given User launches Consorsbank web application
    And User navigates to "Tagesgeld" in "Sparen_Anlegen"
    And User clicks on "TagesgeldkontoEroeffnen_SparenAnlegen"
    And User selects radiobutton "Kunde_bei_der_Consorsbank" in "KundeBeiDerConsorsbank_TagesgeldkontoEroeffnen"
    And User selects radiobutton "Gemeinschaftskonto_eroeffnen" in "GemeinschaftskontoEroeffnen_TagesgeldkontoEroeffnen"
    And User selects radiobutton "minderjaehriges_Kind_eroeffnen" in "minderjaehrigesKindEroeffnen_TagesgeldkontoEroeffnen"
    And User clicks on "Weiter_TagesgeldkontoEroeffnen"
    And User clicks on "Weiter_ZurAntragsstrecke"
    And User selects radiobutton "Anrede_1" in "Anrede1_Kontoinhaber1"
    And User enters "Vorname_1" in "Vorname1_Kontoinhaber1"
    And User enters "Nachname_1" in "Nachname1_Kontoinhaber1"
    And User enters "Geburtsdatum_TT_1" in "GeburtsdatumTT1_Kontoinhaber1"
    And User enters "Geburtsdatum_MM_1" in "GeburtsdatumMM1_Kontoinhaber1"
    And User enters "Geburtsdatum_JJ_1" in "GeburtsdatumJJ1_Kontoinhaber1"
    And User enters "Geburtsort_1" in "Geburtsort1_Kontoinhaber1"
    And User selects "Geburtsland_1" in "Geburtsland1_Kontoinhaber1"
    And User selects "Staatsangehoerigkeit_1" in "Staatsangehoerigkeit1_Kontoinhaber1"
    And User selects radiobutton "Weitere_Staatsangehoerigkeit_USA_1" in "WeitereStaatsangehoerigkeitUSA1_Kontoinhaber1"
    And User selects radiobutton "USA_steuerpflichtig_1" in "USASteuerpflichtig1_Kontoinhaber1"
    And User enters "Strasse_Hausnummer_1" in "StrasseHausnummer1_Kontoinhaber1"
    And User enters "PLZ_1" in "PLZ1_Kontoinhaber1"
    And User enters "Ort_1" in "Ort1_Kontoinhaber1"
    And User selects "Land_1" in "Land_1_Kontoinhaber1"
    And User selects radiobutton "Ansaessigkeit_ausserhalb_Deutschlands_USA_1" in "AnsaessigkeitAusserhalbDeutschlandsUSA1_Kontoinhaber1"
    And User enters "EMail_1" in "EMail1_Kontoinhaber1"
    And User enters "EMail_wiederholen_1" in "EMailWiederholen1_Kontoinhaber1"
    And User enters "Telefon_privat_1" in "TelefonPrivat1_Kontoinhaber1"
    And User selects "Beruf_1" in "Beruf1_Kontoinhaber1"
    And User selects "Branche_1" in "Branche1_Kontoinhaber1"
    And User selects "Jahreseinkommen_Netto_1" in "JahreseinkommenNetto1_Kontoinhaber1"
    And User selects "Verfuegbares_Vermoegen_1" in "VerfuegbaresVermoegen1_Kontoinhaber1"
    And User clicks on "Zu_Kontoinhaber_2"
    And User selects radiobutton "Anrede_2" in "Anrede2_Kontoinhaber2"
    And User enters "Vorname_2" in "Vorname2_Kontoinhaber2"
    And User enters "Nachname_2" in "Nachname2_Kontoinhaber2"
    And User enters "Geburtsdatum_TT_2" in "GeburtsdatumTT2_Kontoinhaber2"
    And User enters "Geburtsdatum_MM_2" in "GeburtsdatumMM2_Kontoinhaber2"
    And User enters "Geburtsdatum_JJ_2" in "GeburtsdatumJJ2_Kontoinhaber2"
    And User enters "Geburtsort_2" in "Geburtsort2_Kontoinhaber2"
    And User selects "Geburtsland_2" in "Geburtsland2_Kontoinhaber2"
    And User selects "Sind_Sie_miteinander_Lebenspartnerschaft_2" in "SindSieMiteinanderLebenspartnerschaft2_Kontoinhaber2"
    And User selects "Staatsangehoerigkeit_2" in "Staatsangehoerigkeit_2_Kontoinhaber2"
    And User selects radiobutton "Weitere_Staatsangehoerigkeit_USA_2" in "Weitere_Staatsangehoerigkeit_USA_2_Kontoinhaber2"
    And User selects radiobutton "USA_steuerpflichtig_2" in "USASteuerpflichtig2_Kontoinhaber2"
    And User enters "Strasse_Hausnummer_2" in "StrasseHausnummer2_Kontoinhaber2"
    And User enters "PLZ_2" in "PLZ2_Kontoinhaber2"
    And User enters "Ort_2" in "Ort2_Kontoinhaber2"
    And User selects "Land_2" in "Land2_Kontoinhaber2"
    And User selects radiobutton "Ansaessigkeit_ausserhalb_Deutschlands_USA_2" in "AnsaessigkeitAusserhalbDeutschlandsUSA2_Kontoinhaber2"
    And User enters "EMail_2" in "EMail2_Kontoinhaber2"
    And User enters "EMail_wiederholen_2" in "EMailWiederholen2_Kontoinhaber2"
    And User enters "Telefon_privat_2" in "TelefonPrivat2_Kontoinhaber2"
    And User selects "Beruf_2" in "Beruf2_Kontoinhaber2"
    And User selects "Branche_2" in "Branche2_Kontoinhaber2"
    And User selects "Jahreseinkommen_Netto_2" in "JahreseinkommenNetto2_Kontoinhaber2"
    And User selects "Verfuegbares_Vermoegen_2" in "VerfuegbaresVermoegen2_Kontoinhaber2"
    And User clicks on "Weiter_Kontoinhaber2"
    And User clicks on "kontoEroeffnen_Kontoinhaber2"
    And Capture Vorgangsnummer,Message on TagesgeldkontoGemeinschafts
    And User clicks on "EroeffnungsunterlagenHerunterladen_TagesgeldkontoGemeinschafts"
    Then Verify captured Vorgangsnummer,Message from TagesgeldkontoGemeinschafts
    And Download PDF generated in New Tab

    Examples: 
      | TestCase                            |
      | TagesgeldGemeinschaftskonto_Anlegen |

  # 1 Minderjaehrigenkonto Anlegen
  @UC34_3
  Scenario Outline: <TestCase>
    Given User launches Consorsbank web application
    And User navigates to "Tagesgeld" in "Sparen_Anlegen"
    And User clicks on "TagesgeldkontoEroeffnen_SparenAnlegen"
    And User selects radiobutton "Kunde_bei_der_Consorsbank" in "KundeBeiDerConsorsbank_TagesgeldkontoEroeffnen"
    And User selects radiobutton "Gemeinschaftskonto_eroeffnen" in "GemeinschaftskontoEroeffnen_TagesgeldkontoEroeffnen"
    And User selects radiobutton "minderjaehriges_Kind_eroeffnen" in "minderjaehrigesKindEroeffnen_TagesgeldkontoEroeffnen"
    And User clicks on "Weiter_TagesgeldkontoEroeffnen"
    And User clicks on "Weiter_ZurAntragsstrecke"
    And User selects radiobutton "Anrede_1" in "Anrede1_Kontoinhaber"
    And User enters "Vorname_1" in "Vorname1_Kontoinhaber"
    And User enters "Nachname_1" in "Nachname1_Kontoinhaber"
    And User enters "Geburtsdatum_TT_1" in "GeburtsdatumTT1_Kontoinhaber"
    And User enters "Geburtsdatum_MM_1" in "GeburtsdatumMM1_Kontoinhaber"
    And User enters "Geburtsdatum_JJ_1" in "GeburtsdatumJJ1_Kontoinhaber"
    And User enters "Geburtsort_1" in "Geburtsort1_Kontoinhaber"
    And User selects "Geburtsland_1" in "Geburtsland1_Kontoinhaber"
    And User selects "Staatsangehoerigkeit_1" in "Staatsangehoerigkeit1_Kontoinhaber"
    And User selects radiobutton "Weitere_Staatsangehoerigkeit_USA_1" in "WeitereStaatsangehoerigkeitUSA1_Kontoinhaber"
    And User selects radiobutton "USA_steuerpflichtig_1" in "USASteuerpflichtig1_Kontoinhaber"
    And User enters "Strasse_Hausnummer_1" in "StrasseHausnummer1_Kontoinhaber"
    And User enters "PLZ_1" in "PLZ1_Kontoinhaber"
    And User enters "Ort_1" in "Ort1_Kontoinhaber"
    And User selects "Land_1" in "Land_1_Kontoinhaber"
    And User selects radiobutton "Ansaessigkeit_ausserhalb_Deutschlands_USA_1" in "AnsaessigkeitAusserhalbDeutschlandsUSA1_Kontoinhaber"
    And User enters "Telefon_privat_1" in "TelefonPrivat1_Kontoinhaber"
    And User selects "Beruf_1" in "Beruf1_Kontoinhaber"
    And User selects "Branche_1" in "Branche1_Kontoinhaber"
    And User selects "Jahreseinkommen_Netto_1" in "JahreseinkommenNetto1_Kontoinhaber"
    And User selects "Verfuegbares_Vermoegen_1" in "VerfuegbaresVermoegen1_Kontoinhaber"
    And User clicks on "Zum1GesetzlVertreter_Kontoinhaber"
    And User selects radiobutton "Anrede_2" in "Anrede2_GesetzlicherVertreter1"
    And User enters "Vorname_2" in "Vorname2_GesetzlicherVertreter1"
    And User enters "Nachname_2" in "Nachname2_GesetzlicherVertreter1"
    And User enters "Geburtsdatum_TT_2" in "GeburtsdatumTT2__GesetzlicherVertreter1"
    And User enters "Geburtsdatum_MM_2" in "GeburtsdatumMM2__GesetzlicherVertreter1"
    And User enters "Geburtsdatum_JJ_2" in "GeburtsdatumJJ2__GesetzlicherVertreter1"
    And User enters "Geburtsort_2" in "Geburtsort2_GesetzlicherVertreter1"
    And User selects "Geburtsland_2" in "Geburtsland2_GesetzlicherVertreter1"
    And User selects "Familienstand" in "Familienstand_GesetzlicherVertreter1"
    And User selects "Staatsangehoerigkeit_2" in "Staatsangehoerigkeit2_GesetzlicherVertreter1"
    And User selects radiobutton "Weitere_Staatsangehoerigkeit_USA_2" in "Weitere_Staatsangehoerigkeit_USA2_GesetzlicherVertreter1"
    And User selects radiobutton "USA_steuerpflichtig_2" in "USASteuerpflichtig2_GesetzlicherVertreter1"
    And User enters "Strasse_Hausnummer_2" in "StrasseHausnummer2_GesetzlicherVertreter1"
    And User enters "PLZ_2" in "PLZ2_GesetzlicherVertreter1"
    And User enters "Ort_2" in "Ort2_GesetzlicherVertreter1"
    And User selects "Land_2" in "Land2_GesetzlicherVertreter1"
    And User enters "EMail_2" in "EMail2_GesetzlicherVertreter1"
    And User enters "EMail_wiederholen_2" in "EMailWiederholen2_GesetzlicherVertreter1"
    And User enters "Telefon_privat_2" in "TelefonPrivat2_GesetzlicherVertreter1"
    And User selects "Beruf_2" in "Beruf2_GesetzlicherVertreter1"
    And User selects "Branche_2" in "Branche2_GesetzlicherVertreter1"
    And User selects checkbox "Hiermit_bestaetige_ich" in "HiermitBestaetigeIch_GesetzlicherVertreter1"
    And User clicks on "Weiter_GesetzlicherVertreter1"
    And User clicks on "kontoEroeffnen_GesetzlicherVertreter1"
    And Capture Vorgangsnummer,Message on TagesgeldkontoMinderjaehrigen1
    And User clicks on "EroeffnungsunterlagenHerunterladen_TagesgeldkontoMinderjaehrigen1"
    Then Verify captured Vorgangsnummer,Message from TagesgeldkontoMinderjaehrigen1
    And Download PDF generated in New Tab

    Examples: 
      | TestCase                                 |
      | TagesgeldMinderjaehrigenkonto1GV_Anlegen |

  # 2 Minderjaehrigenkonto Anlegen
  @UC34_4
  Scenario Outline: <TestCase>
    Given User launches Consorsbank web application
    And User navigates to "Tagesgeld" in "Sparen_Anlegen"
    And User clicks on "TagesgeldkontoEroeffnen_SparenAnlegen"
    And User selects radiobutton "Kunde_bei_der_Consorsbank" in "KundeBeiDerConsorsbank_TagesgeldkontoEroeffnen"
    And User selects radiobutton "Gemeinschaftskonto_eroeffnen" in "GemeinschaftskontoEroeffnen_TagesgeldkontoEroeffnen"
    And User selects radiobutton "minderjaehriges_Kind_eroeffnen" in "minderjaehrigesKindEroeffnen_TagesgeldkontoEroeffnen"
    And User clicks on "Weiter_TagesgeldkontoEroeffnen"
    And User clicks on "Weiter_ZurAntragsstrecke"
    And User selects radiobutton "Anrede_1" in "Anrede1_Kontoinhaber"
    And User enters "Vorname_1" in "Vorname1_Kontoinhaber"
    And User enters "Nachname_1" in "Nachname1_Kontoinhaber"
    And User enters "Geburtsdatum_TT_1" in "GeburtsdatumTT1_Kontoinhaber"
    And User enters "Geburtsdatum_MM_1" in "GeburtsdatumMM1_Kontoinhaber"
    And User enters "Geburtsdatum_JJ_1" in "GeburtsdatumJJ1_Kontoinhaber"
    And User enters "Geburtsort_1" in "Geburtsort1_Kontoinhaber"
    And User selects "Geburtsland_1" in "Geburtsland1_Kontoinhaber"
    And User selects "Staatsangehoerigkeit_1" in "Staatsangehoerigkeit1_Kontoinhaber"
    And User selects radiobutton "Weitere_Staatsangehoerigkeit_USA_1" in "WeitereStaatsangehoerigkeitUSA1_Kontoinhaber"
    And User selects radiobutton "USA_steuerpflichtig_1" in "USASteuerpflichtig1_Kontoinhaber"
    And User enters "Strasse_Hausnummer_1" in "StrasseHausnummer1_Kontoinhaber"
    And User enters "PLZ_1" in "PLZ1_Kontoinhaber"
    And User enters "Ort_1" in "Ort1_Kontoinhaber"
    And User selects "Land_1" in "Land_1_Kontoinhaber"
    And User selects radiobutton "Ansaessigkeit_ausserhalb_Deutschlands_USA_1" in "AnsaessigkeitAusserhalbDeutschlandsUSA1_Kontoinhaber"
    And User enters "Telefon_privat_1" in "TelefonPrivat1_Kontoinhaber"
    And User selects "Beruf_1" in "Beruf1_Kontoinhaber"
    And User selects "Branche_1" in "Branche1_Kontoinhaber"
    And User selects "Jahreseinkommen_Netto_1" in "JahreseinkommenNetto1_Kontoinhaber"
    And User selects "Verfuegbares_Vermoegen_1" in "VerfuegbaresVermoegen1_Kontoinhaber"
    And User clicks on "Zum1GesetzlVertreter_Kontoinhaber"
    And User selects radiobutton "Anrede_2" in "Anrede2_GesetzlicherVertreter1"
    And User enters "Vorname_2" in "Vorname2_GesetzlicherVertreter1"
    And User enters "Nachname_2" in "Nachname2_GesetzlicherVertreter1"
    And User enters "Geburtsdatum_TT_2" in "GeburtsdatumTT2_GesetzlicherVertreter1"
    And User enters "Geburtsdatum_MM_2" in "GeburtsdatumMM2_GesetzlicherVertreter1"
    And User enters "Geburtsdatum_JJ_2" in "GeburtsdatumJJ2_GesetzlicherVertreter1"
    And User enters "Geburtsort_2" in "Geburtsort2_GesetzlicherVertreter1"
    And User selects "Geburtsland_2" in "Geburtsland2_GesetzlicherVertreter1"
    And User selects "Familienstand_2" in "Familienstand_GesetzlicherVertreter1"
    And User selects "Staatsangehoerigkeit_2" in "Staatsangehoerigkeit2_GesetzlicherVertreter1"
    And User selects radiobutton "Weitere_Staatsangehoerigkeit_USA_2" in "WeitereStaatsangehoerigkeitUSA2_GesetzlicherVertreter1"
    And User selects radiobutton "USA_steuerpflichtig_2" in "USASteuerpflichtig2_GesetzlicherVertreter1"
    And User enters "Strasse_Hausnummer_2" in "StrasseHausnummer2_GesetzlicherVertreter1"
    And User enters "PLZ_2" in "PLZ2_GesetzlicherVertreter1"
    And User enters "Ort_2" in "Ort2_GesetzlicherVertreter1"
    And User selects "Land_2" in "Land2_GesetzlicherVertreter1"
    And User enters "EMail_2" in "EMail2_GesetzlicherVertreter1"
    And User enters "EMail_wiederholen_2" in "EMailWiederholen2_GesetzlicherVertreter1"
    And User enters "Telefon_privat_2" in "TelefonPrivat2_GesetzlicherVertreter1"
    And User selects "Beruf_2" in "Beruf2_GesetzlicherVertreter1"
    And User selects "Branche_2" in "Branche2_GesetzlicherVertreter1"
    And User clicks on Zum2GesetzlVertreter_Kontoinhaber
    And User selects radiobutton "Anrede_3" in "Anrede3_GesetzlicherVertreter2"
    And User enters "Vorname_3" in "Vorname3_GesetzlicherVertreter2"
    And User enters "Nachname_3" in "Nachname3_GesetzlicherVertreter2"
    And User enters "Geburtsdatum_TT_3" in "GeburtsdatumTT3_GesetzlicherVertreter2"
    And User enters "Geburtsdatum_MM_3" in "GeburtsdatumMM3_GesetzlicherVertreter2"
    And User enters "Geburtsdatum_JJ_3" in "GeburtsdatumJJ3_GesetzlicherVertreter2"
    And User enters "Geburtsort_3" in "Geburtsort3_GesetzlicherVertreter2"
    And User selects "Geburtsland_3" in "Geburtsland3_GesetzlicherVertreter2"
    And User selects "Familienstand_3" in "Familienstand3_GesetzlicherVertreter2"
    And User selects "Staatsangehoerigkeit_3" in "Staatsangehoerigkeit3_GesetzlicherVertreter2"
    And User selects radiobutton "Weitere_Staatsangehoerigkeit_USA_3" in "WeitereStaatsangehoerigkeitUSA3_GesetzlicherVertreter2"
    And User selects radiobutton "USA_steuerpflichtig_3" in "USASteuerpflichtig3_GesetzlicherVertreter2"
    And User enters "Strasse_Hausnummer_3" in "StrasseHausnummer3_GesetzlicherVertreter2"
    And User enters "PLZ_3" in "PLZ3_GesetzlicherVertreter2"
    And User enters "Ort_3" in "Ort3_GesetzlicherVertreter2"
    And User selects "Land_3" in "Land3_GesetzlicherVertreter2"
    And User enters "EMail_3" in "EMail2_GesetzlicherVertreter"
    And User enters "EMail_wiederholen_3" in "EMailWiederholen3_GesetzlicherVertreter"
    And User enters "Telefon_privat_3" in "TelefonPrivat3_GesetzlicherVertreter2"
    And User selects "Beruf_3" in "Beruf3_GesetzlicherVertreter2"
    And User selects "Branche_3" in "Branche3_GesetzlicherVertreter2"
    And User clicks on Weiter_GesetzlicherVertreter2
    And User clicks on "KontoEroeffnen_GesetzlicherVertreter2"
    And Capture Vorgangsnummer,Message on TagesgeldkontoMinderjaehrigen2
    And User clicks on "EroeffnungsunterlagenHerunterladen_TagesgeldkontoMinderjaehrigen2"
    Then Verify captured Vorgangsnummer,Message from TagesgeldkontoMinderjaehrigen2
    And Download PDF generated in New Tab

    Examples: 
      | TestCase                                 |
      | TagesgeldMinderjaehrigenkonto2GV_Anlegen |
