package net.wannago.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import net.koreate.util.PageMaker;
import net.wannago.admin.service.adminServiceImpl;
import net.wannago.admin.util.FileUtils;
import net.wannago.admin.vo.adminDTO;
import net.wannago.admin.vo.adminVO;
import net.wannago.hotel.vo.HotelDetailVO;
import net.wannago.hotel.vo.HotelVO;
import net.wannago.local.service.LocalServiceImpl;

@Controller
public class AdminController {

	@Inject
	adminServiceImpl as;
	
	@Inject
	LocalServiceImpl ls;
	
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
	@Transactional
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
	
	@PostMapping(value="admin/DetailImgUpload")
	@ResponseBody
	public ResponseEntity<Object> DetailImageUpload(
			@RequestParam("files") MultipartFile[] files) throws Exception{
		ResponseEntity<Object> entity = null;
		int pk= as.getPrimaryKey();
		System.out.println("length"+files.length);
		for(MultipartFile f : files) {
			System.out.println(f.getOriginalFilename());
		}
		System.out.println("pk : "+pk);
		try {
			FileUtils utils = FileUtils.getInstance(uploadFolder);
			List<String> fileList = utils.uploadFileDetail(files,pk);
			System.out.println("detailImage : "+fileList);
			
			entity = new ResponseEntity<>(fileList,HttpStatus.OK);
		} catch (IOException e) {
			HttpHeaders header = new HttpHeaders();
			header.add("Content-Type","text/plain;charset=utf-8");
			entity = new ResponseEntity<>(e.getMessage(),HttpStatus.BAD_REQUEST);
			e.printStackTrace();
		}
		
		
		return entity;
		
	}
	
	
	@GetMapping("admin/HotelModify")
	public ModelAndView HotelModify(@RequestParam("hno") int hno,
			ModelAndView mav) {
		
		HotelVO hotel = as.hotelModify(hno);
		List<HotelDetailVO> HotelDetail= as.hotelDetailImg(hno);

		mav.setViewName("admin/ModifyHotel");
		mav.addObject("hotel", hotel);
		mav.addObject("DetailImg",HotelDetail);
		
		return mav;
		
	}
	
	@PostMapping("admin/hotelUpdate")
	public String hotelUpdate(HotelVO vo) {
		
		System.out.println("업데이트 vo : "+vo);
		as.HotelUpdate(vo);
		
		return "redirect:/local/jejuHotel/Detail/"+vo.getHno();
	}
	
	
	//비동기에서 값 넘겨줄때 pathVariable로 변수 받을 수 있음
	@PostMapping(value="admin/mainImgChange/{hno}",produces="text/plain;charset=UTF-8")
	@ResponseBody
	public ResponseEntity<String> mainChange(MultipartFile file,
			@PathVariable(name="hno") int hno) throws Exception{
		ResponseEntity<String> entity = null;

		 String changeMain = FileUtils.uploadFile(file.getOriginalFilename(), uploadFolder,
				  file.getBytes(),hno-1);
		 
		 try {
			entity = new ResponseEntity<String>(changeMain,HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		
		return entity;
	}
	
	//호텔 삭제처리
	@GetMapping("admin/deleteHotelSubmit")
	public ModelAndView deleteHotel(
			@RequestParam("hno") int hno,
			@RequestParam("hotelname") String hname
			){
		ModelAndView mav = new ModelAndView();
		
		String result =as.deleteHotel(hno,hname);
		
		if(!result.equals("Suc")) {
		System.out.println("삭제 실패");
		HotelVO vo = ls.getHotelVO(hno);
		List<String> list = ls.getHotelDetailImg(hno);
		mav.addObject("hotel", vo);
		mav.addObject("list",list);
		mav.setViewName("/local/hotel/detail/jejuHotelDetail");
		}else {
		System.out.println("삭제성공");
		mav.setViewName("redirect:/local/hotel/jejuHotel");
		}
		return mav;
	}
	
	
	
	
	
	
	
	
}
