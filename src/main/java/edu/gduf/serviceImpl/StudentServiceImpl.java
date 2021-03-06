package edu.gduf.serviceImpl;

import edu.gduf.model.entity.*;
import edu.gduf.model.vo.CourseWithTname;
import edu.gduf.repository.StudentDao;
import edu.gduf.service.StudentService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
@Service
public  class StudentServiceImpl implements StudentService {
    @Autowired
    StudentDao studentDao;
    @Override
    public Student getStudent(String s_no) {
        return studentDao.getStudent(s_no);
    }

    @Override
    public List<Course> getCourses(String s_no) {
        return studentDao.getCourses(s_no);
    }

    @Override
    public int deleteStudent(String s_no) {
        return studentDao.deleteStudent(s_no);
    }

    @Override
    public String getCourseTime(String c_no) {
        return studentDao.getCourseTime(c_no);
    }

    @Override
    public List<String> getCoursesTime(String s_no) {
        return studentDao.getCoursesTime(s_no);
    }

    @Override
    public int insertCourse(String c_no, String s_no) {
        return studentDao.insertCourse(c_no,s_no);
    }


    @Override
    public List<Course> getAllCourses() {
        return studentDao.getAllCourses();
    }

    public PageCourse<Course> findByPageCourse(int currentPage) {
        HashMap<String,Object> map = new HashMap<>();
        PageCourse<Course> pageBean = new PageCourse<Course>();

        //封装当前页数
        pageBean.setCurrPage(currentPage);

        //每页显示的数据
        int pageSize=5;
        pageBean.setPageSize(pageSize);

        //封装总记录数
        int totalCount = studentDao.getCount();
        pageBean.setTotalCount(totalCount);

        //封装总页数
        double tc = totalCount;
        Double num =Math.ceil(tc/pageSize);//向上取整
        pageBean.setTotalPage(num.intValue());
        map.put("start",(currentPage-1)*pageSize);
        map.put("size", pageBean.getPageSize());
        //封装每页显示的数据
        List<Course> lists =studentDao.findByPageCourse(map);
        pageBean.setCourses(lists);

        return pageBean;
    }
    public int getCount() {

        return studentDao.getCount();
    }
    public int deleteCourse(String c_no, String s_no) {
        return studentDao.deleteCourse(c_no,s_no);
    }
    public PageComment<Comment> findByPageComment(int currentPage, String c_no) {
        HashMap<String,Object> map = new HashMap<String,Object>();
        PageComment<Comment> pageBean = new PageComment<Comment>();

        //封装当前页数
        pageBean.setCurrPage(currentPage);

        //每页显示的数据
        int pageSize=15;
        pageBean.setPageSize(pageSize);

        //封装总记录数
        int totalCount =studentDao.getCounts(c_no);
        pageBean.setTotalCount(totalCount);

        //封装总页数
        double tc = totalCount;
        Double num =Math.ceil(tc/pageSize);//向上取整
        pageBean.setTotalPage(num.intValue());
        map.put("cno",c_no);
        map.put("start",(currentPage-1)*pageSize);
        map.put("size", pageBean.getPageSize());
        //封装每页显示的数据
        List<Comment> lists = studentDao.findByPageComment(map);
        pageBean.setComments(lists);

        return pageBean;

    }
    public int getCounts(String c_no) {
        return studentDao.getCounts(c_no);
    }
    public int addComment(String c_no, String s_no, String comment) {
        return studentDao.addComment(c_no, s_no, comment);
    }
    public CourseWithTname findCourseWithTname(String cno){
        return studentDao.findCourseWithTname(cno);
    }
    public List<Course> findCoursesLike(@Param("cname") String c_name){
        return studentDao.findCoursesLike(c_name);
    }
    public List<Course> findCoursesLikeT(@Param("tname") String t_name){
        return studentDao.findCoursesLikeT(t_name);
    }
}
