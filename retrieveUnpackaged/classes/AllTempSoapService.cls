global class AllTempSoapService {
	webservice static double getTemp(double temp, string type){
        double convTemp;
        if (type == null || type == 'f' || type != 'c'){
        	convTemp = convertTemperatures.F2C(temp);
        }else if (type == 'c'){
        	convTemp = convertTemperatures.C2F(temp);    
        }
    return convTemp;
    }
}