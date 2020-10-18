package edu.gduf.repository;

import edu.gduf.model.entity.Course;
import edu.gduf.model.entity.Stu_course;
import edu.gduf.model.entity.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentDao {
    public Student getStudent(@Param("no") String s_no); //查询个人信息
    public List<Course> getCourses(@Param("no") String s_no);//查看自己的课表课程
    public int deleteStudent(@Param("no") String s_no);//学生退课
    public String getCourseTime(@Param("cno") String c_no);//查询某门课程的上课时间
    public List<String> getCoursesTime(@Param("no") String s_no);//查询学生课表里的所有上课时间
    public int insertCourse(@Param("cno") String c_no, @Param("sno") String s_no); //学生选课
    public List<Course> getAllCourses();
}
