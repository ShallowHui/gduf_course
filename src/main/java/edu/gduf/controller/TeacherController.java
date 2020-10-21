package edu.gduf.controller;

import edu.gduf.model.entity.Course;
import edu.gduf.model.entity.Tea;
import edu.gduf.model.entity.Teacher;
import edu.gduf.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Random;

@Controller
public class TeacherController
{
    @Autowired
    private TeacherService teacherService;
    @RequestMapping("/thome") //返回主页
    public String thome(){
        return "teacher";
    }

    @RequestMapping("/getTeacher")
    public String getTeacher(HttpServletRequest request)//查询Teacher详细信息
    {
        System.out.println("正在查询教师个人信息...");
        HttpSession s=request.getSession();
        Teacher teacher;
        teacher = teacherService.getTeacher(((Tea)(s.getAttribute("ID_SESSION"))).getT_no());
        request.getSession().setAttribute("teacher",teacher);
        System.out.println(teacher);
        return "tpersonal";
    }

    @RequestMapping("/toAddCourse")//跳转到开课页面
    public String toAddCourse()
    {
        return "opencourse";
    }
    @RequestMapping("openclass")
    public String addCourse(HttpServletRequest request, Course course)//实现开课操作
    {
        HttpSession s=request.getSession();
        String tno=((Tea)(s.getAttribute("ID_SESSION"))).getT_no();
        course.setT_no(tno);
        String cno;
        while (true) {
            int length = 8;
            Random random = new Random();
            StringBuffer valSb = new StringBuffer();
            String xchar = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            String charStr = "0123456789";
            int charLength = charStr.length();
            int index = random.nextInt(charLength);
            valSb.append(xchar.charAt(index));
            for (int i = 1; i < length; i++) {
                index = random.nextInt(charLength);

                valSb.append(charStr.charAt(index));

            }
            cno = valSb.toString(); //随机生成课程代码c_no
            if (teacherService.findCourse(cno) == null)
                break;
        }
        course.setC_no(cno);
        teacherService.addCourse(course);
        return "redirect:/toAddCourse";
    }



    @RequestMapping("/showtcourses")//查看自己的授课课程
    public String getCourses(HttpServletRequest request)
    {
        HttpSession s=request.getSession();
        request.getSession().setAttribute("courses",teacherService.getCourses(((Tea)(s.getAttribute("ID_SESSION"))).getT_no()));
        return "coursemanager";
    }


    @RequestMapping("/showclass")//查询课程班级学生
    public String getClass(HttpServletRequest request,String cno,@RequestParam(value="currentPage", defaultValue="1", required=false)int currentPage)
    {
        request.setAttribute("course",teacherService.findCourse(cno));
        request.getSession().setAttribute("students",teacherService.getClass(cno));
        request.getSession().setAttribute("pageList",teacherService.findByPage(currentPage,cno));
        return "classmanager";
    }

    @RequestMapping("/deleteStudent")//删除班级学生
    public String deteleStudent(HttpServletRequest request,String[] sno,String cno)
    {
        for(String s_no:sno){
            teacherService.deleteStudent(s_no);
        }
        return "redirect:/showclass?cno="+cno;
    }

}
