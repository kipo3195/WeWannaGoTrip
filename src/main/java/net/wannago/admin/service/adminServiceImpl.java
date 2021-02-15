package net.wannago.admin.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.wannago.admin.dao.adminDAO;
import net.wannago.admin.vo.adminDTO;
import net.wannago.admin.vo.adminVO;
import net.wannago.hotel.vo.HotelVO;

@Service
public class adminServiceImpl implements adminService {

	@Inject
	adminDAO dao;
	
	
	
	@Override
	public adminVO adminCheck(adminDTO dto) {
		adminVO adminvo = dao.adminCheck(dto);
		System.out.println(adminvo);
		return adminvo;
	}

	@Override
	public void hotelReg(HotelVO vo) {
		System.out.println("서비스 실행");
		int result = dao.hotelReg(vo);
		
		System.out.println("result : " +result);
		
	}

	public int getPrimaryKey() {
		
		return dao.getPrimaryKey();
	}

	
	
}
