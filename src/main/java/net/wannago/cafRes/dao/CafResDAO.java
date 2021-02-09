package net.wannago.cafRes.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import net.koreate.util.Criteria;
import net.wannago.cafRes.vo.CaResVO;

public interface CafResDAO {

	
	@Select("SELECT count(*) FROM pro_caRes")
	public int CaresCount();

	@Select("SELECT * FROM pro_caRes ORDER BY "
			+ " crno ASC limit #{cri.pageStart}, #{cri.perPageNum} ")
	public List<CaResVO> caResList(@Param("cri")Criteria cri);
	
	
}
