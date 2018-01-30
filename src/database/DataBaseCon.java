package database;

import java.lang.Thread.State;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import encryption.Encryption;

public class DataBaseCon {
	//����Connection����
	Connection connection;
	
	//MySQL������Ϣ��url���û���������
	private String url = "jdbc:mysql://localhost:3306/struts2_learn_database";
	private String sqlusername = "root";		
	private String sqlpassword = "CanxinYe0208";
	
	
	//��ȡһ��Connection����
	public Connection getConnection() {
		
		try {
			// ������������
			Class.forName("com.mysql.jdbc.Driver");
			
			//����һ������
			connection = (Connection) DriverManager.getConnection(url, sqlusername, sqlpassword);
			
			if (!connection.isClosed()) {
				System.out.println("���ݿ����ӳɹ���");
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
			//����һ��Statement���󣬿�������ִ��sql���
			Statement statement = (Statement) connection.createStatement();
			
			//����һ��ResultSet������������ִ��sql����ķ�����Ϣ
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
		System.out.println("�������ݿ�ע�ỷ�ڣ�");
		
		String sql = "insert into users values('" + username + "','" + Encryption.encryption(password) + "')";
		
		System.out.println("sql����ǣ�" + sql);
		
		connection = getConnection();
		
		try {
			//����һ��Statement���󣬿�������ִ��sql���
			Statement statement = (Statement) connection.createStatement();
			
			//����һ��ResultSet������������ִ��sql����ķ�����Ϣ
			int i = statement.executeUpdate(sql);
			
			System.out.println("statement.executeUpdate(sql)�Ľ����" + i);
			
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
