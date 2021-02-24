package net.wannago.local.service;

import java.util.List;
import java.util.Map;

import net.koreate.util.Criteria;
import net.koreate.util.PageMaker;
import net.wannago.admin.vo.SearchVO;
import net.wannago.hotel.vo.HCommentVO;
import net.wannago.hotel.vo.HotelRoomVO;
import net.wannago.hotel.vo.HotelVO;

public interface LocalService {

	List<HotelVO> readList(Criteria criteria);

	Map<String, String> getRPrice();

	PageMaker getPageMaker(int page);

	HotelVO getHotelVO(int hno);

	List<String> getHotelDetailImg(int hno);

	List<HotelVO> searchInfo(SearchVO vo);

	HotelVO HotelInfo(int hno);

	Map<String,Integer> hotelPrice(double a, int hno, int plus);

	Map<String,Object> getBookableRoom(HotelRoomVO vo);

	Map<String,Object> likeCnt(int hno, int mno);

	List<HotelVO> orderByPrice();

	List<HotelVO> orderByReg();

	List<HotelVO> orderByLike();

	List<HCommentVO> getComment(int hno);



	
	
}
