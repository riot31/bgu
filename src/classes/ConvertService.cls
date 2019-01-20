public with sharing class ConvertService {
    public static final Map<String, IConvert> convertMap = new Map<String, IConvert> {
        'CelsiusToFahrenheit' => new CelsiusToFahrenheitConverter(),
        'FahrenheitToCelsius' => new FahrenheitToCelsiusConverter(),
        'CelsiusToKelvin' => new CelsiusToKelvinConverter(),
        'KelvinToCelsius' => new KelvinToCelsiusConverter(),
        'FahrenheitToKelvin' => new FahrenheitToKelvinConverter(),
        'KelvinToFahrenheit' => new KelvinToFahrenheitConverter(),
            
        'MeterToMile' => new MeterToMileConverter(),
        'MeterToVersta' => new MeterToVerstaConverter(),
        'MileToMeter' => new MileToMeterConverter(),
        'MileToVersta' => new MileToVerstaConverter(),
        'VerstaToMeter' => new VerstaToMeterConverter(),
        'VerstaToMile' => new VerstaToMileConverter()
    };
    
    public static String convert(Integer value, String fromV, String toV)  {
        try {
            System.debug(fromV + 'To' + toV);
            return convertMap.get(fromV + 'To' + toV).convert(Integer.valueOf(value));
        } catch (Exception ex) {
            return ex.getMessage();
        }
    }
}