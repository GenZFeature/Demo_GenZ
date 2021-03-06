@UC31
Feature: UC31_32_33_NeukundenDepot

  #Executable - Neukunden Depot Anlegen
  #Einzelkonto Anlegen
  @UC31_1
  Scenario Outline: <TestCase>
    Given User launches Consorsbank web application
    And User navigates to "Wertpapierdepot" in "Wertpapierhandel"
    And User clicks on "WertpapierdepotEroeffnen_Wertpapierdepot"
    And User selects radiobutton "Kunde_bei_der_Consorsbank" in "KundeBeiDerConsorsbank_WertpapierdepotEroeffnen"
    And User selects radiobutton "Gemeinschaftskonto_eroeffnen" in "GemeinschaftskontoEroeffnen_WertpapierdepotEroeffnen"
    And User selects radiobutton "minderjaehriges_Kind_eroeffnen" in "minderjaehrigesKindEroeffnen_WertpapierdepotEroeffnen"
    And User clicks on "Weiter_WertpapierdepotEroeffnen"
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
    And User selects radiobutton "Erfahrungen_im_Bereich_Wertpapierhandel" in "ErfahrungenImBereichWertpapierhandel_AngabenZurPerson"
    And User clicks on "Weiter_AngabenZurPerson"
    And User selects checkbox "Einverstaendnis_mit_PRIIP_Verordnung" in "EinverstaendnisMitPRIIPVerordnung_AngabenZurPerson"
    And User clicks on "kontoEroeffnen_AngabenZurPerson"
    And Capture Vorgangsnummer,Message on KostenlosesWertpapierdepotEinzel_1
    And User clicks on "EroeffnungsunterlagenHerunterladen_KostenlosesWertpapierdepotEinzel"
    Then Verify captured Vorgangsnummer,Message from KostenlosesWertpapierdepotEinzel_1
    And Download PDF generated in New Tab

    Examples: 
      | TestCase                 |
      | DepotEinzelkonto_Anlegen |

  #Gemeinschaftskonto Anlegen
  @UC31_2
  Scenario Outline: <TestCase>
    Given User launches Consorsbank web application
    And User navigates to "Wertpapierdepot" in "Wertpapierhandel"
    And User clicks on "Wertpapierdepot_eroeffnen"
    And User selects radiobutton "Kunde_bei_der_Consorsbank" in "KundeBeiDerConsorsbank_WertpapierdepotEroeffnen"
    And User selects radiobutton "Gemeinschaftskonto_eroeffnen" in "GemeinschaftskontoEroeffnen_WertpapierdepotEroeffnen"
    And User selects radiobutton "minderjaehriges_Kind_eroeffnen" in "minderjaehrigesKindEroeffnen_WertpapierdepotEroeffnen"
    And User clicks on "Weiter_WertpapierdepotEroeffnen"
    And User clicks on "WeiterZurAntragsstrecke_KundeninformationZumDatenschutz"
    And User selects radiobutton "Anrede_1" in "Anrede1_Kontoinhaber1"
    And User enters "Vorname_1" in "Vorname1_Kontoinhaber1"
    And User enters "Nachname_1" in "Nachname1_Kontoinhaber1"
    And User enters "Geburtsdatum_TT_1" in "GeburtsdatumTT1_Kontoinhaber1"
    And User enters "Geburtsdatum_MM_1" in "GeburtsdatumMM1_Kontoinhaber1"
    And User enters "Geburtsdatum_JJ_1" in "GeburtsdatumJJ1_Kontoinhaber1"
    And User enters "Geburtsort_1" in "Geburtsort1_PersoenlicheAngaben"
    And User selects "Geburtsland_1" in "Geburtsland1_Kontoinhaber1"
    And User selects "Staatsangehoerigkeit_1" in "Staatsangehoerigkeit1_Kontoinhaber1"
    And User selects radiobutton "Weitere_Staatsangehoerigkeit_USA_1" in "WeitereStaatsangehoerigkeitUSA1_Kontoinhaber1"
    And User selects radiobutton "USA_steuerpflichtig_1" in "USASteuerpflichtig1_Kontoinhaber1"
    And User enters "Strasse_Hausnummer_1" in "StrasseHausnummer1_Kontoinhaber1"
    And User enters "PLZ_1" in "PLZ1_Kontoinhaber1"
    And User enters "Ort_1" in "Ort1_Kontoinhaber1"
    And User selects "Land_1" in "Land_1_Kontoinhaber1"
    And User selects radiobutton Ansaessigkeit_ausserhalb_Deutschlands_USA_1 in AnsaessigkeitAusserhalbDeutschlandsUSA1_Kontoinhaber1
    And User enters "EMail_1" in "EMail1_Kontoinhaber1"
    And User enters "EMail_wiederholen_1" in "EMailWiederholen1_Kontoinhaber1"
    And User enters "Telefon_privat_1" in "TelefonPrivat1_Kontoinhaber1"
    And User selects "Beruf_1" in "Beruf1_Kontoinhaber1"
    And User selects "Branche_1" in "Branche1_Kontoinhaber1"
    And User selects "Jahreseinkommen_Netto_1" in "JahreseinkommenNetto1_Kontoinhaber1"
    And User selects "Verfuegbares_Vermoegen_1" in "VerfuegbaresVermoegen1_Kontoinhaber1"
    And User selects radiobutton "Erfahrungen_im_Bereich_Wertpapierhande_l" in "ErfahrungenImBereichWertpapierhandel_Kontoinhaber1"
    And User clicks on "Zu_Kontoinhaber_2"
    And User selects radiobutton "Anrede_2" in "Anrede2_Kontoinhaber2"
    And User enters "Vorname_2" in "Vorname2_Kontoinhaber2"
    And User enters "Nachname_2" in "Nachname2_Kontoinhaber2"
    And User enters "Geburtsdatum_TT_2" in "GeburtsdatumTT2_Kontoinhaber2"
    And User enters "Geburtsdatum_MM_2" in "GeburtsdatumMM2_Kontoinhaber2"
    And User enters "Geburtsdatum_JJ_2" in "GeburtsdatumJJ2_Kontoinhaber2"
    And User enters "Geburtsort_2" in "Geburtsort2_Kontoinhaber2"
    And User selects "Geburtsland_2" in "Geburtsland2_Kontoinhaber2"
    And User selects "verheiratet_oder_leben_Sie_miteinander" in "verheiratet_oder_leben_Sie_miteinander_Kontoinhaber2"
    And User selects "Staatsangehoerigkeit_2" in "Staatsangehoerigkeit2_Kontoinhaber2"
    And User selects radiobutton "Weitere_Staatsangehoerigkeit_USA_2" in "WeitereStaatsangehoerigkeitUSA2_Kontoinhaber2"
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
    And User selects radiobutton "Erfahrungen_im_Bereich_Wertpapierhande_2" in "ErfahrungenImBereichWertpapierhande2_Kontoinhaber2"
    And User clicks on "Weiter_Kontoinhaber2"
    And User selects checkbox "Einverstaendnis_mit_PRIIP_Verordnung" in "EinverstaendnisMitPRIIPVerordnung_Kontoinhaber2"
    And User clicks on "kontoEroeffnen_Kontoinhaber2"
    And Capture Vorgangsnummer,Message on KostenlosesWertpapierdepotGemeinschafts_2
    And User clicks on "EroeffnungsunterlagenHerunterladen_KostenlosesWertpapierdepotGemeinschafts"
    Then Verify captured Vorgangsnummer,Message from KostenlosesWertpapierdepotGemeinschafts_2
    And Download PDF generated in New Tab

    Examples: 
      | TestCase                        |
      | DepotGemeinschaftskonto_Anlegen |

  #Minderjaehrigenkonto Anlegen
@UC31_3
  Scenario Outline: <TestCase>
    Given User launches Consorsbank web application
    And User navigates to "Wertpapierdepot" in "Wertpapierhandel"
    And User clicks on "Wertpapierdepot_eroeffnen"
    And User selects radiobutton "Kunde_bei_der_Consorsbank" in "KundeBeiDerConsorsbank_WertpapierdepotEroeffnen"
    And User selects radiobutton "Gemeinschaftskonto_eroeffnen" in "GemeinschaftskontoEroeffnen_WertpapierdepotEroeffnen"
    And User selects radiobutton "minderjaehriges_Kind_eroeffnen" in "minderjaehrigesKindEroeffnen_WertpapierdepotEroeffnen"
    And User clicks on "Weiter_WertpapierdepotEroeffnen"
    And User clicks on "WeiterZurAntragsstrecke_KundeninformationZumDatenschutz"
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
    And User selects radiobutton "Anrede_2" in "Anrede2_GesetzlicherVertreter1Page"
    And User enters "Vorname_2" in "Vorname2_GesetzlicherVertreter1Page"
    And User enters "Nachname_2" in "Nachname2_GesetzlicherVertreter1Page"
    And User enters "Geburtsdatum_TT_2" in "GeburtsdatumTT2__GesetzlicherVertreter1Page"
    And User enters "Geburtsdatum_MM_2" in "GeburtsdatumMM2__GesetzlicherVertreter1Page"
    And User enters "Geburtsdatum_JJ_2" in "GeburtsdatumJJ2__GesetzlicherVertreter1Page"
    And User enters "Geburtsort_2" in "Geburtsort2_GesetzlicherVertreter1Page"
    And User selects "Geburtsland_2" in "Geburtsland2_GesetzlicherVertreter1Page"
    And User selects "Familienstand" in "Familienstand_GesetzlicherVertreter1Page"
    And User selects "Staatsangehoerigkeit_2" in "Staatsangehoerigkeit2_GesetzlicherVertreter1Page"
    And User selects radiobutton "Weitere_Staatsangehoerigkeit_USA_2" in "WeitereStaatsangehoerigkeitUSA2_GesetzlicherVertreter1Page"
    And User selects radiobutton "USA_steuerpflichtig_2" in "USASteuerpflichtig2_GesetzlicherVertreter1Page"
    And User enters "Strasse_Hausnummer_2" in "StrasseHausnummer2_GesetzlicherVertreter1Page"
    And User enters "PLZ_2" in "PLZ2_GesetzlicherVertreter1Page"
    And User enters "Ort_2" in "Ort2_GesetzlicherVertreter1Page"
    And User selects "Land_2" in "Land2_GesetzlicherVertreter1Page"
    And User enters "EMail_2" in "EMail2_GesetzlicherVertreter1Page"
    And User enters "EMail_wiederholen_2" in "EMailWiederholen2_GesetzlicherVertreter1Page"
    And User enters "Telefon_privat_2" in "TelefonPrivat2_GesetzlicherVertreter1Page"
    And User selects "Beruf_2" in "Beruf2_GesetzlicherVertreter1Page"
    And User selects "Branche_2" in "Branche2_GesetzlicherVertreter1Page"
    And User selects checkbox "alleinige_gesetzliche_Vertreter_des_Kindes_bin" in "AlleinigeGesetzlicheVertreterDesKindesBinGesetzlicherVertreter1Page"
    And User selects radiobutton "Erfahrungen_im_Bereich_Wertpapierhande_2" in "ErfahrungenImBereichWertpapierhande2GesetzlicherVertreter1Page"
    And User clicks on Weiter_GesetzlicherVertreter1Page
    And User selects checkbox "Einverstaendnis_mit_PRIIP_Verordnung" in "EinverstaendnisMitPRIIPVerordnung_KontoverwendungPage"
    And User clicks on "kontoEroeffnen__KontoverwendungPage"
    And Capture Vorgangsnummer,Message on KostenlosesWertpapierdepotMinderjaehrigen
    And User clicks on "EroeffnungsunterlagenHerunterladen_KostenlosesWertpapierdepotMinderjaehrigen"
    Then Verify captured Vorgangsnummer,Message from KostenlosesWertpapierdepotMinderjaehrigen_3
    And Download PDF generated in New Tab

    Examples: 
      | TestCase                          |
      | DepotMinderjaehrigenkonto_Anlegen |
