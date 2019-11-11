package model.bo;

import java.util.ArrayList;

import model.bean.BookBean;
import model.dao.BookDao;

public class BookBo {
	private BookDao bookDao = new BookDao();
	
	public ArrayList<BookBean> getBooks() throws Exception{
		return bookDao.getBooks();
	}
	
	public BookBean getBookByID(String id) throws Exception{
        ArrayList<BookBean> books = this.getBooks();
        BookBean resultBean = null;
        for (BookBean book : books) {
            if (book.getIDBook().equals(id)) {
                resultBean = book;
                break;
            }
        }
        return resultBean;
    }
}
