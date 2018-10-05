public class AsynchDemo {
    //debug using the following commented code
    //Account a = new Account(Name = 'Testing Mix DML');
    //insert a;
    //AsynchDemo.insertUser();
    @future// you can also add (callout=true) to call out to other web services
    public static void insertUser(){
        Profile p = [SELECT Id FROM Profile WHERE Name = 'Standard User'];
        UserRole r = [SELECT Id FROM UserRole WHERE Name='CEO'];
        
        User u = new User(alias = 'testdml', email='testdmluser@abc.com',
                         emailencodingkey='UTF-8', lastname='dmliser', firstname='test',
                         languagelocalekey='en_us', timezonesidkey='America/New_York',
                         profileid = p.id, userroleid = r.id,
                         username='testdmluser@abc.com');
        insert u;
    }
}