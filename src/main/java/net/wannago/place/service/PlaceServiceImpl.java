package net.wannago.place.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.util.Criteria;
import net.koreate.util.PageMaker;
import net.wannago.place.dao.PlaceDAO;
import net.wannago.place.vo.PlaceVO;

@Service
public class PlaceServiceImpl implements PlaceService{

	@Inject
	PlaceDAO pldao;
	
	@Override
	public PageMaker getPageMaker1(int page) {
		Criteria cri = new Criteria(page,8);
		int totalCount = pldao.PlaceCount();
		PageMaker pageMaker1 = new PageMaker();
		pageMaker1.setCri(cri);
		pageMaker1.setTotalCount(totalCount);
		
		return pageMaker1;
	}
	
	@Override
	public List<PlaceVO> readPlaceList(Criteria cri) {
		System.out.println("1");
		pldao.placeList(cri);
		return pldao.placeList(cri);
	}

	
}
