package mail_service;

import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class JavaMailUtil {
	public static void sendMail(String reciepient, String sub, String msg) throws Exception{
		System.out.println("Preparing to send email..");
		Properties properties = new Properties();
		
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");
		
		String myAccountEmail = "rajan.kumar.rk.0502@gmail.com";
		String password = "ylcdmhrzubgfiggy";
		
		Session session = Session.getInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication(){
				return new PasswordAuthentication(myAccountEmail, password);
			}
		});
	
		Message message = prepareMessage(session, myAccountEmail, reciepient, sub, msg);
		
		Transport.send(message);
		System.out.println("Message send successfully.");
	}
	
	public static Message prepareMessage(Session session, String myAccountEmail, String reciepient, String sub, String msg) {
		try{
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(myAccountEmail));
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(reciepient));
			message.setSubject(sub);
			message.setText(msg);
			return message;
		}
		catch(Exception e){
			Logger.getLogger(JavaMailUtil.class.getName()).log(Level.SEVERE, null, e);
		}
		return null;
	}
}
