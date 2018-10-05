@isTest
global class ConvertTemperaturesTest {
	global static testMethod void testTempConv(){
        
        double t = 10.0;
        system.assertEquals(-12.222222222222221, ConvertTemperatures.F2C(t));
        system.assertEquals(50.0, ConvertTemperatures.C2F(t));
    }
}