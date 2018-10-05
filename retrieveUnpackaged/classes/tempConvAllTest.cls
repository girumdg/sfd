@isTest
global class tempConvAllTest {
    global static testMethod void testAll(){
        system.RestContext.request = new RestRequest();
        RestContext.request.requestURI = '/v2/RestWSalltemp/*';
        double t = 10.0;
        system.assertEquals(50.0, tempConvAll.getTemp(t, 'c'));
        system.assertEquals(-12.222222222222221, tempConvAll.getTemp(t, 'f'));
    }
}