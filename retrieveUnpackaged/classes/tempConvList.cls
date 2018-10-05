@RestResource(urlMapping='/v3/RestWSlistoftemp/*')
global class tempConvList {

    @HttpPost
    global static List<double> getTemp(List<double> temp, string type){
        list<double> convTemp = new List<double>();
        for (double t : temp){  
            double nt;
        	if (type == null || type == 'f' || type != 'c'){
            	 nt = convertTemperatures.F2C(t);
            }
            else if (type == 'c'){
                nt = convertTemperatures.C2F(t);  
             }
        convTemp.add(nt);  
        }
    return convTemp;
    }
}