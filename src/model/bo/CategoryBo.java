package model.bo;

import java.util.ArrayList;

import model.bean.CategoryBean;
import model.dao.CategoryDao;

public class CategoryBo {
	private CategoryDao categoryDao = new CategoryDao();
	
	public ArrayList<CategoryBean> getCategories() throws Exception{
		return categoryDao.getCategories();
	}
}
