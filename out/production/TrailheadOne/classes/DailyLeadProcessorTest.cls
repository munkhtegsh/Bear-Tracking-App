@isTest
private class DailyLeadProcessorTest {
    static testmethod void DailyLeadProcessorTest() {
        List<Lead> leads = new List<Lead>();
        for (Integer i = 0; i < 200; i++) {
            Lead lead = new Lead(FirstName='firstname', Company = 'Demo ' + i, LastName = 'LastName ' + i);
            leads.add(lead);
        }
        
        insert leads;
        
        DailyLeadProcessor dlp = new DailyLeadProcessor();
        String sch = '0 0 13 * * ?';
        
        Test.startTest();
        	System.schedule('Remind lead processors', sch, dlp);  

        Test.stopTest();
        
            Lead updatedL = [SELECT id, leadSource from Lead][0];
        	System.assertEquals('Dreamforce', updatedL.LeadSource);
        
    }
    
    
}