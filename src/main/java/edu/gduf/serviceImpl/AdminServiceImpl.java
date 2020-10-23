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

 //***
	@Override
	public int registerTeacher(String no, String name) {
	
		return adminDao.registerTeacher(no, name);
	}


	@Override
	public int registerStudent(String no, String name) {
		// TODO Auto-generated method stub
		return adminDao.registerStudent(no, name);
	}


	@Override
	public int insertTea(String no, String password) {
		// TODO Auto-generated method stub
		return adminDao.insertTea(no, password);
	}


	@Override
	public int insertStu(String no, String password) {
		// TODO Auto-generated method stub
		return adminDao.insertStu(no, password);
	}


	@Override
	public int findCno(String no) {
		// TODO Auto-generated method stub
		return adminDao.findCno(no);
	}


	@Override
	public int findSno(String no) {
		// TODO Auto-generated method stub
		return adminDao.findSno(no);
	}


	@Override
	public int addBulletin(String Bname, String memo,String flag) {
		// TODO Auto-generated method stub
		return adminDao.addBulletin(Bname,memo,flag);
	}


	@Override
	public int deleteBulletin(int id) {
		// TODO Auto-generated method stub
		return adminDao.deleteBulletin(id);
	}


	@Override
	public List<Bulletin> getBulletins() {
		// TODO Auto-generated method stub
		return adminDao.getBulletins();
	}
}
