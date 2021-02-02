package net.wannago.local.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("local")
public class LocalController {

	@RequestMapping("/jeju")
	public void jejuPage() {
		
	}
	@RequestMapping("/jejuhotel")
	public String jejuHotelPage() {
		System.out.println("실행");
		return "/local/hotel/jejuHotel";
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
