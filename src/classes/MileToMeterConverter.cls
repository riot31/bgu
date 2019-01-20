public with sharing class MileToMeterConverter implements IConvert{
    private static final String SYMBOL = 'm';

    public String convert(Integer value) {
        return String.valueOf(value * 1609.344) + SYMBOL;
    }

}