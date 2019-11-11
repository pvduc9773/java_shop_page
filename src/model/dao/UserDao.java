package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import controller.ConnectionDatabase;
import model.bean.BookBean;
import model.bean.UserBean;

public class UserDao {
	private ConnectionDatabase cnn = new ConnectionDatabase();
	
	public ArrayList<UserBean> getBooks() throws Exception {
		ArrayList<UserBean> users = new ArrayList<UserBean>();
		// Kết nối CSDL
		cnn.ConnectionDB();
		// Lấy CSDL
		String query = "SELECT * FROM User WHERE";
		PreparedStatement cmd = cnn.connection.prepareStatement(query);
		ResultSet rs = cmd.executeQuery();        

		while (rs.next()) {
			
		}		
		// Đóng CSDL
		cnn.connection.close();
		return users;
	}
}
