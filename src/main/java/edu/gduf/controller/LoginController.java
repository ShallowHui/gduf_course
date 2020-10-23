package edu.gduf.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import edu.gduf.service.StudentService;
import edu.gduf.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.gduf.model.entity.Admin;
import edu.gduf.model.entity.Stu;
import edu.gduf.model.entity.Tea;
import edu.gduf.service.LoginService;
import edu.gduf.util.RandomValidateCode;

import java.util.List;

@Controller
public class LoginController
{
	@Autowired
	private LoginService loginService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private TeacherService teacherService;
	@RequestMapping("/login")
	public String login(String no, String password,String client,String checkCode,HttpServletRequest request,HttpSession session)
	{
		if(checkCode.toLowerCase().equals(session.getAttribute(RandomValidateCode.RANDOMCODEKEY)))
		{
			if(client.equals("管理员"))
			{
				Admin admin=loginService.adminLogin(no, password);
				if(admin!= null)
				{
					session.setAttribute("ID_SESSION",admin);
					return "admin";
				}
				else 
				{
					request.setAttribute("classattr","alert alert-danger alert-dismissible fade show");
					request.setAttribute("buttomText","&times;");
					request.setAttribute("message","用户名或者密码错误！请重新输入或选择正确的身份");
					return "forward:/";
				}
			}
			else if(client.equals("教师"))
			{
				Tea t=loginService.teacherLogin(no,password);
				if(t!= null)
				{
					String flag="1";
					List<String> bulletin = loginService.getBulletin(flag);
					session.setAttribute("indentity",teacherService.getTeacher(no).getT_name());
					session.setAttribute("bulletins",bulletin);
					session.setAttribute("ID_SESSION",t);
					return "teacher";
				}
				else 
				{
					request.setAttribute("classattr","alert alert-danger alert-dismissible fade show");
					request.setAttribute("buttomText","&times;");
					request.setAttribute("message","用户名或者密码错误！请重新输入或选择正确的身份");
					return "forward:/";
				}
			}
			else 
			{
				Stu s=loginService.studentLogin(no, password);
				if(s!= null)
				{
					String flag="2";
					List<String> bulletin = loginService.getBulletin(flag);
					session.setAttribute("indentity",studentService.getStudent(no).getS_name());
					session.setAttribute("bulletins",bulletin);
					session.setAttribute("ID_SESSION",s);
					return "student";
				}
				else 
				{
					request.setAttribute("classattr","alert alert-danger alert-dismissible fade show");
					request.setAttribute("buttomText","&times;");
					request.setAttribute("message","用户名或者密码错误！请重新输入或选择正确的身份");
					return "forward:/";
				}
			}	
			
		}
		else
		{
			request.setAttribute("classattr","alert alert-danger alert-dismissible fade show");
			request.setAttribute("buttomText","&times;");
			request.setAttribute("message","验证码错误！请重新输入");
			return "forward:/";
		}
	}
	@RequestMapping("/loginout")
	public String loginout(HttpServletRequest request)
	{
		request.getSession().removeAttribute("ID_SESSION");
		return "redirect:/";
	}
}