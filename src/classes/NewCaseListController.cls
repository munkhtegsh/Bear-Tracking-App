public class NewCaseListController {
    //private String st = 'New';

    public List<Case> getNewCases() {
            
        return [SELECT id, CaseNumber FROM case WHERE status = 'New'];
           
    }
}