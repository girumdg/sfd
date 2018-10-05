trigger countNumberofContacts on Contact (after insert, after delete, after update) {   
    //check to see if the action is after & either insert or update
   if(trigger.isAfter && (trigger.isInsert || trigger.isUpdate)){   
       //create set of ids
    Set<Id> accIds = new Set<Id>();
       //create list of accounts 
   	List<Account> accounts = new List<Account>();
   	  //traverse through contacts and get contact ids 
      //and add/store it to new set of accids 
    for(Contact c : trigger.new){
       accIds.add(c.Accountid);
   	}
      // traverse through account and query the Id, name 
      // number of contacts related to each account as long as 
      // id is in the set of ids gathered from contacts  
   for(Account a : [SELECT ID, Name, Number_of_Contacts__c,
                     (SELECT Id FROM Contacts)
                     FROM Account WHERE id in: accIds]){
       					Account ac = new Account();
       					//check to see if the Ids match
       					ac.id = a.id;
       					ac.Number_of_Contacts__c = a.Contacts.size();
       					accounts.add(ac);
                     }
      //update the Account number of contacts field 
      //outside of the for loop to avoid hitting governer limits
    update accounts; 
    }
    //check to see if the action is after & is Delete
    if(trigger.isAfter && trigger.isDelete){
        Set<Id> accIds = new Set<Id>(); 
   	    List<Account> accounts = new List<Account>();
          //traverse through existing contacts and get contact ids 
          //and add/store it to new set of accids 
       for(Contact c : trigger.old){
       		accIds.add(c.Accountid);
   	   } 
   	   for(Account a : [SELECT ID, Name, Number_of_Contacts__c,
                     (SELECT Id FROM Contacts)
                     FROM Account WHERE id in: accIds]){
       					Account ac = new Account();
       					//check to see if the Ids match
       					ac.id = a.id;
       					ac.Number_of_Contacts__c = a.Contacts.size();
       					accounts.add(ac);
       }
      update accounts; 
    } 
    //check to see if the action is after & is update
    if(trigger.isAfter && trigger.isUpdate){
        Set<Id> accIds = new Set<Id>(); 
   	    List<Account> accounts = new List<Account>();
          //traverse through existing contacts and get contact ids 
          //and add/store it to new set of accids 
       for(Contact c : trigger.old){
       		accIds.add(c.Accountid);
   	   } 
   	   for(Account a : [SELECT ID, Name, Number_of_Contacts__c,
                     (SELECT Id FROM Contacts)
                     FROM Account WHERE id in: accIds]){
       					Account ac = new Account();
       					//check to see if the Ids match
       					ac.id = a.id;
       					ac.Number_of_Contacts__c = a.Contacts.size();
       					accounts.add(ac);
       }
      update accounts; 
    }          
}