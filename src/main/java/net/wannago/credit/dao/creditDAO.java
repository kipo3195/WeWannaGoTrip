package net.wannago.credit.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

public interface creditDAO {

	
	
	@Insert("INSERT INTO pro_HotelReservation1 (hno,mno,Rdate,grade,hname) "
			+ " VALUES (${hno},${mno},#{date},#{room},#{hname})")
	void registReservation(@Param("date") String RegDate,
		@Param("hno") int hno,@Param("mno") int mno,@Param("room") String room,@Param("hname") String hname);

}
