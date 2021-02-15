package net.wannago.local.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.util.Criteria;
import net.koreate.util.PageMaker;
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

	
	


	

}
