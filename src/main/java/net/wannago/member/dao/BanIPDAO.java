package net.wannago.member.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import net.wannago.member.vo.BanIPVO;


public interface BanIPDAO {
	
	// ip 로 등록된 ban_ip 검색
	@Select("Select * FROM pro_ban_ip WHERE ip = #{ip}")
	BanIPVO getBanIPVO(String ip)throws Exception;
	
	// ban_ip 등록
	@Insert("INSERT INTO pro_ban_ip(ip) VALUES(#{ip})")
	void signInFail(String ip) throws Exception;
	
	// 반복 실패 카운트 증가
	@Update("UPDATE pro_ban_ip SET cnt = cnt + 1 , bandate = now() WHERE ip = #{ip}")
	void updateBanIPCnt(String ip) throws Exception;
	
	// 로그인 성공 시 ban_ip 삭제
	@Delete("DELETE FROM pro_ban_ip WHERE ip = #{ip}")
	void removeBanIP(String ip) throws Exception;
	
}





