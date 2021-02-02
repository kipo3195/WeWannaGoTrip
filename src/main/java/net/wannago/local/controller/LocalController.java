package net.wannago.local.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import net.wannago.hotel.vo.HotelVO;
import net.wannago.local.service.LocalService;

@Controller
@RequestMapping("local")
public class LocalController {
	
	@Inject
	LocalService ls;

	@RequestMapping("/jeju")
	public void jejuPage() {
		
	}
	@RequestMapping("/jejuhotel")
	public ModelAndView jejuHotelPage(ModelAndView mav) {
		
		List<HotelVO> hotellist = ls.readList();
		System.out.println("hotellist"+hotellist);
		mav.setViewName("local/hotel/jejuHotel");
		mav.addObject("hotellist", hotellist);
		
		return mav;
		/* return "/local/hotel/jejuHotel"; */
	}
	@RequestMapping("/jejuHotel/Detail")
	public ModelAndView jejuhotoldetail(ModelAndView mav) {
		Map<String,String> priceMap = ls.getRPrice();
		//호텔 정보를 매개변수로 던져줘야할듯?
		//예약 날짜를 구분지을수있는 변수도 매개변수로 던져줘야 할듯?
		
		

			
		System.out.println("PRICE MAP");
		mav.addObject("priceMap",priceMap);
		mav.setViewName("/local/hotel/detail/jejuHotelDetail");
		return mav;
		/* return "/local/hotel/detail/jejuHotelDetail"; */
	}
	
	@RequestMapping("/jejuCafeRes")
	public String jejuCafeResPage() {
		
		return "/local/cafeRes/jejuCafeRes";
	}
	@RequestMapping("/jejuInfo")
	public String jejuInfoPage() {
		
		return "/local/info/jejuInfo";
	}

	
	
	
	@RequestMapping("/seoul")
	public void seoulPage() {
		
	}
	@RequestMapping("/busan")
	public void busanPage() {
		
	}
	@RequestMapping("/choongchung")
	public void choongchungPage() {
		
	}
	@RequestMapping("/kyeongsang")
	public void kyeongsangPage() {
		
	}
	@RequestMapping("/kangwon")
	public void kangwonPage() {
		
	}
	@RequestMapping("/junla")
	public void junlaPage() {
		
	}
	
	
	
}
