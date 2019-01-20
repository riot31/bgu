public class KelvinToFahrenheitConverter implements IConvert {
    private static final String SYMBOL = '°F';
    
    public String convert(Integer value) {
        return String.valueOf(value * 9/5 - 459.67) + SYMBOL;
    }
}