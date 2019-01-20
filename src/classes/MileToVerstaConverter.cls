public with sharing class MileToVerstaConverter implements IConvert{
    private static final String SYMBOL = 'ver';

    public String convert(Integer value) {
        return String.valueOf(value * 1609.344 / 1066.8) + SYMBOL;
    }

}