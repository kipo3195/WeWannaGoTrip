package net.wannago.board.service;

import java.util.List;
import java.util.Map;

import net.koreate.util.PageMaker;
import net.koreate.util.SearchCriteria;
import net.wannago.board.vo.BoardVO;

public interface BoardService {

	// 게시글 작성
		void regist(BoardVO board) throws Exception;
		
		/*
		 * 
		 */
		
		// 게시글 목록
		List<BoardVO> listReplyCriteria(SearchCriteria cri) throws Exception;
		
		// 페이지 블럭 정보
		PageMaker getPageMaker(SearchCriteria cri) throws Exception;
		
		// 게시글 목록 정보, 페이지 블럭 정보
		Map<String,Object> getListModel(SearchCriteria cri) throws Exception;
		
		// 게시글 상세 정보
		BoardVO readReply(int bno) throws Exception;
		
		// 조회수 증가
		void updateCnt(int bno) throws Exception;
		
		/*
		  원본글은 자기글을 orgin에 넣어주면 되는데,
		  답변글은 원본글 번호를 받아와서 orgin에 넣어줘야함.
		*/
		// 답변글 등록
		void replyRegister(BoardVO vo)throws Exception;
		
		// 게시글 수정
		void modify(BoardVO vo)throws Exception;
		
		// 삭제 - showboard = 'N'
		void remove(int bno) throws Exception;
}
