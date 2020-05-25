@isTest
public class AddPrimaryContactTest {
	@testSetup
    static void setup() {
        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < 50; i++) {
            Account account = new Account();
            account.Name = 'FirstName test';
            account.BillingState = 'NY';
            accounts.add(account);
        }
        
         For (Integer i = 0; i < 50; i++) {
            Account account = new Account();
            account.name = 'FirstName test';
            account.BillingState = 'CA';
            accounts.add(account);
        }
        
        insert accounts;
    }
    
    static testMethod void testQueuable() {
        List<Account> account = [SELECT id, BillingState FROM account where BillingState = 'NY'];
        Contact contact = new Contact(LastName='Test', FirstName='Test');
        AddPrimaryContact pc = new AddPrimaryContact(contact, 'CA');

        Test.startTest();
        	System.enqueueJob(pc);
        Test.stopTest();
        
        
        
        
        
    }
}