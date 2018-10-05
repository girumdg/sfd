@RestResource(urlMapping='/v1/RestWSf2c/*')
global class tempConvRestServices {
	@HttpPost
    global static double getTemp(double t){
        double convTemp = convertTemperatures.F2C(t);
        return convTemp;
    }
}