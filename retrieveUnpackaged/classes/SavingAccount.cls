public class SavingAccount extends BankAccount{   
    
    public List<BankAccount> sAccount;

    public SavingAccount(String fn, String ln, String sid, Decimal dAmount) {
         super(fn, ln, sid, dAmount);
         this.sAccount = new List<BankAccount>();
    }
    public void addSavingAccount(BankAccount sa){
        sAccount.add(sa);
    }

    public override Decimal withdrawAcc(Decimal amount){
		throw new UnsupportedOperationException('Withdraw is not allowed'); 
    } 
}