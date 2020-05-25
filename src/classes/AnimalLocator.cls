public class AnimalLocator {
    public static String getAnimalNameById(Integer n) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + n);
        request.setMethod('GET');
        HttpResponse res = http.send(request);
        String name;
        if (res.getStatusCode() == 200) {
            Map<String, Object> body = (Map<String, Object>) JSON.deserializeUntyped(res.getBody());
            Map<String, Object> animal = (Map<String, Object>) body.get('animal');
			System.debug(animal);
            name = (String) animal.get('name');
        }
        
        return name;
        
   
    }
}