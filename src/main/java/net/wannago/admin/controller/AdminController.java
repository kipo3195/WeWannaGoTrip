package net.wannago.admin.controller;

import java.io.File;
import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import net.wannago.admin.service.adminServiceImpl;
import net.wannago.admin.util.FileUtils;
import net.wannago.admin.vo.adminDTO;
import net.wannago.admin.vo.adminVO;
import net.wannago.hotel.vo.HotelVO;

@Controller
public class AdminController {

	@Inject
	adminServiceImpl as;
	
	@RequestMapping("/adminSignin")
	public String adminSignin() {
		
		return "admin/adminSignin";
	}
	
	@PostMapping("signInAdmin")
	public ModelAndView signInAdmin(
			adminDTO dto,
			ModelAndView mav) {
			
		adminVO vo = as.adminCheck(dto);
		
		System.out.println("controller " + vo);
		
		mav.addObject("adminVO", vo);
		mav.addObject("adminDTO", dto);
		
		mav.setViewName("redirect:/");
		//로그인 성공하면  여기 아니면 인터셉터
		return mav;
	}
	
	@GetMapping("admin/adminPage")
	public void adminPage() {
		
	}
	
	@GetMapping("admin/logout")
	public String adminLogout(HttpSession session) {
		session.removeAttribute("admin");
		
		return "redirect:/";
	}
	//호텔 등록페이지로 이동
	@GetMapping("admin/hotelRegPage")
	public void hotelRegPage() {
		
	}
	
	//호텔 등록 버튼 클릭
	@PostMapping("admin/hotelReg")
	public String hotelReg(HotelVO vo) {
		
		System.out.println(vo);
		 as.hotelReg(vo);
		 
		 return "redirect:/local/jejuhotel";
		
	}
	
	////파일업로드!!!
	
	@Resource(name="uploadFolder")
	String uploadFolder;
	
	@Autowired
	ServletContext context;
	
	@PostConstruct
	public void initController() {
		uploadFolder = File.separator+uploadFolder;
		uploadFolder = context.getRealPath(uploadFolder); //프로젝트 실제경로에 추가,
		//서버에서 serve에 체크하지않으면 임시경로에 파일생성되므로 주의 //jstl 라이브러리 필요함
		
		
		File file = new File(uploadFolder);
		if(!file.exists()) {
			file.mkdirs();
		}
		System.out.println("uploadFolder : "+ file.getPath());
		
	}
	
	@PostMapping(value="admin/mainImgUpload", produces="text/plain;charset=UTF-8")
	public ResponseEntity<String> mainImgUpload(
			MultipartFile file) throws Exception{
		ResponseEntity<String> entity = null;
		
		System.out.println("파일정보"+file);
		
		//가장 최근에 등록된 프라이머리 키값 가져오기
		int pk= as.getPrimaryKey();
		System.out.println("pk : "+ pk);
		
		  //파일 저장 및 이름 변경 해주기 String name=
		 String name = FileUtils.uploadFile(file.getOriginalFilename(), uploadFolder,
		  file.getBytes(),pk);
		 
		 System.out.println("controller name : "+name);
		 
		entity = new ResponseEntity<>(name, HttpStatus.CREATED);
		return entity;
	}
	
	
	
}
