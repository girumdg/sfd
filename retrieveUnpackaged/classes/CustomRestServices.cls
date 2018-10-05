//global so it would be accesible form outide 
@RestResource(urlMapping='/CustomRest/*')
global class CustomRestServices {
//methods to handle callouts at a specific action
 @HttpGet//display use get in workbench
     global static Account getAccountWithContacts(){
        RestRequest req = RestContext.request;
        string n = req.requestURI.substring(req.requestURI.lastIndexof('/')+1);
        n = '%' + n+ '%';
        Account a = [SELECT Name, (SELECT LastName, FirstName FROM Contacts) FROM Account WHERE Name LIKE :n LIMIT 1];
    	return a;
    }
    
 @HttpPost//insert contact use Post in workbench
    global static Id creatContact(string lastname, Account acc){
        Contact c = new Contact(lastname = lastname, accountId = acc.Id);
        insert c;
        return c.Id;
    }
  @HttpPut//update contact use Put in workbench
    global static Contact updateContact(Contact c){
        update c;
        return c;
    }
}