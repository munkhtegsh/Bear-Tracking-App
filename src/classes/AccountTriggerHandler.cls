public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> ac) {
		List<Account> accounts = new List<Account>();
        for (Account account : ac) {
            if (account.shippingState != account.billingState) {
              account.shippingState = account.billingState;
              accounts.add(account);
            }
        }
        insert accounts;
    }
}