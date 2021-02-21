package net.wannago.hotel.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import net.koreate.util.Criteria;
import net.wannago.hotel.vo.HotelPriceVO;
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

	@Select("Select * from pro_hotelRoom WHERE hgrade = #{hgrade}")	
	public HotelPriceVO getGradePrice(String hgrade);

	@Select("SELECT count(*) FROM pro_HotelReservation1 WHERE grade = #{lux} AND Rdate = #{date} AND hno = ${hno}") 
	public int getbookableLux(@Param("lux") String lux, @Param("date")String date, @Param("hno") int hno);
	
	@Select("SELECT count(*) FROM pro_HotelReservation1 WHERE grade = #{del} AND Rdate = #{date} AND hno = ${hno}") 
	public int getbookableDe(@Param("del") String del, @Param("date") String date, @Param("hno") int hno);
	
	@Select("SELECT count(*) FROM pro_HotelReservation1 WHERE grade = #{dou} AND Rdate = #{date} AND hno = ${hno}") 
	public int getbookableDou(@Param("dou") String dou, @Param("date") String date, @Param("hno") int hno);
	
	@Select("SELECT count(*) FROM pro_HotelReservation1 WHERE grade = #{busi} AND Rdate = #{date} AND hno = ${hno}") 
	public int getbookableBusi(@Param("busi") String busi, @Param("date") String date, @Param("hno") int hno);

	
	//좋아요 구현
	@Select("SELECT count(*) FROM pro_likeMemberHotel WHERE hno =${hno} AND mno =${mno}")
	public int boolexist(@Param("hno") int hno,@Param("mno") int mno);

	//이전에 누른적있는
	@Delete("DELETE from pro_likeMemberHotel WHERE hno =${hno} AND mno= ${mno}")
	public void deleteLikecount(@Param("hno") int hno,@Param("mno") int mno);
	
	//이전에 누른적 있는
	@Update("UPDATE pro_hotel SET hlikecnt = hlikecnt - 1 WHERE hno=${hno}")
	public void minusLikecount(int hno);

	//누른적 없는
	@Insert("INSERT INTO pro_likeMemberHotel(hno,mno) VALUES (${hno},${mno})")
	public void registerLike(@Param("hno")int hno,@Param("mno") int mno);

	//누른적 없는
	@Update("UPDATE pro_hotel SET hlikecnt = hlikecnt + 1 WHERE hno=${hno}")
	public void plusLikecount(int hno);

	// 눌리고 나서 조회
	@Select("SELECT hlikecnt from pro_hotel WHERE hno =${hno} ")
	public int hotellikecnt(int hno);




	
}
