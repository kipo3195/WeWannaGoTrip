package net.wannago.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.wannago.admin.dao.adminDAO;
import net.wannago.admin.vo.SearchVO;
import net.wannago.admin.vo.adminDTO;
import net.wannago.admin.vo.adminVO;
import net.wannago.hotel.vo.HotelDetailVO;
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
		
		List<String> file = vo.getFile();
		if(file == null) {
			return;
		}
		
		for(String fullName : file) {
			dao.addDetailImg(fullName);
		}
		System.out.println("result : " +result);
		
		
		
	}

	public int getPrimaryKey() {
		
		return dao.getPrimaryKey();
	}

	public void DetailImage(List<String> fileList) {
		for(String f : fileList) {
			System.out.println(f);
			dao.DetailImageReg(f);
		}
		
	}

	public HotelVO hotelModify(int hno) {
		
		return dao.hotelModify(hno);
	}

	public List<HotelDetailVO> hotelDetailImg(int hno) {
		return dao.hotelDetail(hno);
	}

	public void HotelUpdate(HotelVO vo) {
			dao.hotelUpdate(vo);
	
	}

	
	
	
}
