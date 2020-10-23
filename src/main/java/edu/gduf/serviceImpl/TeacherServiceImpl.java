package edu.gduf.serviceImpl;

import edu.gduf.model.entity.*;
import edu.gduf.repository.TeacherDao;
import edu.gduf.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
@Service
public class TeacherServiceImpl implements TeacherService
{


    @Autowired
    private TeacherDao teacherDao;
    public Teacher getTeacher(String t_no)
    {
        return teacherDao.getTeacher(t_no);
    }

    @Override
    public Course findCourse(String c_no) {
        return teacherDao.findCourse(c_no);
    }

    public int addCourse(Course course)
    {
        return teacherDao.addCourse(course);
    }

    public  List<Course>getCourses(String t_no)
    {
        return teacherDao.getCourses(t_no);
    }

    public List<Student> getClass(String c_no) {
        return teacherDao.getClass(c_no);
    }

    public int deleteStudent(String s_no) {
        return teacherDao.deleteStudent(s_no);
    }

    public PageBean<Student> findByPage(int currentPage, String c_no) {
        HashMap<String,Object> map = new HashMap<String,Object>();
        PageBean<Student> pageBean = new PageBean<Student>();

        //封装当前页数
        pageBean.setCurrPage(currentPage);

        //每页显示的数据
        int pageSize=15;
        pageBean.setPageSize(pageSize);

        //封装总记录数
        int totalCount = teacherDao.getCount(c_no);
        pageBean.setTotalCount(totalCount);

        //封装总页数
        double tc = totalCount;
        Double num =Math.ceil(tc/pageSize);//向上取整
        pageBean.setTotalPage(num.intValue());
        map.put("cno",c_no);
        map.put("start",(currentPage-1)*pageSize);
        map.put("size", pageBean.getPageSize());
        //封装每页显示的数据
        List<Student> lists = teacherDao.findByPage(map);
        pageBean.setStudents(lists);

        return pageBean;
    }

    public int getCount(String c_no) {
        return teacherDao.getCount(c_no);
    }
}