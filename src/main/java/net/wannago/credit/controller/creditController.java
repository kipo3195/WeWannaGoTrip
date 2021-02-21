package net.wannago.credit.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.wannago.credit.service.creditService;
import net.wannago.hotel.vo.HotelVO;
import net.wannago.local.service.LocalService;

@Controller
public class creditController {
	
	@Inject
	creditService cs;
	
	@Inject
	LocalService ls;
	

	@PostMapping("/credit")
	public ModelAndView credit(
		@RequestParam("hno") int hno,
		@RequestParam("mno") int mno,
		@RequestParam("totalin") String totalin,
		@RequestParam("totalout")String totalout,
		@RequestParam("price")int price,
		@RequestParam("room")String room) {
		
		ModelAndView mav = new ModelAndView();
		
		 HotelVO vo= ls.getHotelVO(hno);
		 
		 
		
		mav.addObject("hno", hno);
		mav.addObject("totalin", totalin);
		mav.addObject("totalout", totalout);
		mav.addObject("price", price);
		mav.addObject("hname", vo.getHname());
		mav.addObject("grade", vo.getHgrade());
		mav.addObject("room", room);
		
		
		mav.setViewName("/credit");
		

		
		return mav;
		
	}
	//예약 확인 후, 메인이동
	@PostMapping("/creditConfirm")
	public String creditConfirm(
			@RequestParam("hno") int hno,
			@RequestParam("mno") int mno,
			@RequestParam("totalin") String totalin,
			@RequestParam("totalout")String totalout,
			@RequestParam("price")int price,
			@RequestParam("room")String room) {
		
		cs.registReservation(totalin,totalout,hno,mno,room); 
		
		return "redirect:/";
	}
	
	
}
