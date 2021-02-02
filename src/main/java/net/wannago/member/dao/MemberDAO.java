package net.wannago.member.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

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
	
}
