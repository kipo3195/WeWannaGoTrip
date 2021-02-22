package net.wannago.member.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.wannago.member.dao.MemberDAO;
import net.wannago.member.vo.LoginDTO;
import net.wannago.member.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Inject
	MemberDAO dao;
	
	// 회원가입
	@Override
	public void signup(MemberVO vo) throws Exception {
		
		dao.signup(vo);	
	}

	// 로그인
	@Override
	public MemberVO signin(LoginDTO dto) throws Exception {
		
		return dao.signin(dto);
	}

	// 아이디 정보로 사용자 정보 확인
	@Override
	public MemberVO getMemberById(String mid) throws Exception {
		
		return dao.getMemberById(mid);
	}

	//회원 수정
	@Override
	public int MemberUpdate(MemberVO vo) throws Exception {
	
			return dao.memberUpdate(vo);
			//int member = dao.memberUpdate(vo);
			//System.out.println(member);
	}

	// 회원탈퇴
	@Override
	public int MemberDelete(MemberVO vo) throws Exception {
		    return dao.memberDelete(vo);
	}
	
}
