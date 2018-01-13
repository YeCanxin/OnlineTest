package user;

import com.opensymphony.xwork2.ActionSupport;

import database.DataBaseCon;

public class Login extends ActionSupport{
	
	private String username;
	private String password;
	
	
	
	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		DataBaseCon dataBaseCon = new DataBaseCon();
		if (dataBaseCon.login(username, password)) {
			System.out.println("验证成功！");
			
			return SUCCESS;
		}
		return "fail";
	}
}
