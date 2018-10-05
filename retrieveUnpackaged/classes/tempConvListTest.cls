@isTest
global class tempConvListTest {
	global static testMethod void testTempList(){
        system.RestContext.request = new RestRequest();
        RestContext.request.requestURI = '/v3/RestWSlistoftemp/*';
        List<double> t = new List<double>{10.0, 20.0, 30.0};
        List<double> f2c = new List<double>{50.0, 68.0, 86.0};
        List<double> c2f = new List<double>{-12.222222222222221, -6.666666666666667, -1.1111111111111112};
        system.assertEquals(f2c, tempConvList.getTemp(t, 'c'));
        system.assertEquals(c2f, tempConvList.getTemp(t, 'f'));
    }
}