package com.medico.pojo;

	import java.util.*;
	import javax.mail.*;
	import javax.mail.internet.*;

	public class SendEmail {

	    private static String USER_NAME = "naincygupta2996@gmail.com";
	    private static String PASSWORD = "7906281951";
	   

	    public static void email(String RECIPIENT,String username,String pwd,String subject,String timing) {
	    	String body;
	        String from = USER_NAME;
	        String pass = PASSWORD;
	        String[] to = { RECIPIENT };
	        if(subject.equals("register")){
	        body = "Welcome to Medico"
	        		+ "username : " + username
	        		+"password : " +pwd;
	        }
	        else if(subject.equals("OTP")){
	        	body = "your OTP is :"+timing;
	        }
	        else{
	        	body = "Welcome to Medico"
		        		+ "Appiontment timings : " + timing;
		        		
	        }
	        sendFromGMail(from, pass, to, subject, body);
	        System.out.println("sent");
			return;
	    }

	    private static void sendFromGMail(String from, String pass, String[] to, String subject, String body) {
	        Properties props = System.getProperties();
	        String host = "smtp.gmail.com";
	        props.put("mail.smtp.starttls.enable", "true");
	        props.put("mail.smtp.host", host);
	        props.put("mail.smtp.user", from);
	        props.put("mail.smtp.password", pass);
	        props.put("mail.smtp.port", "587");
	        props.put("mail.smtp.auth", "true");

	        Session session = Session.getDefaultInstance(props);
	        MimeMessage message = new MimeMessage(session);

	        try {
	            message.setFrom(new InternetAddress(from));
	            InternetAddress[] toAddress = new InternetAddress[to.length];

	            for( int i = 0; i < to.length; i++ ) {
	                toAddress[i] = new InternetAddress(to[i]);
	            }

	            for( int i = 0; i < toAddress.length; i++) {
	                message.addRecipient(Message.RecipientType.TO, toAddress[i]);
	            }

	            message.setSubject(subject);
	            message.setText(body);
	            Transport transport = session.getTransport("smtp");
	            transport.connect(host, from, pass);
	            transport.sendMessage(message, message.getAllRecipients());
	            transport.close();
	        }
	        catch (AddressException ae) {
	            ae.printStackTrace();
	        }
	        catch (MessagingException me) {
	            me.printStackTrace();
	        }
	    }
	}


