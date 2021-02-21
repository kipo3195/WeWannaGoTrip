package net.wannago.member.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import net.wannago.hotel.vo.HotelVO;
import net.wannago.hotel.vo.interHotelVO;
import net.wannago.member.vo.LoginDTO;
import net.wannago.member.vo.MemberVO;

public interface MemberDAO {

	// 회원가입
	@Insert("INSERT INTO pro_member(mid,mpw,mname,memail) VALUES(#{mid},#{mpw},#{mname},#{memail})")
	void signup(MemberVO vo) throws Exception;
	
	
	// 로그인
	@Select("SELECT * FROM pro_member WHERE mid = #{mid} AND mpw = #{mpw}")
	MemberVO signin(LoginDTO dto) throws Exception;
	
	
	// 아이디로 사용자 정보를 확인
	@Select("SELECT * FROM pro_member WHERE mid = #{mid}")
	MemberVO getMemberById(String mid) throws Exception;


	//관심 등록 여부 - 훈
	@Select("SELECT count(*) from pro_interestedHotel WHERE mno = ${mno} AND hno=${hno}")
	int searchAlready(@Param("mno")int mno,@Param("hno") int hno);

	//관심 호텔 개수 검색 - 훈 
	@Select("SELECT count(*) from pro_interestedHotel WHERE mno = ${mno}")
	int searchCount(int mno);

	//관심 호텔 등록
	@Insert("INSERT INTO pro_interestedHotel(hno,mno) VALUES(${hno},${mno})")
	void regIntHotel(@Param("hno")int hno,@Param("mno") int mno);

	//관심 호텔 정보 가져오기
	@Select("SELECT * from pro_interestedHotel WHERE mno = ${mno} ")
	List<interHotelVO> getIntHno(int mno);
	
	//호텔 객체 가져오기
	@Select("SELECT hno FROM pro_interestedHotel WHERE mno =${mno}")
	List<Integer> getHotel(int mno);

	@Select("SELECT * FROM pro_hotel WHERE hno = ${hno}")
	HotelVO getHotelList(int hno);


	@Delete("DELETE FROM pro_interestedHotel WHERE ino = ${ino}")
	int delete(int ino);





	
}
