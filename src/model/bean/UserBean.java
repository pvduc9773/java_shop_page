package model.bean;

public class UserBean {
	private String	UserName;
	private String	Password;
	private boolean	Premission;
	
	public UserBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public UserBean(String userName, String password, boolean premission) {
		super();
		UserName = userName;
		Password = password;
		Premission = premission;
	}
	
	public String getUserName() {
		return UserName;
	}
	
	public void setUserName(String userName) {
		UserName = userName;
	}
	
	public String getPassword() {
		return Password;
	}
	
	public void setPassword(String password) {
		Password = password;
	}
	
	public boolean isPremission() {
		return Premission;
	}
	
	public void setPremission(boolean premission) {
		Premission = premission;
	}
}
