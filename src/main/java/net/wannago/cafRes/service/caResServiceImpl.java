package net.wannago.cafRes.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.util.Criteria;
import net.koreate.util.PageMaker;
import net.wannago.cafRes.dao.CafResDAO;
import net.wannago.cafRes.vo.CaResVO;

@Service
public class caResServiceImpl implements caResService{

	@Inject
	CafResDAO crdao;
	
	
	@Override
	public PageMaker getPageMaker1(int page) {
		Criteria cri = new Criteria(page,8);
		int totalCount = crdao.CaresCount();
		PageMaker pageMaker1 = new PageMaker();
		pageMaker1.setCri(cri);
		pageMaker1.setTotalCount(totalCount);
		
		return pageMaker1;
	}

	@Override
	public List<CaResVO> readCalesList(Criteria cri) {
		System.out.println("1");
		crdao.caResList(cri);
		return crdao.caResList(cri);
	}


}
