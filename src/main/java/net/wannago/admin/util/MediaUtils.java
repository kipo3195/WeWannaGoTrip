package net.wannago.admin.util;
import java.util.HashMap;
import java.util.Map;

import org.springframework.http.MediaType;

public class MediaUtils {
	
	private static Map<String,MediaType> mediaMap;
	
	static {
		mediaMap = new HashMap<>();
		//image/jpeg
		mediaMap.put("JPG", MediaType.IMAGE_JPEG);
		mediaMap.put("JPEG", MediaType.IMAGE_JPEG);
		mediaMap.put("GIF", MediaType.IMAGE_GIF);
		mediaMap.put("PNG", MediaType.IMAGE_PNG);
		
	}
	
	//확장자 명을 전달 받아서 이미지 타입인지 아닌지 확인하기 위해서 대문자로 변경함
	public static MediaType getMediaType(String type) {
		
		return mediaMap.get(type.toUpperCase());		
	}

}
