//Generated by wsdl2apex

public class AsyncSoapSforceComSchemasClassTempsoapse {
    public class getTempResponse_elementFuture extends System.WebServiceCalloutFuture {
        public Double getValue() {
            soapSforceComSchemasClassTempsoapse.getTempResponse_element response = (soapSforceComSchemasClassTempsoapse.getTempResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.result;
        }
    }
    public class AsyncTempSoapService {
        public String endpoint_x = 'https://na57.salesforce.com/services/Soap/class/TempSoapService';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        public soapSforceComSchemasClassTempsoapse.SessionHeader_element SessionHeader;
        public soapSforceComSchemasClassTempsoapse.DebuggingInfo_element DebuggingInfo;
        public soapSforceComSchemasClassTempsoapse.AllowFieldTruncationHeader_element AllowFieldTruncationHeader;
        public soapSforceComSchemasClassTempsoapse.DebuggingHeader_element DebuggingHeader;
        public soapSforceComSchemasClassTempsoapse.CallOptions_element CallOptions;
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/schemas/class/TempSoapService';
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/schemas/class/TempSoapService';
        private String AllowFieldTruncationHeader_hns = 'AllowFieldTruncationHeader=http://soap.sforce.com/schemas/class/TempSoapService';
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/schemas/class/TempSoapService';
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/schemas/class/TempSoapService';
        private String[] ns_map_type_info = new String[]{'http://soap.sforce.com/schemas/class/TempSoapService', 'soapSforceComSchemasClassTempsoapse'};
        public AsyncSoapSforceComSchemasClassTempsoapse.getTempResponse_elementFuture beginGetTemp(System.Continuation continuation,Double t) {
            soapSforceComSchemasClassTempsoapse.getTemp_element request_x = new soapSforceComSchemasClassTempsoapse.getTemp_element();
            request_x.t = t;
            return (AsyncSoapSforceComSchemasClassTempsoapse.getTempResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncSoapSforceComSchemasClassTempsoapse.getTempResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/TempSoapService',
              'getTemp',
              'http://soap.sforce.com/schemas/class/TempSoapService',
              'getTempResponse',
              'soapSforceComSchemasClassTempsoapse.getTempResponse_element'}
            );
        }
    }
}