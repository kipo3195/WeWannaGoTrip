package net.wannago.admin.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import net.wannago.admin.vo.adminDTO;
import net.wannago.admin.vo.adminVO;
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
	
	
	
}
