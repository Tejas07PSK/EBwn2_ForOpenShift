/*  -> Designed for testing and development purposes.
 *  -> Project to design a small places prototype app.
 *  -> Development Phase -- Premature.
 *  -> Project Type -- Educational.
 *  -> Institute -- University Institute Of Technology, Burdwan University.
 *  -> Owner/Code file Designer :
 *             @ Name - Palash Sarkar.
 *             @ Department - Computer Science And Engineering.
 *             @ Roll.Number - 2014_1038.
 *             @ Email - palashsarkar0007@gmail.com.
 *  -> Copyright Norms - Every piece of code given below 
 *                       has been written by 'Palash Sarkar (Tj07)'©,
 *                       and he holds the rights to the file. Not meant to be
 *                       copied or tampered without prior permission
 *                       from the author. 
 *  -> Guide - Asst.Proff. Dr. S.K. Gupta.            
 */

package com.aps.datahandling;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.mail.internet.MimeMessage;
import java.io.Serializable;


public final class Email implements Serializable
{
        
       private static final long serialVersionUID = 1L;
               
               public static void sendUserRegEmail(String ... vals)
	 {
		 try
		   {
	            String host ="smtp.gmail.com" ;
	            String user = "dm.flashcartteam97@gmail.com";
	            String pass = "flctdelev123#";
	            String to = vals[2];
	            String from = "dm.flashcartteam97@gmail.com";
	            String subject = "User Registration Details---";
	            boolean sessionDebug = false;

	            Properties props = System.getProperties();

	            props.put("mail.smtp.starttls.enable", "true");
	            props.put("mail.smtp.host", host);
	            props.put("mail.smtp.port", "587");
	            props.put("mail.smtp.auth", "true");
	            props.put("mail.smtp.starttls.required", "true");
	            props.put("mail.user", user);
	            props.put("mail.password", pass);

	            java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
	            Session mailSession = Session.getDefaultInstance(props, null);
	            mailSession.setDebug(sessionDebug);
	            Message msg = new MimeMessage(mailSession);
	            msg.setFrom(new InternetAddress(from));
	            InternetAddress[] address = {new InternetAddress(to)};
	            msg.setRecipients(Message.RecipientType.TO, address);
	            msg.setSubject(subject); msg.setSentDate(new Date());
	            msg.setContent("<h2>You Have Been Successfully Registered, given below are your registration details --</h2>"
	            		         +"<h4>"+"FIRSTNAME : - "+vals[0]+"</h4>"
	            		         +"<h4>"+"LASTNAME : - "+vals[1]+"</h4>"
	            		         +"<h4>"+"USER_EMAIL_ID : - "+vals[2]+"</h4>"
	            		         +"<h4>"+"MOB NO : - "+vals[3]+"</h4>"
	            		         +"<h4>"+"LOCALITY : - "+vals[4]+"</h4>"
	            		         +"<h4>"+"CITY : - "+vals[5]+"</h4>"
	            		         +"<h4>"+"PINCODE : - "+vals[6]+"</h4>"
	            		         +"<h4>"+"STATE : - "+vals[7]+"</h4>"
	            		         +"<h4>"+"COUNTRY : - "+vals[8]+"</h4>"
                                                   +"<h4>"+"PASSWORD : - "+vals[9]+"</h4>"
                                                   +"<h4>"+"USER_ID : - "+vals[10]+"</h4>","text/html");
	            
                Transport transport=mailSession.getTransport("smtp");
	            transport.connect(host, user, pass);
	            transport.sendMessage(msg, msg.getAllRecipients());
	            transport.close();
	            System.out.println("Message sent successfully!!");
	          }catch(Exception ex)
	               {
	                    System.out.println(ex);
	               }
	 }
	 
}
