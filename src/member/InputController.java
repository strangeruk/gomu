package member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	public String formPro(@ModelAttribute MemberDTO member) {
		System.out.println(member.getId());
		sqlMapper.insert("inputMember", member);
		return "/login/main.jsp";
	}
	
	@RequestMapping("/confirmId.gm")
	public ModelAndView confirm(@ModelAttribute MemberDTO member) {
		int check = -1;
		String id = (String)sqlMapper.queryForObject("confirmId", member.getId());
		if(id != null) {
			check = 1;
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("check", new Integer(check));
		mv.addObject("id", member.getId());
		mv.setViewName("/login/confirmId.jsp");
		return mv;
	}
}
