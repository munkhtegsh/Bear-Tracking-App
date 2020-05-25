public class ContactSearch {
    public static Contact [] searchForContacts (String str1, String str2) {
        return [SELECT id, name FROM contact where lastName = :str1 and mailingPostalCode = :str2];
    }
}