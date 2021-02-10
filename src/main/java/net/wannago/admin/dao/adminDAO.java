package net.wannago.admin.dao;

import org.apache.ibatis.annotations.Select;

import net.wannago.admin.vo.adminDTO;
import net.wannago.admin.vo.adminVO;

public interface adminDAO {

	
	@Select("select * from pro_admin WHERE aid = #{aid} AND apw = #{apw}")
	adminVO adminCheck(adminDTO dto);

}
