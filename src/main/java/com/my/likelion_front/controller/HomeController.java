package com.my.likelion_front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/rest-api")
	public String restapi() {
		return "rest-api";
	}
	
	
	@GetMapping("/js-study")
	public String js() {
		return "js-study";
	}
	
	
	@GetMapping("/home")
	public String home() {
		
		return "home";
	}
	
	
	@GetMapping("/login")
	public String login() {
		
		return "login";
	}
	
	@GetMapping("/id-class")
	public String ic() {
		
		return "id-class";
	}
	
	@GetMapping("/layout")
	public String layout() {
		
		return "layout";
	}

	
}