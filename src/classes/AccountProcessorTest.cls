@isTest
public class AccountProcessorTest {
    public static testMethod void TestAccountProcessorTest() {
        Account account = new Account();
        account.name = 'Jan6';
        insert account;
        
        Contact contact = new Contact();
        contact.accountid = account.id;
        contact.lastname = 'ContactJan6';
        insert contact;
        
        List <id> listIds = new List<id>();
        listIds.add(account.id);
        
		Test.startTest();
        	AccountProcessor.countContacts(listIds);
        Test.stopTest();
        
        Account ac = [SELECT Number_of_Contacts__c FROM account where account.id IN :listIds LIMIT 1];
        System.assertEquals ( Integer.valueOf(ac.Number_of_Contacts__c) ,1);
    }
}