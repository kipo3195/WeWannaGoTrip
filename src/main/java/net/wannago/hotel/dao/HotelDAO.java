package net.wannago.hotel.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import net.wannago.hotel.vo.HotelVO;

public interface HotelDAO {

	@Select("SELECT * FROM pro_hotel")
	public List<HotelVO> readList();
	
	
//dao 병합테스트
	//다시수정
	
	//차정원 브런치얌 돼라돼라~

}
