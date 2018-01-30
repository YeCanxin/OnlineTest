package action;


import java.util.Map;

import org.hibernate.Session;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import model.User;
import service.UserService;

public class UserAction extends ActionSupport{
	private User user;
	private UserService userService;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String login() {
		System.out.println("action : " + user.getUsername() + user.getPassword());
		if (userService.user_login(user)) {
			Map<String, Object> map = ActionContext.getContext().getSession();
			map.put("username", user.getUsername());
			return SUCCESS;
		}
		return "fail";
	}
	
	public String register() {
		return SUCCESS;
	}
}
