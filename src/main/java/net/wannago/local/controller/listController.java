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

import net.koreate.util.PageMaker;
import net.wannago.cafRes.CaResVO;
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

	
	  @GetMapping("local/cr/{page}") 
	  public ResponseEntity<Map<String, Object>> cafePage(
			  @PathVariable("page") int page
			  ){
	  System.out.println("카페페이지"+page);
	  
	  ResponseEntity<Map<String,Object>> entity = null;
	  
	  Map<String,Object> map = new HashMap<>();
	  PageMaker pageMaker1 = ls.getPageMaker1(page); 
	  List<CaResVO> caleslist = ls.readCalesList(pageMaker1.getCri());
	  map.put("pm", pageMaker1); 
	  map.put("caleslist", caleslist); 
	  try {
		 entity = new ResponseEntity<>(map,HttpStatus.OK); 
		 } 
	  catch (Exception e) {
		  entity = new
	  ResponseEntity<>(HttpStatus.BAD_REQUEST); 
		 }
	  
	  return entity; }
	 

}
