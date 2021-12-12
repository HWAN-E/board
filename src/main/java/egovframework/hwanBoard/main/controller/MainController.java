package egovframework.hwanBoard.main.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.hwanBoard.main.service.MainService;

@Controller
public class MainController {
	
	MainService ms;
	
	@GetMapping("/loginCheck.do")
	public int login(HttpServletRequest request, HttpServletResponse response, ModelMap model,@RequestParam Map<String, Object> param) throws Exception {
		int cnt = MainService.loginCheck(param);
		return cnt;
	}
	
	@GetMapping("/main.do")
	public String mainPage() {
		return "main";
	}
	
	
		

}
