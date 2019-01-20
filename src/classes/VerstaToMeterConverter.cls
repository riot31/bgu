public with sharing class VerstaToMeterConverter implements IConvert{
    private static final String SYMBOL = 'm';

    public String convert(Integer value) {
        return String.valueOf(value * 1066.8) + SYMBOL;
    }

}