package edu.gduf.repository;

import edu.gduf.model.entity.Course;
import edu.gduf.model.entity.Stu_course;
import edu.gduf.model.entity.Student;
import edu.gduf.model.entity.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TeacherDao {
    public Teacher getTeacher(@Param("no") String t_no);//个人信息
    public Course findCourse(@Param(("cno")) String c_no); //查找有没有cno的课程
    public int addCourse(Course course);//开课
    public List<Course> getCourses(@Param("no") String t_no);//查看自己的授课课程
    public List<Student> getClass(@Param("cno") String c_no);//课程班级学生
    public int deleteStudent(@Param("no") String s_no);//教师删除学生强制退课
}
