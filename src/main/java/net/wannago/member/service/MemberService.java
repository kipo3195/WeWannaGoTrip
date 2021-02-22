package net.wannago.member.service;

import net.wannago.member.vo.LoginDTO;
import net.wannago.member.vo.MemberVO;

public interface MemberService {

	// 회원가입
	void signup(MemberVO vo) throws Exception;
	
	// 로그인
	MemberVO signin(LoginDTO dto) throws Exception;
	
	// 아이디 정보로 사용자 정보 확인
	MemberVO getMemberById(String mid) throws Exception;
	
	
	//회원정보 수정
	int MemberUpdate(MemberVO vo) throws Exception;
		
	//회원탈퇴
	int MemberDelete(MemberVO vo) throws Exception;
}
