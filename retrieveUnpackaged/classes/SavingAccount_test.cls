@isTest// to let it know this is a test class using test data
// in order to use actual data use 
public class SavingAccount_test {
	//use method to test if a bank account is created accrrdingly
    public static testMethod void testSavingAccountcreation()
    { 
        SavingAccount sa = new SavingAccount('sa01', 'test1', 'test2', 250.00);
        //sa.depositAcc(45.0);
        //sa.getBalance();
        system.assertEquals('sa01', sa.firstName);
        system.assertEquals(250.00, sa.getBalance());
    }
    
    public static testMethod void testBalanceDeposit(){ 
        SavingAccount sa = new SavingAccount('sa01', 'test1', 'test2',250.00);
        sa.depositAcc(45.0);
        //in assertion you put the expected , the actual
        //always compare values of the same type
        system.assertEquals(295.00, sa.getBalance());
    }
    
    public static testMethod void testWthdrawError(){ 
       SavingAccount sa = new SavingAccount('sa01', 'test1', 'test2',250.00);
        try {
            //put what is expected to be done
            sa.withdrawAcc(45.00);
       		
       }catch (Exception e){//put what the result should be 
           system.AssertEquals('Withdraw is not allowed', e.getMessage());
        }
    } 
}