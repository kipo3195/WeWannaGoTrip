package net.wannago.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	
	@Override
	public int getPrimaryKey() {
			int result = 0;
		try {
			result = dao.getPrimaryKey();
		} catch (Exception e) {
				return result;
		}
		return result;
	}

	@Override
	public void DetailImage(List<String> fileList) {
		for(String f : fileList) {
			System.out.println(f);
			dao.DetailImageReg(f);
		}
		
	}
	@Override
	public HotelVO hotelModify(int hno) {
		
		return dao.hotelModify(hno);
	}
	@Override
	public List<HotelDetailVO> hotelDetailImg(int hno) {
		return dao.hotelDetail(hno);
	}
	@Override
	public void HotelUpdate(HotelVO vo) {
			dao.hotelUpdate(vo);
	
	}
	
	@Override
	public String deleteHotel(int hno, String hname) {
		String resultMessage = null;

		//외래키 
		dao.deleteDetailImg(hno); 			// 상세 이미지 삭제
		dao.deleteinterestedHotel(hno);     // 사용자 관심호텔 삭제
		dao.deletehotelreservation(hno);    // 예약된 호텔 삭제 
		dao.deletelikemember(hno); 			// 좋아요 삭제
		dao.deletecomment(hno);				// 댓글 삭제
		
		//호텔 삭제 
		dao.deleteDetail(hno);
		
		int result= dao.deleteHotel(hno,hname);
		
		if(result == 1) {
			//성공
			resultMessage =  "Suc";
		}else {
			resultMessage = "Fail";
		}
		
		return resultMessage;
	}

	
	
	
}
