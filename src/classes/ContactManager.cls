/**
 * Created by mmunkhba on 5/19/20.
 */

public with sharing class ContactManager {
    @AuraEnabled(Cacheable=true)
    public static List<Contact> getContact() {
        return [select id, LastName, Phone from Contact LIMIT  20];
    }

    @AuraEnabled(Cacheable=true)
    public static List<Contact> getNumOfContacts(Integer numberOfRecords) {
        return [select id, LastName, Phone from Contact LIMIT :numberOfRecords];
    }
}