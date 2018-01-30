package service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import dao.UserDao;
import encryption.Encryption;
import model.User;

@Transactional
public class UserService {
	private UserDao userDao;
	
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public boolean user_login(User user) {
		String username = user.getUsername();
		String password = Encryption.encryption(user.getPassword());
		System.out.println("service : " + username + password);
		String hql = "from User where username=:username and password=:password";
		
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("username", username);
        map.put("password", password);
        
		return userDao.findByHQL(hql, map).size() > 0;
	}
}