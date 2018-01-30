package database;

import java.lang.Thread.State;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import encryption.Encryption;

public class DataBaseCon {
	//声明Connection对象
	Connection connection;
	
	//MySQL配置信息：url、用户名、密码
	private String url = "jdbc:mysql://localhost:3306/struts2_learn_database";
	private String sqlusername = "root";		
	private String sqlpassword = "CanxinYe0208";
	
	
	//获取一个Connection对象
	public Connection getConnection() {
		
		try {
			// 加载驱动程序
			Class.forName("com.mysql.jdbc.Driver");
			
			//建立一个连接
			connection = (Connection) DriverManager.getConnection(url, sqlusername, sqlpassword);
			
			if (!connection.isClosed()) {
				System.out.println("数据库连接成功！");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return connection;
	}
	
	public boolean login(String username,String password) {
//		String encryptionPassword = Ecryption.encryption(password);
		String sql = "select * from users where username='" + username + "' and password='" + password + "'";

		System.out.println(username + "," +password);
		
		connection = getConnection();
		try {
			//创建一个Statement对象，可以用来执行sql语句
			Statement statement = (Statement) connection.createStatement();
			
			//创建一个ResultSet对象，用来储存执行sql语句后的返回信息
			ResultSet resultSet = statement.executeQuery(sql);
			
			if (resultSet.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean register(String username,String password) {
		System.out.println("进入数据库注册环节！");
		
		String sql = "insert into users values('" + username + "','" + Encryption.encryption(password) + "')";
		
		System.out.println("sql语句是：" + sql);
		
		connection = getConnection();
		
		try {
			//创建一个Statement对象，可以用来执行sql语句
			Statement statement = (Statement) connection.createStatement();
			
			//创建一个ResultSet对象，用来储存执行sql语句后的返回信息
			int i = statement.executeUpdate(sql);
			
			System.out.println("statement.executeUpdate(sql)的结果：" + i);
			
			if (i > 0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
}
