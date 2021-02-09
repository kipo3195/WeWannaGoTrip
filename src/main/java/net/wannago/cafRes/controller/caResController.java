package net.wannago.cafRes.controller;

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
import net.wannago.cafRes.service.caResService;
import net.wannago.cafRes.vo.CaResVO;

@RestController
public class caResController {
	
	@Inject
	caResService ls;
	

	@GetMapping("local/cr/{page}") 
	  public ResponseEntity<Map<String, Object>> cafePage(
			  @PathVariable("page") int page
			  ){
		ResponseEntity<Map<String,Object>> entity = null;
	  try {
		  Map<String,Object> map = new HashMap<>();
		  PageMaker pageMaker1 = ls.getPageMaker1(page); 
		  map.put("pm", pageMaker1); 
		  List<CaResVO> caleslist = ls.readCalesList(pageMaker1.getCri());
		  map.put("caleslist",caleslist);
		 entity = new ResponseEntity<>(map,HttpStatus.OK); 
		 } 
	  catch (Exception e) {
		  entity = new
	  ResponseEntity<>(HttpStatus.BAD_REQUEST); 
		 }
	  
	  return entity; 
	  }
}
