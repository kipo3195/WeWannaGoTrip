package net.wannago.member.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.wannago.hotel.vo.HCommentVO;
import net.wannago.hotel.vo.HotelreservationVO;
import net.wannago.member.service.MemberService;
import net.wannago.member.vo.LoginDTO;
import net.wannago.member.vo.MemberVO;

@Controller
@RequestMapping("member")
public class MemberController {
    
	@Inject
	MemberService ms;

	
	@RequestMapping("/signup")
	public String signup() {
		
		return "member/signup";
	}
	
	@RequestMapping("/signin")
	public String signin() {
		
		return "member/signin";
	}
	
	//@GetMapping("/myPage")
	@RequestMapping("/myPage")
	public String myPage() {
		
		return "member/myPage";
	}
	
	
	
	// 회원가입
	@PostMapping("/signUpPost")
	public String signUpPost(
					MemberVO vo,
					RedirectAttributes rttr) throws Exception{
		
		ms.signup(vo);
		System.out.println("vo :"+vo);
		rttr.addFlashAttribute("message","회원가입 성공♬");
		
		return "redirect:/member/signin";
			
	}
	
	
	// 로그인
	@PostMapping("/signInPost")
	public ModelAndView signInPost(
					ModelAndView mav,
					LoginDTO dto) throws Exception { //로그인 매개변수 3개
		
		//로그인 처리   
		MemberVO vo = ms.signin(dto); //아이디가 일치하면 member정보 있음
		mav.addObject("memberInfo",vo);
		mav.addObject("loginDTO",dto);
		
		ms.signin(dto);
		System.out.println("controller : "+mav.getModel().get("memberInfo"));
		System.out.println("controller : "+mav.getModel().get("loginDTO"));
		
		mav.setViewName("redirect:/");
		
		return mav;
	}
	
	
	// 로그아웃
	@RequestMapping("/signOut")
	public String signOut(
			HttpSession session,
			HttpServletResponse response,
			@SessionAttribute("memberInfo") MemberVO vo,
			@CookieValue(name="signInCookie",required=false)Cookie signInCookie
			)throws Exception{
		
		if(vo != null) {
			session.removeAttribute("memberInfo");
		}
		if(signInCookie != null) {
			System.out.println("cookie name : "+signInCookie.getName());
			System.out.println("cookie value : "+signInCookie.getValue());
			signInCookie.setPath("/");
			signInCookie.setMaxAge(0); //브라우저에서 넘겨받자마자 지워줌
			response.addCookie(signInCookie);
			
		}
	
		return "redirect:/";
	}
	
	
	 //회원수정 페이지
	@GetMapping("/memberUpdateView")
	public String registerUpdateView() throws Exception{
		
		return "member/memberUpdateView";
	}

	//회원수정
	@PostMapping("/memberUpdate")
	public String registerUpdate(MemberVO vo, HttpSession session) throws Exception{
		
		
		int result = ms.MemberUpdate(vo);
		if(result == 1) {
			 session.setAttribute("memberInfo", vo);
		}
		
		System.out.println(vo);
		
		
		return "redirect:/";
     }
	
	// 회원 탈퇴 get
	@GetMapping("/memberDeleteView")
	public String memberDeleteView() throws Exception{
		
		return "member/memberDeleteView";
	}
	
	
	// 회원 탈퇴 post
	@PostMapping("memberDelete")
	public String memberDelete(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
		
		    // 세션에 있는 member를 가져와 member변수에 넣기.
		       MemberVO member = (MemberVO)session.getAttribute("memberInfo"); 
		   // 세션에있는 비밀번호 
		       String sessionPass = member.getMpw(); 
		   // vo로 들어오는 비밀번호 
	           String voPass = vo.getMpw();
		
		 if(!(sessionPass.equals(voPass))) { 
			 rttr.addFlashAttribute("msg", false);
			 
			 return "redirect:/member/memberDeleteView";
		 }
		 
		ms.MemberDelete(vo);
		
		return "redirect:/member/signOut";
	}
	
	
	
	
	
	
	
	
	////훈
	//세션 영역에 저장된 객체 불러오기
	@GetMapping("membersLikeHotel")
	public ModelAndView membersLikeHotel(
			@SessionAttribute("memberInfo") MemberVO member
			) {
		ModelAndView mav = new ModelAndView();
		/* Map<Integer, Object> map = ms.getIntHotelList(member.getMno()); */
		/* String regintdate = ms.getRegintdate(member.getMno()); */
		/* Map<String,Object> map = ms.getRegMap(member.getMno()); */
		/*
		 * System.out.println("이게 맵 : "+map); System.out.println("이건  reg맵"+regMap);
		 * mav.addObject("map", map); mav.addObject("regMap", regMap);
		 */
		//어떻게 하면 호텔을 리스트 형태로 보여줄 것이며, 어떻게 하면 등록일을 보여줄 것인가?
		
		//리스트로 다시해보자 
		Map<String,Object> map  = ms.getIntHotelList(member.getMno());
		System.out.println("interList : "+map.get("interlist"));
		System.out.println("HotelList : "+map.get("HotelList"));
	
		mav.addObject("map",map);
		mav.setViewName("member/membersLikeHotel");
		return mav;
	}
	
	//관심호텔 등록
	@GetMapping("/reginterestedHotel/{hno}/{mno}")
	@ResponseBody
	public ResponseEntity<Object> reginterestedHotel(
			@PathVariable("hno") int hno,
			@PathVariable("mno") int mno) {
		ResponseEntity<Object> entity = null;
		
		Map<String,String> map= ms.regIntHotel(hno,mno);
		
		try {
			entity = new ResponseEntity<>(map,HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<>(e.getMessage(),HttpStatus.BAD_REQUEST);
			e.printStackTrace();
		}
		
		return entity;
	}
	
	/*
	 * @GetMapping("/deleteInterHotel") public ModelAndView deleteInterHotel(
	 * 
	 * @RequestParam("ino")int ino) { ModelAndView mav = new ModelAndView();
	 * 
	 * System.out.println("여기출력"); System.out.println(ino);
	 * 
	 * mav.setViewName("redirect:/member/membersLikeHotel"); return mav;
	 * 
	 * }
	 */
	
	//삭제 요청 비동기
	@GetMapping("/deleteInterHotel/{ino}")
	public ResponseEntity<String> deleteInterHotel(
			@PathVariable("ino") int ino){

		ResponseEntity<String> entity = null;
		
		String message = ms.deleteInterHotel(ino);
		
		try {
			entity = new ResponseEntity<>(message,HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<>(e.getMessage(),HttpStatus.BAD_REQUEST);
			e.printStackTrace();
		}
		
		return entity;
		
	}
	
	@PostMapping("/addComment")
	public ResponseEntity<String> addComment(
			@RequestBody HCommentVO vo
			){
		ResponseEntity<String> entity = null;
		System.out.println(vo);
		
		String result = ms.addComment(vo);
		
		try {
			entity = new ResponseEntity<>(result,HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		
		return entity;
		
		
	}
	
	//내 예약 리스트
	@GetMapping("/myReservation")
	public ModelAndView myReservation(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		MemberVO vo = (MemberVO) session.getAttribute("memberInfo");
		int mno = vo.getMno();
		List<HotelreservationVO> list= ms.getMyReservation(mno);
		System.out.println("여기 리스트 출력"+list);
		
		mav.addObject("list", list);
		mav.setViewName("member/myReservation");
		
		return mav;
	}
	
	@GetMapping("cancelHotel")
	public ModelAndView main(
			@RequestParam("rnumber") int rnumber,
			HttpSession session,
			RedirectAttributes rttr) {
		ModelAndView mav = new ModelAndView();
		 MemberVO vo = (MemberVO) session.getAttribute("memberInfo");
		 int mno = vo.getMno();
		String message = ms.cancelReservation(rnumber,mno);
		System.out.println("result : "+message);
		rttr.addFlashAttribute("message", message);
		mav.setViewName("redirect:/member/myReservation");
		return mav;
	
	}
	
	
	
	////훈
	
	
	
	
	
	
}
