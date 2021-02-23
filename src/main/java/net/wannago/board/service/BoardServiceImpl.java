package net.wannago.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.koreate.util.PageMaker;
import net.koreate.util.SearchCriteria;
import net.wannago.board.dao.BoardDAO;
import net.wannago.board.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	BoardDAO dao;
	
	
	@Override
	@Transactional
	public void regist(BoardVO board) throws Exception {
		/* 2가지 :  원본글 삽입  and 값을 넘겨받아서 글이 생성되는데 default로 잡히는건 잡힐껀데
	              이 글이 원본글이라는 걸 알려줘야하니깐 origin에 업데이트를 시켜줘야함       */
		
		// 원본글 삽입
		dao.regist(board);
		
		
		// origin update
        dao.updateOrigin();
        // 왜 해야하는가? 원본글이 있고 답변글을 달면 6번 원본글 밑에 8번 답변. 9번 답변.
		// 원래대로라면 8번 9번이 게시글 제일 위로 감.
        // 원본글 이랑 답변이랑 묶어놔야 한꺼번에 묶어야 함 = origin
        // origin = 6 으로 다 묶어버리면 답변이랑 원본글이랑 다 같이 묶을 수 있음
        // 이제 origin 에서 정렬 해주기위해서 seq가 필요. 
        // 9번답글이 6번에 있는건가 8번에 있는건가 확인하기 위해 dept가 필요.
	}

	
	
	@Override
	public List<BoardVO> listReplyCriteria(SearchCriteria cri) throws Exception {
		List<BoardVO> list = dao.listCriteria(cri);
		
		return list;
	}

	@Override
	public PageMaker getPageMaker(SearchCriteria cri) throws Exception {
		int totalCount = dao.listReplyCount(cri);
		PageMaker pm = new PageMaker(cri,totalCount);
		
		
		return pm;
	}

	@Override
	public Map<String, Object> getListModel(SearchCriteria cri) throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("list", listReplyCriteria(cri));
		
		map.put("pm", getPageMaker(cri));
		
	
		return map;
	}
	
	
	
	
	

	@Override
	public BoardVO readReply(int bno) throws Exception {
		
		return dao.readReply(bno);
	}

	@Override
	public void updateCnt(int bno) throws Exception {
		
		dao.updateCnt(bno);

	}


	@Override
	@Transactional
	public void replyRegister(BoardVO vo) throws Exception {
		
		dao.updateReply(vo);
		//updateReply 한 것도 돌려줘야함
		
		vo.setDepth(vo.getDepth()+1);
		vo.setSeq(vo.getSeq()+1);
		System.out.println("등록될 답변글 정보 : " + vo);
		
		dao.replyRegist(vo);
		
	}

	@Override
	public void modify(BoardVO vo) throws Exception {
		dao.modify(vo);

	}

	@Override
	public void remove(int bno) throws Exception {
		dao.remove(bno);

	}
}
