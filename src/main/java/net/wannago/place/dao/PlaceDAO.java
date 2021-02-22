package net.wannago.place.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import net.koreate.util.Criteria;
import net.wannago.place.vo.PlaceVO;

public interface PlaceDAO {


	@Select("SELECT count(*) FROM pro_place")
	public int PlaceCount();

	@Select("SELECT * FROM pro_place ORDER BY "
			+ " pno ASC limit #{cri.pageStart}, #{cri.perPageNum} ")
	public List<PlaceVO> placeList(@Param("cri")Criteria cri);
	
}
