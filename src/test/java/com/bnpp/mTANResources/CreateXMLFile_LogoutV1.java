package com.bnpp.mTANResources;

import java.io.File;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.testng.annotations.Test;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
 
public class CreateXMLFile_LogoutV1  {
 
    public String xmlFilePath = System.getProperty("user.dir") + "\\src\\test\\java\\com\\bnpp\\mTANResources\\Logout_v1.xml";
 
    @Test
    public void LogoutXMLBuilder(String sessionID, String feId) {
 
        try {
 
            DocumentBuilderFactory documentFactory = DocumentBuilderFactory.newInstance();
 
            DocumentBuilder documentBuilder = documentFactory.newDocumentBuilder();
 
            Document document = documentBuilder.newDocument();
 
            // root element
            Element root = document.createElement("Envelope");
            document.appendChild(root);
 
            // set an attribute to staff element
            Attr attr = document.createAttribute("xmlns");
            attr.setValue("http://schemas.xmlsoap.org/soap/envelope/");
            root.setAttributeNode(attr);

            Element Body = document.createElement("Body");
 
            root.appendChild(Body);

           
            Element run = document.createElement("run");
            Body.appendChild(run);
            
            Attr attr2 = document.createAttribute("xmlns");
            attr2.setValue("http://cortalconsors.com/middleware/logout/v1_0");
            run.setAttributeNode(attr2);
 
            // request element
            Element request = document.createElement("request");
            run.appendChild(request);
            
            Attr attr3 = document.createAttribute("sessionId");
            attr3.setValue(sessionID);
            request.setAttributeNode(attr3);
            
            Attr attr4 = document.createAttribute("feid");
            attr4.setValue(feId);
            request.setAttributeNode(attr4);
            
            Attr attr5 = document.createAttribute("language");
            attr5.setValue("DE");
            request.setAttributeNode(attr5);
             
            // create the xml file
            //transform the DOM Object to an XML File
            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            DOMSource domSource = new DOMSource(document);
            StreamResult streamResult = new StreamResult(new File(xmlFilePath));
 
            // If you use
            // StreamResult result = new StreamResult(System.out);
            // the output will be pushed to the standard output ...
            // You can use that for debugging 
 
            transformer.transform(domSource, streamResult);
 
            //System.out.println("Done creating XML File for Logout");
 
        } catch (ParserConfigurationException pce) {
            pce.printStackTrace();
        } catch (TransformerException tfe) {
            tfe.printStackTrace();
        }
    }
}