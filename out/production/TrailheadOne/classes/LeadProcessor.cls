global class LeadProcessor implements Database.Batchable<sObject > {
    global Database.QueryLocator start (Database.BatchableContext bc) {
        return Database.getQueryLocator('SELECT id, LeadSource FROM lead');
    } 
    
    global void execute(Database.BatchableContext bc, List<Lead> scope) {
        List<Lead> leads = new List<Lead>();
        for (Lead lead : scope) {
            lead.leadsource = 'Dreamforce';
            leads.add(lead);
        }
        
        update leads;
    }
    
    global void finish(Database.BatchableContext bc) {
        System.debug(bc);
        //AsyncApexJob job = [SELECT id, leadSource from lead];
        //EmailUtils.sendMessage(job);
    }
}