public class EmailManager {

  // Public method
  public void sendMail {String address, String subject, String body) {
    // Create an email message subject
    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
    String[] toAddresses = new String[] {address};
    mail.setToAddresses(toAddresses);
    mail.setSubject(subject);
    mail.setPlainTextBody(body);
    // Pass this email message to the built-in sendEmail method of the Messaging class
    Messaging.SendEmailResult[] results = Messaging.sendEmail(
        new Messaging.SingleEmailMessage[] {mail});
    // Call a helper method to inspect the returned results
    inspectResults(results);
  }
  
  // Helper method
  private static Boolean inspectResults(Messaging.SendEmailResult[] results) {
      Boolean sendResults = true;
      
      // sendEmail returns an array of result object
      // Iterate through the list to inspect results
      // in this class, the methods send only one email, so we should have one result.
      for (Messaging.SendEmailResult res : results) {
          if (res.isSuccess()) {
              System.debug('Email sent successfully');
          }
          else {
              sendResult = false;
              System.debug('The following errors occured: ' + res.getErrors());
          }
      }
      
      return sendResult;
  }
  
}    
