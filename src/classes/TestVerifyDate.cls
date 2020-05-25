@isTest
public class TestVerifyDate {
    @isTest static void checkDates() {
        Date d1 = Date.newInstance(2019, 12, 31);
        Date d2 = Date.newInstance(2020, 01, 03);
        Date moreThan30 = d1.addDays(30);
        Date endOfMonth = VerifyDate.SetEndOfMonthDate(d1);
        
        Date in30days = VerifyDate.CheckDates(d1, d2);
        Date notIn30days = VerifyDate.CheckDates(d1, moreThan30);

        System.assertEquals(d2, in30days);
		System.assertEquals(endOfMonth, notIn30days);
    }
    
    @isTest static void DateWithin30Days() {
		Date d1 = Date.newInstance(2019, 12, 31);
        Date d2 = Date.newInstance(2020, 01, 03);
        Date moreThan30 = d1.addDays(30);
        Boolean in30days = VerifyDate.DateWithin30Days(d1, d2);
        Boolean notIn30days = VerifyDate.DateWithin30Days(d1, moreThan30);
        System.assertEquals(true, in30days);
        System.assertEquals(false, false);
    }
    
    @isTest static void setEndOfMonthDate() {
        Date d1 = Date.newInstance(2020, 1, 3);
        Date endDate = Date.newInstance(2020, 1, 31);

		Date endOfMonthDate = VerifyDate.SetEndOfMonthDate(Date.newInstance(2020, 1, 3));
        System.assertEquals(endDate, endOfMonthDate);
    }
    
    
}