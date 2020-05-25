@isTest
public class ParkLocatorTest {
    @isTest static void testCountry() {
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        
        List<String> parks = ParkLocator.country('Germany');
        List<String> expected = new List<String>{'Hamburg Wadden Sea National Park', 'Hainich National Park', 'Bavarian Forest National Park'};
		System.assertEquals(expected, parks);        
    }
}