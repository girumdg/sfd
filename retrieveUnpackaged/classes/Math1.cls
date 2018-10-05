public class Math1 {
    //making it static will give you the option of 
    //calling that method using Math.methodname(variable accepted);
    public static Decimal getAverage(List<Integer> numList){ 
       Integer sum = 0;
       Decimal avg = 0; 
        for (integer nl = 0; nl<numList.size(); nl++){
        //for (Integer nl : numList.size()){
            sum += nl;
        }
        return avg = sum/numList.size();
    }
    public static Integer getSmallestnum(List<Integer> smallNum){
      Integer sn = 0; 
        //for(Integer ssn : smallNum.size)
        for (integer i=0; i < smallNum.size(); i++){
          if (sn < smallNum[i]){
            sn = smallNum[i];
          }
        }
        return sn;
    }
   public static Integer getLargestnum(List<Integer> largeNum){
      Integer ln = 0; 
        //for(ln : largeNum)
        for(Integer i=0; i<largeNum.size();){
          if (ln > largeNum[i]){
            ln= largeNum[i];
          }
        }
        return ln;
    } 
     public static void getOddeven(Integer oe){ 
        
        if (Math.Mod(oe,2) == 0){
          system.debug(oe +'is even number');
        }
        else system.debug(oe + 'is odd number');
   
     }
     public static String getNum2string(Integer num2string){ 
         Integer x = Math.Mod(num2string,10); 
          String ns = String.valueOf(num2string);
         if (x == 1){
             ns += 'st';
             system.debug(ns);
            return ns;
          }
         else if (x == 2){
             ns += 'nd';
             system.debug(ns);
             return ns;
         }
         else if (x == 3){
             ns += 'rd';
             system.debug(ns);
             return ns;}
         else {
             ns += 'th';
             system.debug(ns);
             return ns;     
         }    
    }   
}