public class BatchDemo implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext BC){
        String query = 'SELECT Number_of_Contacts__c, (SELECT Id FROM Contacts) FROM Account';
    	return Database.getQueryLocator(query);
    }
    
    public void execute(Database.batchableContext BC, List<sObject> scope){
        for(Account a : (List<Account>) scope){
            a.Number_of_Contacts__c = a.Contacts.size();
        }
        update scope;
    }
    
    public void finish(Database.BatchableContext BC){
        
    }
}