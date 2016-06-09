/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package emailx.sendMail;

/**
 *
 * @author Pramod
 */

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class sendEmail {
    public static void sendEmailUsingGmail(String toaddr,String tomsg) {
// Recipient's email ID needs to be mentioned.
String to = toaddr;//change accordingly
// Sender's email ID needs to be mentioned
String from = "cloudbasedmedicalconsultation@gmail.com";//change accordingly
final String username = "cloudbasedmediaclconsultation";//change accordingly
final String password = "medicalconsultation";//change accordingly
// Assuming you are sending email through relay.jangosmtp.net
String host = "smtp.gmail.com";
Properties props = new Properties();
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.smtp.host", host);
props.put("mail.smtp.port", "587");
// Get the Session object.
Session session = Session.getInstance(props,
new javax.mail.Authenticator() {
@Override
protected PasswordAuthentication getPasswordAuthentication() {
return new PasswordAuthentication(username, password);
}
});
try {
// Create a default MimeMessage object.
Message message = new MimeMessage(session);
// Set From: header field of the header.
message.setFrom(new InternetAddress(from));
// Set To: header field of the header.
message.setRecipients(Message.RecipientType.TO,
InternetAddress.parse(to));
// Set Subject: header field
message.setSubject("Login Session Details");
// Now set the actual message
message.setText(tomsg);
// Send message
Transport.send(message);
//System.out.println("Sent message successfully....");
} catch (MessagingException e) {
throw new RuntimeException(e);
    
}
}
}

