package net.wannago.member.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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


	//회원수정
	@Update("UPDATE pro_member SET mpw = #{mpw}, mname=#{mname}, memail=#{memail} WHERE mid = #{mid}")
	int memberUpdate(MemberVO vo) throws Exception;
		
	//회원탈퇴
	@Delete("DELETE FROM pro_member WHERE mid = #{mid} AND mpw=#{mpw}")
	//MemberVO memberDelete(MemberVO vo) throws Exception;
	int memberDelete(MemberVO vo) throws Exception;
	
}
