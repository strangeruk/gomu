package member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dto.MemberDTO;

@Controller
public class LoginController{
	@Autowired
	private SqlMapClientTemplate sqlMapper;
	
	@RequestMapping("/loginForm.gm")
	public String Form(){
		return "/login/loginForm.jsp";
	}
	
	@RequestMapping("/loginPro.gm")
	public ModelAndView loginPro(HttpSession session, @ModelAttribute MemberDTO member) throws Exception{
		int x=-1;	//wrong ID
		String password = (String) sqlMapper.queryForObject("confirmPw", member.getId());
		if(password!=null){
			if(member.getPw().equals(password)){
				x=1;	//login complete
			}else{
				x=0;	//wrong password
			}
		}
		ModelAndView mv = new ModelAndView();
		if(x==1){
			session.setAttribute("id", member.getId());
			mv.setViewName("/login/loginComplete.jsp");
		}else{
			mv.addObject("x", new Integer(x));
			mv.setViewName("/login/loginPro.jsp");
		}
		return mv;
	}
}
