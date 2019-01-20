public with sharing class MeterToVerstaConverter implements IConvert{
    private static final String SYMBOL = 'ver';

    public String convert(Integer value) {
        return String.valueOf(value / 1066.8) + SYMBOL;
    }

}