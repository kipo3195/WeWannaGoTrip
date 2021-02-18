package net.wannago.local.service;

import java.util.List;
import java.util.Map;

import net.koreate.util.Criteria;
import net.koreate.util.PageMaker;
import net.wannago.admin.vo.SearchVO;
import net.wannago.cafRes.vo.CaResVO;
import net.wannago.hotel.vo.HotelVO;

public interface LocalService {

	List<HotelVO> readList(Criteria criteria);

	Map<String, String> getRPrice();

	PageMaker getPageMaker(int page);

	HotelVO getHotelVO(int hno);

	List<String> getHotelDetailImg(int hno);

	List<HotelVO> searchInfo(SearchVO vo);

	HotelVO HotelInfo(int hno);

	Map<String, Integer> hotelPrice(double a, int hno, int plus);



	
	
}
