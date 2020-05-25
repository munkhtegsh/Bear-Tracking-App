public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String str) {
        List<List<SObject>> searchList = [FIND :str IN ALL FIELDS RETURNING Contact(firstname, lastname), Lead(firstname, lastname)];
        return searchList;
    }
}