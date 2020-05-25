global class DailyLeadProcessor implements Schedulable  {
    global void execute(SchedulableContext ctx) {
        List<Lead> leads = [SELECT id, leadSource from lead where leadSource = ''];
        List<Lead> nl = new List<Lead>();
        for (Lead lead : leads) {
            lead.leadSource = 'Dreamforce';
            nl.add(lead);
        }
        upsert nl;
 
    }

}