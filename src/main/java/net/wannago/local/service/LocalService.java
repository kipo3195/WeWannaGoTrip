package net.wannago.local.service;

import java.util.List;
import java.util.Map;

import net.koreate.util.Criteria;
import net.koreate.util.PageMaker;
import net.wannago.cafRes.CaResVO;
import net.wannago.hotel.vo.HotelVO;

public interface LocalService {

	List<HotelVO> readList(Criteria criteria);

	Map<String, String> getRPrice();

	PageMaker getPageMaker(int page);

	PageMaker getPageMaker1(int page);

	List<CaResVO> readCalesList(Criteria criteria);

	//


	
	
}
