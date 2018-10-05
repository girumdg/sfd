// to let it know this is a test class using test data
@isTest
// in order to use actual data use 
public class BankAccount_test {
	//use method to test if a bank account is created accrrdingly
    public static testMethod void testBankAccountcreation(){ 
        BankAccount ba = new BankAccount('act01', 'Abebe', 'Beretaberet', 100.00);
        system.assertEquals(100.00, ba.getBalance());
    }
   
    public static testMethod void testDepositAcc(){ 
        BankAccount ba = new BankAccount('sa01', 'fname', 'lname',250.00);
        ba.depositAcc(45.0);
        //in assertion you put the expected , the actual
        //always compare values of the same type
        system.assertEquals(295.00, ba.getBalance());
    }
    
     public static testMethod void testOwnerNameAcc(){ 
        BankAccount ba = new BankAccount('sa01', 'fname', 'lname',250.00);
        ba.fullName('gee', 'jojo');
        //in assertion you put the expected , the actual
        //always compare values of the same type
        system.assertEquals('gee jojo', ba.getfullName());
    }
    
    public static testMethod void testwithdrawAcc(){ 
        BankAccount ba = new BankAccount('sa01', 'fname', 'lname',250.00);
        ba.withdrawAcc(45.0);
        //in assertion you put the expected , the actual
        //always compare values of the same type
        system.assertEquals(205.00, ba.getBalance());
    }
    public static testMethod void testwithdrawBelowBalance(){ 
        BankAccount ba = new BankAccount('sa01', 'fname', 'lname',150.00);
        try{
            ba.withdrawAcc(160.00);
        }
        catch (Exception e){
           system.assertEquals('Withdraw unaccepted Insufficent Funds', e.getMessage());
        }
    }
}