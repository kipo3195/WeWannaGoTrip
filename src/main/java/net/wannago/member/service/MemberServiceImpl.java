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
	
	
	@Override
	public void signup(MemberVO vo) throws Exception {
		
		dao.signup(vo);	
	}

	@Override
	public MemberVO signin(LoginDTO dto) throws Exception {
		
		return dao.signin(dto);
	}

	@Override
	public MemberVO getMemberById(String mid) throws Exception {
		
		return dao.getMemberById(mid);
	}

	
}
