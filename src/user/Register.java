package user;

import com.mysql.fabric.xmlrpc.base.Data;
import com.opensymphony.xwork2.ActionSupport;

import database.DataBaseCon;

public class Register extends ActionSupport{
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
		if (dataBaseCon.register(username, password)) {
			System.out.println("×¢²á³É¹¦£¡");
			
			return SUCCESS;
		}
		return "fail";
	}
}
