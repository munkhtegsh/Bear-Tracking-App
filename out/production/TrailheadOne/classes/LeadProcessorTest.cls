@isTest
private class LeadProcessorTest {
	@testSetup
    static void setup() {
    	List<Lead> leads = new List<Lead>();
        for (Integer i = 0; i < 200; i++) {
            leads.add(new Lead(FirstName = 'Firstname ' + i, LastName = 'LastName ' + i, company='test', leadSource = 'Yo ' + i));
        }
        insert leads; 
    }
    
    static testmethod void test() {
        Test.startTest();
        	LeadProcessor lp = new LeadProcessor();
        	Database.executeBatch(lp);
        Test.stopTest();
        
        List<Lead> upLeads = [SELECT id, leadSource FROM lead];
        
        System.assertEquals('Dreamforce', upLeads[0].LeadSource);
    }
}