trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
	List <Task> task = new List<Task>();
    for (Opportunity o : Trigger.New) {
        if (o.StageName == 'Closed Won') {
            task.add(new Task(Subject = 'Follow Up Test Task', WhatId = o.id));
        }
    }
    
    upsert task;
}