@isTest
global class tempConvRestServicesTest {	
    global static testMethod void testF2C(){
        system.RestContext.request = new RestRequest();
        RestContext.request.requestURI = '/v1/RestWSf2c/*';
        double t = 10.0;
        tempConvRestServices.getTemp(t);
        system.assertEquals(-12.222222222222221, tempConvRestServices.getTemp(t));
    }
}