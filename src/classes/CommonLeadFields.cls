/**
 * Created by mmunkhba on 5/21/20.
 */

public with sharing class CommonLeadFields {

    @AuraEnabled(Cacheable=true)
    public static List<Lead> getPBSleads(String leadName) {
        if (String.isBlank(leadName)) {
            return null;
        }

        String searchName = leadName + '%';
        return [SELECT Name FROM lead where Name like :searchName LIMIT 5];
    }
}