package net.wannago.trip.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "home";
	}
	@RequestMapping("about")
	public void about() {
		
		
	}
	
	@RequestMapping("blog-home-1")
	public void bloghome1() {
		
		
	}
	
	@RequestMapping("blog-home-2")
	public void bloghome2() {
		
		
	}
	
	@RequestMapping("blog-post")
	public void blogpost() {
		
		
	}
	
	@RequestMapping("contact")
	public void contact() {
		
		
	}
	
	@RequestMapping("faq")
	public void faq() {
		
		
	}
	
	@RequestMapping("full-width")
	public void fullwidth() {
		
		
	}
	
	@RequestMapping("portfolio-1-col")
	public void portfolio1() {
		
		
	}
	
	@RequestMapping("portfolio-2-col")
	public void portfolio2() {
		
		
	}
	
	@RequestMapping("portfolio-3-col")
	public void portfolio3() {
		
		
	}
	
	@RequestMapping("portfolio-4-col")
	public void portfolio4() {
		
		
	}
	
	@RequestMapping("portfolio-item-col")
	public void portfolioitem() {
		
		
	}
	
	@RequestMapping("pricing")
	public void pricing() {
		
		
	}
	
	@RequestMapping("services")
	public void services() {
		
		
	}
	
	@RequestMapping("sidebar")
	public void sidebar() {
		
		
	}
	
	
	
}
