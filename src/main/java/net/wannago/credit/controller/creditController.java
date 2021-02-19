package net.wannago.credit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class creditController {

	@PostMapping("/credit")
	public void credit(
		@RequestParam("hno") int hno,
		@RequestParam("mno") int mno) {
		System.out.println("여기");
		System.out.println(hno);
		System.out.println(mno);
		
	}
	
	
	
}
