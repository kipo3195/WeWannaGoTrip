package net.wannago.hotel.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import net.koreate.util.Criteria;
import net.wannago.cafRes.CaResVO;
import net.wannago.hotel.vo.HotelVO;

public interface HotelDAO {

	@Select("SELECT * FROM pro_hotel")
	public List<HotelVO> readList();

	@Select("SELECT count(*) FROM pro_hotel")
	public int listCount();
	
	@Select("SELECT * FROM pro_hotel ORDER BY "
			+ " hno ASC limit #{cri.pageStart}, #{cri.perPageNum}")
	public List<HotelVO> hotellist(@Param("cri")Criteria cri);

	@Select("SELECT count(*) FROM pro_CaRes")
	public int CaresCount();

	@Select("SELECT * FROM pro_CaRes ORDER BY"
			+ "crno ASC limit #{cri.pageStart}, #{cri.perPageNum} ")
	public List<CaResVO> caResList(@Param("cri")Criteria cri);
	
	

	
	
}
