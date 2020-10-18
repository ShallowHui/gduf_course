package edu.gduf.service;

import edu.gduf.model.entity.Bulletin;
import edu.gduf.model.entity.Student;
import edu.gduf.model.entity.Student;
import edu.gduf.model.entity.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminService {
    public int registerTeacher(Teacher teacher);
    public int registerStudent(Student student);

    public List<Teacher> getTeachers();
    public List<Student> getStudents();

    public int updateTeacher(Teacher teacher);
    public int updateStudent(Student student);

    public int deleteTeacher(@Param("no") String t_no);
    public int deleteStudent(@Param("no") String s_no);

    public List<Bulletin> getBulletins();
    public Bulletin getBulletinById(@Param("id") int id);
    public int addBulletin(Bulletin bulletin);
    public int updateBulletin(Bulletin bulletin);
    public int deleteBulletin(Bulletin bulletin);
    public List<String> getTeacherNo();
    public List<String> getStudentNo();
}
