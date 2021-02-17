package net.wannago.admin.service;

import java.util.List;

import net.wannago.admin.vo.SearchVO;
import net.wannago.admin.vo.adminDTO;
import net.wannago.admin.vo.adminVO;
import net.wannago.hotel.vo.HotelVO;

public interface adminService {


	public adminVO adminCheck(adminDTO dto);

	public void hotelReg(HotelVO vo);
	
}
