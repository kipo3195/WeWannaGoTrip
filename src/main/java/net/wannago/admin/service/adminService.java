package net.wannago.admin.service;

import java.util.List;

import net.wannago.admin.vo.adminDTO;
import net.wannago.admin.vo.adminVO;
import net.wannago.hotel.vo.HotelDetailVO;
import net.wannago.hotel.vo.HotelVO;

public interface adminService {


	public adminVO adminCheck(adminDTO dto);

	public void hotelReg(HotelVO vo);

	int getPrimaryKey();

	void DetailImage(List<String> fileList);

	HotelVO hotelModify(int hno);

	List<HotelDetailVO> hotelDetailImg(int hno);

	void HotelUpdate(HotelVO vo);

	String deleteHotel(int hno, String hname);
	
}
