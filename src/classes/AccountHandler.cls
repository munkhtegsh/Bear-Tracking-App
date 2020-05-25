public class AccountHandler {
    public static Account insertNewAccount(String str) {
        Account account = new Account(name=str);
        try {
          insert account;
        } catch(DmlException err) {
            return null;
        }
        
        return account;
    }
}