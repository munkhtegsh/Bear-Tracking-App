public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer num, String name) {
        List<Contact> contacts = new List<Contact>();
        for(Integer i = 0; i < num; i++) {
            contacts.add(new Contact(FirstName = 'Test' + i, LastName = name));
        }
        
        return contacts;
    }
    
    
}