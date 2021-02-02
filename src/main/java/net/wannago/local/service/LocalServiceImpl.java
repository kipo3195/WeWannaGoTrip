package net.wannago.local.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.wannago.hotel.dao.HotelDAO;
import net.wannago.hotel.vo.HotelVO;

@Service	
public class LocalServiceImpl implements LocalService{
	
	@Inject
	HotelDAO dao;

	@Override
	public List<HotelVO> readList() {
		return dao.readList();
	}

	@Override
	public Map<String, String> getRPrice() {
		Map<String,String> priceMap = new HashMap<String, String>();
	
	
		
		return priceMap;
	}
	
	

}
