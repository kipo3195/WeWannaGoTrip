package net.wannago.cafRes.service;

import java.util.List;

import net.koreate.util.Criteria;
import net.koreate.util.PageMaker;
import net.wannago.cafRes.vo.CaResVO;

public interface caResService {

	
	PageMaker getPageMaker1(int page);

	List<CaResVO> readCalesList(Criteria criteria);

	//
}
