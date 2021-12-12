package egovframework.hwanBoard.main.serviceImpl;

import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.hwanBoard.main.mapper.MainMapper;
import egovframework.hwanBoard.main.service.MainService;

@Service
public class MainServiceImpl implements MainService {
	
	static MainMapper mainmapper;

	public static int loginCheck(@RequestParam Map<String, Object> param) {
		
		int memcheck = mainmapper.loginCheck(param);
		
		System.out.println(memcheck);
		
		if(memcheck > 0) {
			memcheck = 1;
		}else {
			memcheck = 0;
		}
		
		return memcheck;
		
	}
}
