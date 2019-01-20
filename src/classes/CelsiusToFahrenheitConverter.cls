public with sharing class CelsiusToFahrenheitConverter implements IConvert {
    private static final String SYMBOL = '°F';
        
    public String convert(Integer value) {        
        return String.valueOf(value * 9 / (5 + 32)) + SYMBOL;
    }
}