package net.wannago.hotel.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import net.wannago.hotel.vo.HotelVO;

public interface HotelDAO {

	@Select("SELECT * FROM pro_hotel")
	public List<HotelVO> readList();

	@Select("SELECT count(*) FROM pro_hotel")
	public int listCount();
	
//되나요
}
