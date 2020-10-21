package edu.gduf.controller;

import edu.gduf.model.entity.Course;
import edu.gduf.model.entity.Stu;
import edu.gduf.model.entity.Student;
import edu.gduf.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
@Controller
public class StudentController {
    @Autowired
    private StudentService studentService;

    @RequestMapping("/shome")
    public  String shome(){
        return "student";
    }
    @RequestMapping("getStudent")//查询学生详细信息
    public String getStudent(HttpServletRequest request)
    {
        Student student;
        student=studentService.getStudent(((Stu)request.getSession().getAttribute("ID_SESSION")).getS_no());
        request.getSession().setAttribute("student",student);
        System.out.println(student);
        return "spersonal";
    }

    @RequestMapping("getCourses")//查询已选课程
    public String getCourses(HttpServletRequest request)
    {
        String s_no=((Stu)request.getSession().getAttribute("ID_SESSION")).getS_no();
        List<Course> courses=studentService.getCourses(s_no);
        request.getSession().setAttribute("courses",courses);
        return "mineclass";
    }

    /*@RequestMapping("deleteStudent")//删除班级学生
    public String deleteStudent(HttpServletRequest request,String s_no)
    {
        int i=studentService.deleteStudent(s_no);
        if(i==0)
        {
            request.setAttribute("message","删除失败！！！！！！！");
        }
        else{
            request.setAttribute("message","删除成功！！！！！！！");
        }

        return "";
    }

    @RequestMapping("toInsertCourse")//跳转到选课界面
    public String toInsertCourse()
    {
        return "";
    }
    @RequestMapping("") //学生选课
    public String insertCourse(HttpServletRequest request,String c_no)
    {
        String courseTime=studentService.getCourseTime(c_no);
        String s_no=((Stu)request.getSession().getAttribute("ID_SESSION")).getS_no();
        List<String> coursesTime = studentService.getCoursesTime(s_no);
        for (String s : coursesTime) {
            if(s.equals(courseTime))//若时间冲突，选课失败
            {
                request.getSession().setAttribute("message","选课失败，时间冲突!");
                return "";
            }
        }
        studentService.insertCourse(c_no,s_no);
        request.getSession().setAttribute("message","选课成功!");
        return ""; //跳转到成功界面
    }*/

}