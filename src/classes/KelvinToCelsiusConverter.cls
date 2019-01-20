public with sharing class KelvinToCelsiusConverter implements IConvert {
    private static final String SYMBOL = '°C';
    
    public String convert(Integer value) {
        return String.valueOf(value - 273.15) + SYMBOL;
    }
}