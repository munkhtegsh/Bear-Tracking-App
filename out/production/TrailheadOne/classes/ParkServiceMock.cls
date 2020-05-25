@isTest
global class ParkServiceMock implements WebServiceMock{
   global void doInvoke(
   			Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) {
      ParkService.byCountryResponse parkRes = new ParkService.byCountryResponse();
      parkRes.return_x = new List<String>{'Hamburg Wadden Sea National Park', 'Hainich National Park', 'Bavarian Forest National Park'};
      response.put('response_x', parkRes);        
    }
}