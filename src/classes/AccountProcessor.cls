public class AccountProcessor {
    @future
    public static void countContacts(List<id> accountIdList) {
        
        List <Account> la = [SELECT id, Number_of_Contacts__c, (SELECT id FROM contacts) FROM account WHERE id IN :accountIdList];
        
        for (Account account : la) {
            Integer num = account.contacts.size();
            account.Number_of_Contacts__c = num;
        }
        
        update la;

    }
}