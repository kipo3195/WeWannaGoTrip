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

	@Select("SELECT * FROM pro_hotelDetail WHERE hno =#{hno}")
	public List<String> getDetailImage(int hno);

	//호텔 검색 # 은 양쪽에 '' 붙음. 그래서 문자열을 자체로 인식하려면 $ 로 사용하기
		@Select("SELECT * FROM pro_hotel WHERE ${option} LIKE CONCAT('%', #{keyword},'%')") 
		List<HotelVO> hotelSearch(@Param("option") String option,@Param("keyword") String keyword);
	

	
	
}
