public with sharing class CelsiusToKelvinConverter implements IConvert{
    private static final String SYMBOL = 'K';
    
    public String convert(Integer value) {
        return String.valueOf(value + 273.15) + SYMBOL;
    }
}