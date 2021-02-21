package net.wannago.member.service;

import java.util.Map;

import net.wannago.hotel.vo.HotelVO;
import net.wannago.member.vo.LoginDTO;
import net.wannago.member.vo.MemberVO;

public interface MemberService {

	// 회원가입
	void signup(MemberVO vo) throws Exception;
	
	// 로그인
	MemberVO signin(LoginDTO dto) throws Exception;
	
	// 아이디 정보로 사용자 정보 확인
	MemberVO getMemberById(String mid) throws Exception;

	//관심 호텔 등록
	Map<String,String> regIntHotel(int hno, int mno);

	//관심등록한 호텔 정보 불러오기
	Map<String,Object> getIntHotelList(int mno);

	//관심등록한날짜 가져오기
	Map<String, Object> getRegMap(int mno);

	//관심등록 삭제
	String deleteInterHotel(int ino);
	
}
