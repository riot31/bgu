public with sharing class VerstaToMileConverter implements IConvert{
    private static final String SYMBOL = 'ver';

    public String convert(Integer value) {
        return String.valueOf(value * 1066.8 / 1609.344) + SYMBOL;
    }

}