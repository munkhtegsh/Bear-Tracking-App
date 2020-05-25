public class StringArrayTest {
    public static List<String> generateStringArray(Integer num) {
        List<String> l = new List<String>();
        for (Integer i = 0; i < num; i++) {
            String s = 'Test' + ' ' + i;
            l.add(s);
        }
        
        return l;

    }
}