package net.wannago.hotel.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import net.wannago.hotel.vo.HotelVO;

public interface HotelDAO {

	@Select("SELECT * FROM pro_hotel")
	public List<HotelVO> readList();
	
	
//dao 병합테스트
	//다시수정
	
//합쳐지는 코드로 다시 수정했습니다.s

	//마지막 테스트입니다
}
