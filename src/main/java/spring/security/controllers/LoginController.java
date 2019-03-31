package spring.security.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@GetMapping("/showMyLoginPage")
	public String showMyLoginPage() {
		return "login-form";
	}
	
	@GetMapping("/showMyFancyPage")
	public String showMyFancyPage() {
		return "fancy-login";
	}
	
	@GetMapping("/leaders")
	public String showLeadersPage() {
		return "leaders-page";
	}

	
	@GetMapping("/systems")
	public String showSystemsPage() {
		return "systems-page";
	}
	
	@GetMapping("/access-denied")
	public String showAccessDeniedPage() {
		return "access-denied-page";
	}


}
