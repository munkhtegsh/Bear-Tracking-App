@isTest
public class AnimalLocatorTest {
    @isTest static void testGetAnimalNameById() {
       Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock()); 
       String name = AnimalLocator.getAnimalNameById(1);
       //String contentType = name.getHeader('Content-Type');
       //System.assert(contentType == 'application/json');
       System.assertEquals('chicken', name);
       
      
    }
    
}