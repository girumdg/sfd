public class JSRemotingController {
    public List<Account> accounts {get; set;}
    public List<Contact> contacts {get; set;}
    
    public String sortDirection = 'ASC';
    private String sortField = 'Name';
    
    public JSRemotingController(){
        getAllAccounts();
    }
    public PageReference getAllAccounts(){
        accounts = [SELECT Id, Name, BillingState, Industry, Rating, Type, CreatedDate FROM Account];
        return ApexPages.currentPage();
    }
    @RemoteAction
    public static List<Contact> getContactsByAccountId(Id acctId){
        system.debug(acctId);
        return [SELECT FirstName, LastName, Email, Phone FROM Contact WHERE AccountId = :acctId];
    }
    
        
  	public String sortExpression{
      get{
      	return sortField;
	  }
      set{
      	//if the column is clicked then switch 
      	//between Ascending and Descending modes
      	if (value == sortField)
        	sortDirection = (sortDirection == 'ASC')? 'DESC' : 'ASC';
        else
            sortDirection = 'ASC';
            sortField = value;
      }
     }
 	
    public String getSortDirection(){
    	//if column is not selected
    	if (sortExpression == null || sortExpression == '')
      		return 'ASC';
    	else
     		return sortDirection;
 	}
 
    public void setSortDirection(String value){ 
   		sortDirection = value;
 	}
    public PageReference SortByField() {
       //build the full sort expression by which field and order direction
       string sortOrderBy = sortExpression  + ' ' + sortDirection;
       //query the database based on the sort expression
       accounts = Database.query('Select Name, Rating, Industry from Account order by ' + sortOrderBy + ' limit 1000');
       return null;
    }
}