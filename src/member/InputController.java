package member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import dto.MemberDTO;

@Controller
public class InputController {

	@Autowired
	private SqlMapClientTemplate sqlMapper;
	
	@RequestMapping("/inputForm.gm")
	public String form() {
		return "/login/inputForm.jsp";
	}
	
	@RequestMapping("/inputPro.gm")
	public String formPro(@ModelAttribute MemberDTO dto) {
		sqlMapper.insert("inputMember", dto);
		return "/login/main.jsp";
	}
}
