package edu.gduf.serviceImpl;

import edu.gduf.model.entity.Bulletin;
import edu.gduf.model.entity.Student;
import edu.gduf.model.entity.Teacher;
import edu.gduf.repository.AdminDao;
import edu.gduf.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDao adminDao;

    @Override
    public int registerTeacher(Teacher teacher) {
        return adminDao.registerTeacher(teacher);
    }

    @Override
    public int registerStudent(Student student) {
        return adminDao.registerStudent(student);
    }

    @Override
    public List<Teacher> getTeachers() {
        return adminDao.getTeachers();
    }

    @Override
    public List<Student> getStudents() {
        return adminDao.getStudents();
    }

    @Override
    public int updateTeacher(Teacher teacher) {
        return adminDao.updateTeacher(teacher);
    }

    @Override
    public int updateStudent(Student student) {
        return adminDao.registerStudent(student);
    }


    @Override
    public int deleteTeacher(String t_no) {
        return adminDao.deleteTeacher(t_no);
    }

    @Override
    public int deleteStudent(String s_no) {
        return adminDao.deleteTeacher(s_no);
    }

    @Override
    public List<Bulletin> getBulletins() {
        return null;
    }

    @Override
    public Bulletin getBulletinById(int id) {
        return null;
    }

    @Override
    public int addBulletin(Bulletin bulletin) {
        return 0;
    }

    @Override
    public int updateBulletin(Bulletin bulletin) {
        return 0;
    }

    @Override
    public int deleteBulletin(Bulletin bulletin) {
        return 0;
    }

    @Override
    public List<String> getTeacherNo() {
        return adminDao.getTeacherNo();
    }

    @Override
    public List<String> getStudentNo() {
        return adminDao.getStudentNo();
    }
}
