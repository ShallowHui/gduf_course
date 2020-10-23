package edu.gduf.controller;

import edu.gduf.model.entity.Course;
import edu.gduf.model.entity.Stu;
import edu.gduf.model.entity.Student;
import edu.gduf.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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
    //选课页面分页控制层
    @RequestMapping("/courses")
    public String main(@RequestParam(value="currentPage", defaultValue="1", required=false)int currentPage, HttpServletRequest request)
    {
        request.getSession().setAttribute("PageList",studentService.findByPageCourse(currentPage));
        return "selectcourse";
    }
    @RequestMapping("/selectCourse") //学生选课
    public Object insertCourse(HttpServletRequest request, String cno, HttpServletResponse response) throws ServletException, IOException {
        String courseTime=studentService.getCourseTime(cno);
        String s_no=((Stu)request.getSession().getAttribute("ID_SESSION")).getS_no();
        List<String> coursesTime = studentService.getCoursesTime(s_no);
        for (String s : coursesTime) {
            if(s.equals(courseTime))//若时间冲突，选课失败
            {
                request.setAttribute("message","选课失败，所选课程与已有课程时间冲突!");
                return "forward:courses";
            }
        }
        studentService.insertCourse(cno,s_no);
        request.setAttribute("message","恭喜你，选课成功!");
        return "forward:courses";
    }
    @RequestMapping("deleteCourse")//学生退课
    public String deleteCourse(HttpServletRequest request,String[]  c_no)
    {
        String s_no=((Stu)request.getSession().getAttribute("ID_SESSION")).getS_no();
        for (String cno : c_no) {
            studentService.deleteCourse(cno,s_no);
        }
        return "redirect:getCourses";
    }
}