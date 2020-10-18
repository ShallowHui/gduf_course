package edu.gduf.serviceImpl;

import edu.gduf.model.entity.Course;
import edu.gduf.model.entity.Stu_course;
import edu.gduf.model.entity.Student;
import edu.gduf.model.entity.Teacher;
import edu.gduf.repository.TeacherDao;
import edu.gduf.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
