global class TempSoapService {
	webservice static double getTemp(double t){
        double convTemp = convertTemperatures.F2C(t);
        return convTemp;
    }
}