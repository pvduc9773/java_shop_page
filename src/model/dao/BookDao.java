package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import controller.ConnectionDatabase;
import model.bean.BookBean;

public class BookDao {
	private ConnectionDatabase cnn = new ConnectionDatabase();
	
	public ArrayList<BookBean> getBooks() throws Exception {
		ArrayList<BookBean> books = new ArrayList<BookBean>();
		// Kết nối CSDL
		cnn.ConnectionDB();
		// Lấy CSDL
		String query = "SELECT * FROM Book";
		PreparedStatement cmd = cnn.connection.prepareStatement(query);
		ResultSet rs = cmd.executeQuery();        

		while (rs.next()) {
			String iDBook = rs.getString("IDBook");
			String name = rs.getString("Name");
			int quantity = rs.getInt("Quantity");
			long price = rs.getLong("Price");
			String iDCategory = rs.getString("IDCategory");
			String image = rs.getString("Image");
			Date dateInput = rs.getDate("DateInput");
			String author = rs.getString("Author");
			books.add(new BookBean(iDBook, name, quantity, price, iDCategory, image, dateInput, author));
		}		
		// Đóng CSDL
		cnn.connection.close();
		return books;
	}
}
