package edu.gduf.repository;
import org.apache.ibatis.annotations.Param;

import edu.gduf.model.entity.*;

import java.util.List;

public interface LoginDao
{
	public Admin adminLogin(@Param("no") String a_no, @Param("password") String a_password);
	public Tea teacherLogin(@Param("no") String t_no, @Param("password") String t_password);
	public Stu studentLogin(@Param("no") String s_no, @Param("password") String s_password);
	public List<Bulletin> getBulletin(@Param("flag") String flag);//查看公告
}