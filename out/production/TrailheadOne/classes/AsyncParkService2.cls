//Generated by wsdl2apex

public class AsyncParkService2 {
    public class byCountryResponseFuture extends System.WebServiceCalloutFuture {
        public String[] getValue() {
            ParkService2.byCountryResponse response = (ParkService2.byCountryResponse)System.WebServiceCallout.endInvoke(this);
            return response.return_x;
        }
    }
    public class AsyncParksImplPort {
        public String endpoint_x = 'https://th-apex-soap-service.herokuapp.com/service/parks';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://parks.services/', 'ParkService2'};
        public AsyncParkService2.byCountryResponseFuture beginByCountry(System.Continuation continuation,String arg0) {
            ParkService2.byCountry request_x = new ParkService2.byCountry();
            request_x.arg0 = arg0;
            return (AsyncParkService2.byCountryResponseFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncParkService2.byCountryResponseFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://parks.services/',
              'byCountry',
              'http://parks.services/',
              'byCountryResponse',
              'ParkService2.byCountryResponse'}
            );
        }
    }
}