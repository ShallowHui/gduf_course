package edu.gduf.controller;

import edu.gduf.model.entity.Stu;
import edu.gduf.model.entity.Student;
import edu.gduf.model.entity.Teacher;
import edu.gduf.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Random;

@Controller
public class AdminController {
	@Autowired
    private AdminService adminService;
    
    @RequestMapping("/ahome")
	public String ahome(){return "admin";}
	//注册！！！
    @RequestMapping("toregister")
    public String toregister()
    {
    	return "register";
    }
    @RequestMapping("/doregister")
    public String register(HttpServletRequest request,String client,String name,String password,String password1)
    {
    	if(password.equals(password1))//密码确认
    	{
    	if(client.equals("教师"))//教师身份注册
    	{
    		String no;
    		int length=4;
    		while(true)
    		{
    		Random random = new Random();
            StringBuffer valSb = new StringBuffer();
            String xchar = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            String charStr = "0123456789";
            int charLength = charStr.length();
            int index = random.nextInt(charLength);
            valSb.append(xchar.charAt(index));
            for (int i = 1; i < length; i++) 
              {
                index = random.nextInt(charLength);
                valSb.append(charStr.charAt(index));
              }
            no = valSb.toString();
            if(adminService.findCno(no)==0) break;
            }
    		adminService.registerTeacher(no,name);
    		adminService.insertTea(no, password);
    		request.setAttribute("message","注册成功！！！");
    		return "register";
    	}
    	else if(client.equals("学生"))//学生注册
    	{
    		String no;
    		int length=6;
    		while(true)
    		{
    		Random random = new Random();
            StringBuffer valSb = new StringBuffer();
            String charStr = "0123456789";
            int charLength = charStr.length();
            int index = random.nextInt(charLength);
            for (int i = 0; i < length; i++) 
               { 
                index = random.nextInt(charLength);
                valSb.append(charStr.charAt(index));
               }
            no = valSb.toString();
            if(adminService.findSno(no)==0) break;
            }
    		adminService.registerStudent(no, name);
    		adminService.insertStu(no, password);
    		request.setAttribute("message","注册成功！！！");
    		return "register";
    	}
    	}
    	else
    	{
    		request.setAttribute("message","两次密码输入不一致！");
    		return "register";
    	}
    	return "register";
    }
	@RequestMapping("toBulletin")
	public String toBulletin()
	{
		return "bulletin";
	}
	//发布公告！！
	@RequestMapping("addBulletin")//0是全体，1是教师，2是学生
	public String addBulletin(HttpServletRequest request,String Bname,String memo,String flag)
    {
      int i=adminService.addBulletin(Bname,memo,flag);
      if(i!=0)
      {
    	 request.setAttribute("message","发布公告成功！！");
    	 return"bulletin";
      }
      else 
      {
    	 request.setAttribute("message","发布公告失败！！");
     	 return"bulletin";
      }
   }
}