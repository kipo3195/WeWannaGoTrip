package net.wannago.local.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import net.koreate.util.PageMaker;
import net.wannago.admin.vo.SearchVO;
import net.wannago.hotel.vo.HotelVO;
import net.wannago.local.service.LocalService;

@RestController
public class listController {

	@Inject
	LocalService ls;

	// 호텔 리스트 처리
	@GetMapping("local/{page}")
	public ResponseEntity<Map<String, Object>> listPage(@PathVariable("page") int page) {
		System.out.println(page);
		ResponseEntity<Map<String, Object>> entity = null;

		try {
			Map<String, Object> map = new HashMap<String, Object>();
			PageMaker pageMaker = ls.getPageMaker(page);
			map.put("pm", pageMaker);
			List<HotelVO> hotellist = ls.readList(pageMaker.getCri());
			map.put("hotellist", hotellist);
			entity = new ResponseEntity<>(map, HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}
	
	@GetMapping("local/jejuHotel/Detail/{hno}")
	public ModelAndView detailPage(@PathVariable("hno") int hno,
			ModelAndView mav){
		
		HotelVO vo = ls.getHotelVO(hno);
		List<String> list = ls.getHotelDetailImg(hno);
		mav.addObject("hotel", vo);
		mav.addObject("list",list);
		mav.setViewName("/local/hotel/detail/jejuHotelDetail");
		return mav;
		
	}
	
	@GetMapping("local/SearchInfo")
	public ResponseEntity<Object> SearchInfo(SearchVO vo) {
ResponseEntity<Object> entity = null;
		
		System.out.println("vo 출력 : "+vo);
		
		List<HotelVO> hotel = ls.searchInfo(vo);
		System.out.println("controller hotelList : "+hotel);
		
		try {
			entity = new ResponseEntity<>(hotel,HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
	  
	 

}
