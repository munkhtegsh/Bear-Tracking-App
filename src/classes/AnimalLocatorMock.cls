@isTest
global class AnimalLocatorMock implements HttpCalloutMock {
    global HTTPResponse respond(HTTPRequest request){
        HttpResponse response = new HTTPResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"animal": {"eats": "chicken food", "id": "1", "name":"chicken", "says":"cluck cluck"}}');
        response.setStatusCode(200);
        return response;
    }
}