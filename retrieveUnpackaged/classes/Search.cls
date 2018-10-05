public class Search 
 { 
   // declare a publicly accessible search method that will retur a list of Positons
   Public Static List<Position__c> PositionSearch(String request)
   {//assign the query result to a variable name p with typ list
    //quering to return a list of all position names matching the request string    
     List<Position__c> pl = [Select Name FROM position__c WHERE Name =: request];
     return pl;  
   }
}