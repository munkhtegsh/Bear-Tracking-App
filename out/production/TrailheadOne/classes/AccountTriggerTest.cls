@isTest
public class AccountTriggerTest {
    @isTest static void testAccountTrigger() {
        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < 200; i++) {
            Account account = new Account();
            account.name = 'name ' + i;
            account.billingState = 'CA';
            accounts.add(account);
        }
        

        Test.startTest();
        	insert accounts;
        Test.stopTest();
        
        List<Account> accts = [SELECT shippingState FROM account];
        
        for (Account acct : accts) {
            System.assertEquals('CA', String.valueOf(acct.shippingAddress));
        }
       
        
        
    }
}