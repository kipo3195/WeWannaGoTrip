package net.wannago.article.util;

import java.math.BigInteger;

public class Util {

	public static int getAsInt(Object object) {
		return getAsInt(object, -1);
	}
	

	public static int getAsInt(Object object, int defaultValue) {
		if( object instanceof BigInteger) { // BigInteger 라면
			 return ((BigInteger)object).intValue();
			 
		}else if ( object instanceof String) {	// String 이라면 
			 return Integer.parseInt((String) object);
			 
		}else if ( object instanceof Long) { // Long 이라면
			 return (int)((long) object);
		
		}else if ( object instanceof Integer) { // Integer 라면
			 return (int) object;	 
		}
		return defaultValue;
	}

	
	//Member
	public static String getAsStr(Object object, String defaultValue) {
		if (object == null) {
			return defaultValue;
		}

		if (object instanceof String) {
			return (String) (object);
		}

		return object.toString();
	}
	
	
}
