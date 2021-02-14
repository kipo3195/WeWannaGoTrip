package net.wannago.hotel.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import net.koreate.util.Criteria;
import net.wannago.cafRes.vo.CaResVO;
import net.wannago.hotel.vo.HotelVO;

public interface HotelDAO {

	@Select("SELECT * FROM pro_hotel")
	public List<HotelVO> readList();

	@Select("SELECT count(*) FROM pro_hotel")
	public int listCount();
	
	@Select("SELECT * FROM pro_hotel ORDER BY "
			+ " hno desc limit #{cri.pageStart}, #{cri.perPageNum}")
	public List<HotelVO> hotellist(@Param("cri")Criteria cri);

	@Select("SELECT * FROM pro_hotel WHERE hno = #{hno}")
	public HotelVO getHotel(int hno);

	

	
	
}
