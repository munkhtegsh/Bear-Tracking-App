public class AddPrimaryContact implements Queueable {
	private Contact contact;
    private String state;
    
    public AddPrimaryContact(Contact record, String state) {
        this.contact = record;
        this.state = state;
    }
    
    public void execute(QueueableContext context) {
        List<Account> accounts = [SELECT id, billingState, (SELECT id FROM contacts) FROM account where billingState = :state LIMIT 200];
        List<Contact> contacts = new List<Contact>();
        for (Account account : accounts) {
            Contact c = contact.clone(false, false, false, false);
            c.accountid = account.id;
            contacts.add(c);
        }
        
        insert contacts;
    }
}