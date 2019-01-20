public with sharing class MeterToMileConverter implements IConvert{
	private static final String SYMBOL = 'mi';
    
    public String convert(Integer value) {
        return String.valueOf(value / 1609.344) + SYMBOL;
    }
}