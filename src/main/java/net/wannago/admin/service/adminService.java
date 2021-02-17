package net.wannago.admin.service;

import net.wannago.admin.vo.adminDTO;
import net.wannago.admin.vo.adminVO;
import net.wannago.hotel.vo.HotelVO;

public interface adminService {


	public adminVO adminCheck(adminDTO dto);

	public void hotelReg(HotelVO vo);
	
}
