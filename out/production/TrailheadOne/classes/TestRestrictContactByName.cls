@isTest
public class TestRestrictContactByName {
    @isTest static void RestrictContactByName() {
 
        Contact cInvalid = new Contact(LastName = 'INVALIDNAME');
        //insert cInvalid;

        //Contact cValid = new Contact(lastname = 'Valid');
        //insert cValid;

        Test.startTest();
        Database.SaveResult result = Database.insert(cInvalid, false);
        Test.stopTest();
        

        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', result.getErrors()[0].getMessage());


    }
}