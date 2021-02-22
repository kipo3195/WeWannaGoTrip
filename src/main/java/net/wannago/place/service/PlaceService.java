package net.wannago.place.service;

import java.util.List;

import net.koreate.util.Criteria;
import net.koreate.util.PageMaker;
import net.wannago.place.vo.PlaceVO;

public interface PlaceService {


	PageMaker getPageMaker1(int page);

	List<PlaceVO> readPlaceList(Criteria criteria);
}
