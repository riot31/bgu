public with sharing class ConverterController {
	
    @AuraEnabled
    public static String convert(Integer value, String fromV, String toV) {
        return ConvertService.convert(value, fromV, toV);
    }
    
}