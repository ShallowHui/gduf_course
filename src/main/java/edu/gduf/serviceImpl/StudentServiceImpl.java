package edu.gduf.serviceImpl;

import edu.gduf.model.entity.Course;
import edu.gduf.model.entity.Stu_course;
import edu.gduf.model.entity.Student;
import edu.gduf.repository.StudentDao;
import edu.gduf.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class StudentServiceImpl implements StudentService {
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

}
