public class FahrenheitToKelvinConverter implements IConvert{
    private static final String SYMBOL = 'K';
	
    public String convert(Integer value) {
        return String.valueOf((value + 459.67) * 5/9) + SYMBOL;
    }
}