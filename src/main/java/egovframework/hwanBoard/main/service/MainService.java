package egovframework.hwanBoard.main.service;

import java.util.Map;

import org.springframework.web.bind.annotation.RequestParam;

import egovframework.hwanBoard.main.serviceImpl.MainServiceImpl;

public interface MainService {
	
	public static int loginCheck(@RequestParam Map<String, Object> param) {
		
		int cnt  = MainServiceImpl.loginCheck(param);
		
		return cnt;
	}
}
