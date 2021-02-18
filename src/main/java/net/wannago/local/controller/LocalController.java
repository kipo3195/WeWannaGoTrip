package net.wannago.local.controller;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import net.wannago.hotel.vo.HotelPrice;
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

		/* List<HotelVO> hotellist = ls.readList(); */
		/* System.out.println("호텔리스트 출력"+hotellist); */
		mav.setViewName("local/hotel/jejuHotel");
		/* mav.addObject("hotellist", hotellist); */

		return mav;
		/* return "/local/hotel/jejuHotel"; */
	}
	/*
	 * @RequestMapping("/jejuHotel/Detail") public ModelAndView
	 * jejuhoteldetail(ModelAndView mav) { Map<String,String> priceMap =
	 * ls.getRPrice(); //호텔 정보를 매개변수로 던져줘야할듯? //예약 날짜를 구분지을수있는 변수도 매개변수로 던져줘야 할듯?
	 * 
	 * 
	 * mav.addObject("priceMap",priceMap);
	 * mav.setViewName("/local/hotel/detail/jejuHotelDetail"); return mav; return
	 * "/local/hotel/detail/jejuHotelDetail"; }
	 */

	//예약하러가기 
	@RequestMapping("/jejuHotel/reservation")
	public ModelAndView jejuhotelReservation(
			@RequestParam("hno") int hno,
			ModelAndView mav) {
		
		 HotelVO vo = ls.HotelInfo(hno);
		 System.out.println(vo);
		mav.addObject("hotel", vo);
		mav.setViewName("/local/hotel/reservation/hotelRes");
		return mav;
	}
	
	//호텔 예약 가격 
	@GetMapping("/jejuHotel/gethotelPrice")
	@ResponseBody
	public ResponseEntity<Map<String,Integer>> gethotelPrice(
			@RequestParam("a")double a,
			@RequestParam("hno") int hno,
			@RequestParam("odd") int odd,
			@RequestParam("idd") int idd,
			@RequestParam("plus") int plus
			)
		{
		ResponseEntity<Map<String,Integer>> entity = null;
		Map<String,Integer> hotelprice= ls.hotelPrice(a,hno,plus);
		
		
		try {
			entity = new ResponseEntity<>(hotelprice,HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	

	@RequestMapping("missing")
	public String cafeRes() {

		return "/local/cafeRes/cafeResInfo";
	}

	@RequestMapping("/jejuCafeRes")
	public String jejuCafeResPage() {

		return "/local/cafeRes/jejuCafeRes";
	}

	@RequestMapping("/jejuInfo")
	public String jejuInfoPage() {

		return "/local/info/jejuInfo";
	}

	@RequestMapping("jungbang")
	public String jungbang() {

		return "/local/info/place/placeinfo";
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
