package net.wannago.local.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.util.Criteria;
import net.koreate.util.PageMaker;
import net.wannago.admin.vo.SearchVO;
import net.wannago.hotel.dao.HotelDAO;
import net.wannago.hotel.vo.HotelVO;

@Service	
public class LocalServiceImpl implements LocalService{

	@Inject
	HotelDAO dao;


	@Override
	public Map<String, String> getRPrice() {
		Map<String,String> priceMap = new HashMap<String, String>();
	
		return priceMap;
	}

	@Override
	public PageMaker getPageMaker(int page) {
		Criteria cri = new Criteria(page,3);
		int totalCount = dao.listCount();
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		
		return pageMaker;
	}

	@Override
	public List<HotelVO> readList(Criteria cri) {
		return dao.hotellist(cri);
	}

	
	@Override
	public HotelVO getHotelVO(int hno) {
		return dao.getHotel(hno);
	}

	@Override
	public List<String> getHotelDetailImg(int hno) {
		System.out.println("이거되나?? : "+dao.getDetailImage(hno));
		return dao.getDetailImage(hno);
	}

	@Override
	public List<HotelVO> searchInfo(SearchVO vo) {
		 
		List<HotelVO> hotel = null;
		switch(vo.getCategory()) {
		
		case "호텔":
			
			//이름으로 비교
			if(vo.getSearchOption().equals("이름")) {
				String option = "hname";
				hotel = dao.hotelSearch(option,vo.getKeyword());
				return hotel;
			}
			
			break;
		case "카페&식당":
			System.out.println("카페 및 식당");
			
			break;
		case "관광지":
			System.out.println("관광지");
			
			
			break;
		}
		
		
		vo.getKeyword();
		vo.getSearchOption();
		
		
		
		return hotel;
	}

	
	


	

}
