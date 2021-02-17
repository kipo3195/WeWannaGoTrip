package net.wannago.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import net.wannago.admin.vo.adminDTO;
import net.wannago.admin.vo.adminVO;
import net.wannago.hotel.vo.HotelDetailVO;
import net.wannago.hotel.vo.HotelVO;

public interface adminDAO {

	
	@Select("select * from pro_admin WHERE aid = #{aid} AND apw = #{apw}")
	adminVO adminCheck(adminDTO dto);

	/*
	 * @Insert("insert into hoteltest(hname) values(#{hname})") int hotelReg(HotelVO
	 * vo);
	 */
	
	
	@Insert("INSERT INTO pro_hotel(hname, hinfo, haddress, htel, hemail, hcheckin,hcheckout, hgooglemap, hgrade, hprimaryprice,hmainimg,hfacility) "
			+ "values(#{hname},#{hinfo},#{haddress},#{htel},#{hemail},#{hcheckin},#{hcheckout},#{hgooglemap},#{hgrade},#{hprimaryprice},#{hmainimg},#{hfacility})"
	 ) int hotelReg(HotelVO vo);

	@Select("select hno from pro_hotel order by hregdate desc limit 1; ")
	int getPrimaryKey();

	@Insert("INSERT INTO pro_hotelDetail(hdeimg, hno) VALUES(#{f},LAST_INSERT_ID()")
	void DetailImageReg(@Param("f") String f);

	@Insert("INSERT INTO pro_hotelDetail(hdeimg, hno) VALUES(#{fullName},LAST_INSERT_ID())")
	void addDetailImg(String fullName);

	@Select("Select * from pro_hotel WHERE hno = #{hno}")
	HotelVO hotelModify(int hno);

	@Select("SELECT * FROM pro_hotelDetail WHERE hno = #{hno}")
	List<HotelDetailVO> hotelDetail(int hno);

	@Update("UPDATE pro_hotel SET "
			+ " hname = #{hname},"
			+ " hinfo = #{hinfo},"
			+ " haddress = #{haddress},"
			+ " htel = #{htel},"
			+ " hemail = #{hemail},"
			+ " hcheckin = #{hcheckin},"
			+ " hcheckout = #{hcheckout},"
			+ " hgooglemap = #{hgooglemap},"
			+ " hupdatedate = now(),"
			+ " hgrade = #{hgrade},"
			+ " hscore = #{hscore},"
			+ " hprice = #{hprice},"
			+ " hmainimg = #{hmainimg},"
			+ " hdetailimg = #{hdetailimg},"
			+ " hfacility = #{hfacility} "
			+ " WHERE hno = #{hno}")
	void hotelUpdate(HotelVO vo);

	@Delete("DELETE FROM pro_hotel WHERE hno=#{hno} AND hname=#{hname}")
	int deleteHotel(@Param("hno") int hno,@Param("hname") String hname);

	
	
	
	
}
