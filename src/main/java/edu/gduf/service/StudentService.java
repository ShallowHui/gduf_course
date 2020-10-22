package edu.gduf.service;

import edu.gduf.model.entity.Course;
import edu.gduf.model.entity.PageCourse;
import edu.gduf.model.entity.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentService {
        public Student getStudent(@Param("no") String s_no); //查询个人信息
        public List<Course> getCourses(@Param("no") String s_no);//查看自己的课表课程
        public int deleteStudent(@Param("no") String s_no);//学生退课
        public String getCourseTime(@Param("cno") String c_no);//查询某门课程的上课时间
        public List<String> getCoursesTime(@Param("no") String s_no);//查询学生课表里的所有上课时间
        public int insertCourse(@Param("cno") String c_no, @Param("sno") String s_no); //学生选课
        public List<Course> getAllCourses();
        public PageCourse<Course> findByPageCourse(int currentPage); //分页显示课程信息
        public int getCount();//获取指定课程数
        public int deleteCourse(@Param("cno") String c_no,@Param("sno") String s_no);//学生退课
}
