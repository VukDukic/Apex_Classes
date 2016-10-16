	// Create a list and add elements to it in one step
List<String> colors = new List<String> { 'red', 'green', 'blue' };


// Add elements to a list after it has been created
List<String> moreColors = new List<String>();
moreColors.add('orange');
moreColors.add('purple');

List<String> colors = new List<String> { 'red', 'green', 'blue' };

List<String> moreColors = new List<String>();
moreColors.add('orange');
moreColors.add('purple');


// Get elements from a list
String color1 = moreColors.get(0);
String color2 = moreColors[0];

System.assertEquals(color1, color2);
 
// Iterate over a list to read elements

for(Integer i=0;i<colors.size();i++) {

    // Write value to the debug log
    System.debug(colors[i]);

}

String color1 = moreColors.get(0);
String color2 = moreColors[0];

System.assertEquals(color1, color2);

for (Integer i = 0; i < colors.size(); i++) {
	System.debug(colors[i]);
}


public class EmailManager {

    // Public method
    public void sendMail(String address, String subject, String body) {

        // Create an email message object
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {address};
        mail.setToAddresses(toAddresses);
        mail.setSubject(subject);
        mail.setPlainTextBody(body);

        // Pass this email message to the built-in sendEmail method
        // of the Messaging class
        Messaging.SendEmailResult[] results = Messaging.sendEmail(
                                 new Messaging.SingleEmailMessage[] { mail });
         

        // Call a helper method to inspect the returned results
        inspectResults(results);

    }

    // Helper method
    private static Boolean inspectResults(Messaging.SendEmailResult[] results) {

        Boolean sendResult = true;

        // sendEmail returns an array of result objects.
        // Iterate through the list to inspect results.
        // In this class, the methods send only one email,
        // so we should have only one result.
        for (Messaging.SendEmailResult res : results) {
            if (res.isSuccess()) {
                System.debug('Email sent successfully');
            }
            else {
                sendResult = false;
                System.debug('The following errors occurred: ' + res.getErrors());                

            }

        }

        return sendResult;

    }

}



public class StringArrayTest {
	public static void generateStringArray ()
}


