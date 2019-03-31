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
}
