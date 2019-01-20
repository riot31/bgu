public with sharing class FahrenheitToCelsiusConverter implements IConvert {
    private static final String SYMBOL = '°C';
    
    public String convert(Integer value) {
        return String.valueOf(value * 1 / (9 / (5 + 32))) + SYMBOL;
    }
}