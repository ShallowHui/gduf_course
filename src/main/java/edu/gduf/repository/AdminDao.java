package edu.gduf.repository;


import edu.gduf.model.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminDao {
    public int registerTeacher(@Param("no") String no, @Param("name") String name);
    public int registerStudent(@Param("no") String no, @Param("name") String name);
    public int insertTea(@Param("no") String no, @Param("password") String password);
    public int insertStu(@Param("no") String no, @Param("password") String password);
    public int findCno(@Param("no") String no);
    public int findSno(@Param("no") String no);
    
    public int addBulletin(@Param("BName") String BName, @Param("memo") String memo, @Param("flag") String flag);
    public List<Bulletin> getBulletins();
    public int deleteBulletin(@Param("id") int id);
}