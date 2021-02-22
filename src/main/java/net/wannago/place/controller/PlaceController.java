package net.wannago.place.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import net.koreate.util.PageMaker;
import net.wannago.place.service.PlaceService;
import net.wannago.place.vo.PlaceVO;

@RestController
public class PlaceController {

	@Inject
	PlaceService ls;
	
	
	@GetMapping("local/pl/{page}") 
	  public ResponseEntity<Map<String, Object>> placePage(
			  @PathVariable("page") int page
		    ){
		ResponseEntity<Map<String,Object>> entity = null;
	  try {
		  	Map<String,Object> map = new HashMap<>();
		  	PageMaker pageMaker1 = ls.getPageMaker1(page); 
		  	map.put("pm", pageMaker1); 
		  	List<PlaceVO> placelist = ls.readPlaceList(pageMaker1.getCri());
		  	map.put("placelist",placelist);
		  	System.out.println("size"+placelist.size());
		  	entity = new ResponseEntity<>(map,HttpStatus.OK); 
		 } 
	  catch (Exception e) {
		  	entity = new
		  	ResponseEntity<>(HttpStatus.BAD_REQUEST); 
		 }
	  
	    return entity; 
	 }
	
}
