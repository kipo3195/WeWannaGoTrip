package net.wannago.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;

import net.koreate.util.SearchCriteria;
import net.wannago.board.provider.BoardQueryProvider;
import net.wannago.board.vo.BoardVO;

public interface BoardDAO {


	// 원본글 삽입
	@Insert("INSERT INTO pro_board(title,content,writer,uno) "
			+ " VALUES(#{title},#{content},#{writer},#{uno})")
		//마이바티스의 문법. GET메소드를 이용해서 들고옴. object-> key값 , 변수는 변수명 쓰기
	void regist(BoardVO vo) throws Exception;
	
	
	// 원본글 origin column 수정
	@Update("UPDATE pro_board SET origin = LAST_INSERT_ID() "
			+ " WHERE bno = LAST_INSERT_ID()")
	//bno 의 값이 등록되어야하고 
	//INSERT되고 이것이 호출될때 같은 트랜젝션에서 가장 최근에 등록된 PRIMARY KEY값 = Bno의 값.
	//같은 트랜잭션이어야한다.   -> BoardServiceImpl @Transactional
	void updateOrigin() throws Exception;
	
	
	
	// 검색 형 답변 게시물 목록
	//쿼리가 길어지니 패키지인 provider를 만들었다
	@SelectProvider(type=BoardQueryProvider.class, method="searchSelectSQL")
					//class랑 method만 지정해주면 됨
	List<BoardVO> listCriteria(SearchCriteria cri) throws Exception;
	
	
	// 검색된 게시물의 전체 개수
	@SelectProvider(type=BoardQueryProvider.class, method="searchListCount")
	int listReplyCount(SearchCriteria cri) throws Exception;
	
	// 게시물 상세보기
	@Select("SELECT * FROM pro_board WHERE bno = #{bno}")
	BoardVO readReply(int bno) throws Exception;
	
	// 조회수 증가
	@Update("UPDATE pro_board SET viewcnt = viewcnt + 1 WHERE bno = #{bno}")
	void updateCnt(int bno) throws Exception;
	
	
	// 기존 게시물의 정렬값 수정 - 답변을 달아야하니깐
	@Update(" UPDATE pro_board SET seq = seq + 1 "
			+ "	WHERE origin = #{origin} AND seq > #{seq} ")
	void updateReply(BoardVO vo) throws Exception;
	
	
	// 답변글 등록
		@Insert("INSERT INTO pro_board(title,content,writer,origin,depth,seq,uno) "
			+ " VALUES(#{title},#{content},#{writer},#{origin},#{depth},#{seq},#{uno})")
		void replyRegist(BoardVO vo) throws Exception;
	// 답변글이 달린다는건 seq를 이용해서 새로운글이 아래쪽으로 정렬되어서 보여줌
	
	// 게시글 수정
		@Update( "UPDATE pro_board SET "
				+ " title = #{title} , "
				+ " content = #{content} , "
				+ " writer = #{writer} ,"
				+ " updatedate = now() "
				+ " WHERE bno = #{bno}")
	void modify(BoardVO vo) throws Exception;
	
	// 게시글 삭제  showboard = 'N'
    @Update("UPDATE pro_board SET showboard = 'N' WHERE bno = #{bno}")
	void remove(int bno) throws Exception;
}
