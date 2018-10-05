//global so it would be accesible form outside 
global with sharing class ConvertTemperatures {
        
    global static double F2C(double fdegree){
        double celsius = (fdegree - 32) * (5.0/9.0) ;
        return celsius;
    }
	
    global static double C2F(double cdegree){
        double fahrenheit = ((9.0/5.0) * cdegree) + 32 ;
        return fahrenheit;
    }
}