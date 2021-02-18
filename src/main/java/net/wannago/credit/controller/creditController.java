package net.wannago.credit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class creditController {

	@GetMapping("credit/{hno}")
	@ResponseBody
	public void credit(
			@PathVariable("hno") int hno) {
		System.out.println(hno);
		
	}
}
