public virtual class BankAccount {
    
    Public String firstName = '';
    Public String lastName = ''; 
    public String accountId; 
    private Decimal balance = 0;
     
    public BankAccount(String fName, String lName, String aId, Decimal depAmount){        
        this.firstName = fName;
        this.lastName = lName;
        this.accountId = aId;
        this.balance = depAmount; 
     } 
     
    public BankAccount(String aId, Decimal sdAmount){        
        this.accountId = aId;
        this.balance = sdAmount; 
     }
    
    public Decimal depositAcc(Decimal amount){        
        balance += amount;
        return balance;
     } 
     
    public virtual Decimal withdrawAcc(Decimal amount){
        if (amount <= balance){
          balance -= amount;    
        }
        else throw new UnsupportedOperationException('Withdraw unaccepted Insufficent Funds'); 
        return balance;
    }
     
    Public virtual String fullName(string fn, string ln){
       this.firstName = fn;
       this.lastName = ln; 
       return (firstName + ' ' + lastName);  
    }  
    public string getFullName(){
         return (firstName + ' ' + lastName);  
    }

    public decimal getBalance(){
      return balance;
    }     
 }