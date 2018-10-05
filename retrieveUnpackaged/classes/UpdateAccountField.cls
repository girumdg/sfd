//class to update the number of contacts fiels in Account
public class UpdateAccountField implements Database.Batchable<sObject>, Database.Stateful{
	//to check number of records updated 
	//matches the number of records in our DB
    public Integer total=0;
    
    //query for the field to be updated
    public Database.QueryLocator start(Database.BatchableContext CB){
       string query = 'SELECT Number_of_Contacts__c, (SELECT Id FROM Contacts) FROM Account';
        return Database.getQueryLocator(query);
    }
    //update the field to the the updated value
    public void execute(Database.BatchableContext BC,List<sObject> scope){
        for (Account acct : (List<Account>) scope){
            acct.Number_of_Contacts__c = acct.Contacts.size();
            total ++;
        }
        update scope;
     }
    
    public void finish(Database.BatchableContext BC){
       system.debug('updated '+ total + 'Records'); 
    }
}