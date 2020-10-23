package edu.gduf.service;

import edu.gduf.model.entity.Bulletin;
import edu.gduf.model.entity.Student;
import edu.gduf.model.entity.Student;
import edu.gduf.model.entity.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminService {
	
	 public int registerTeacher(@Param("no") String no, @Param("name") String name);
	 public int registerStudent(@Param("no") String no, @Param("name") String name);
	 public int insertTea(@Param("no") String no, @Param("password") String password);
	 public int insertStu(@Param("no") String no, @Param("password") String password);
	 public int findCno(@Param("no") String no);
	 public int findSno(@Param("no") String no);
	 
	 public int addBulletin(@Param("Bname") String Bname, @Param("memo") String memo, @Param("flag") String flag);
	 public int deleteBulletin(@Param("id") int id);
	 public List<Bulletin> getBulletins();
	
	
	
  
}
