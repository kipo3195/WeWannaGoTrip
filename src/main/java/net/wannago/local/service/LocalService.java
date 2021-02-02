package net.wannago.local.service;

import java.util.List;
import java.util.Map;

import net.wannago.hotel.vo.HotelVO;

public interface LocalService {

	List<HotelVO> readList();

	Map<String, String> getRPrice();
	

	
	
}
