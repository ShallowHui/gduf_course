package edu.gduf.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import edu.gduf.model.entity.Admin;
import edu.gduf.model.entity.Stu;
import edu.gduf.model.entity.Tea;
import edu.gduf.repository.LoginDao;
import edu.gduf.service.LoginService;

import java.util.List;

@Service
public class LoginServiceImpl implements LoginService
{
	@Autowired
	private  LoginDao loginDao;

	public Admin adminLogin(String a_no, String a_password) {
		// TODO Auto-generated method stub
		return loginDao.adminLogin(a_no, a_password);
	}


	public Tea teacherLogin(String t_no, String t_password) {
		// TODO Auto-generated method stub
		return loginDao.teacherLogin(t_no, t_password);
	}


	public Stu studentLogin(String s_no, String s_password) {
		// TODO Auto-generated method stub
		return loginDao.studentLogin(s_no, s_password);
	}

	@Override
	public List<String> getBulletin(String flag) {
		// TODO Auto-generated method stub
		return loginDao.getBulletin(flag);
	}
}
