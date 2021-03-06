package edu.gduf.repository;

import edu.gduf.model.entity.Comment;
import edu.gduf.model.entity.Course;
import edu.gduf.model.entity.Stu_course;
import edu.gduf.model.entity.Student;
import edu.gduf.model.vo.CourseWithTname;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

public interface StudentDao {
    public Student getStudent(@Param("no") String s_no); //查询个人信息
    public List<Course> getCourses(@Param("no") String s_no);//查看自己的课表课程
    public int deleteStudent(@Param("no") String s_no);//学生退课
    public String getCourseTime(@Param("cno") String c_no);//查询某门课程的上课时间
    public List<String> getCoursesTime(@Param("no") String s_no);//查询学生课表里的所有上课时间
    public int insertCourse(@Param("cno") String c_no, @Param("sno") String s_no); //学生选课
    public List<Course> getAllCourses();
    public List<Course> findByPageCourse(HashMap<String,Object> map); //分页显示课程信息
    public int getCount();//获取指定课程数
    public int deleteCourse(@Param("cno") String c_no,@Param("sno") String s_no);//学生退课
    public List<Comment> findByPageComment(HashMap<String, Object> map);
    public int getCounts(@Param("cno") String c_no);
    public int addComment(@Param("cno") String c_no, @Param("sno") String s_no,@Param("comment") String comment);
    public CourseWithTname findCourseWithTname(String cno);
    public List<Course> findCoursesLike(@Param("cname") String c_name);//根据课程名模糊查询课程
    public List<Course> findCoursesLikeT(@Param("tname") String t_name);//根据教师名模糊查询课程
}
