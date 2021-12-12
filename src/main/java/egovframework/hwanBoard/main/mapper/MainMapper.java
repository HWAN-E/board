package egovframework.hwanBoard.main.mapper;

import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface MainMapper {
	
	public int loginCheck(Map<String, Object> param);
	
}
