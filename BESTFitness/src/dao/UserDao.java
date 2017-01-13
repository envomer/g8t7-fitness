package dao;

import java.util.ArrayList;

import modells.User;

public interface UserDao {

	public ArrayList<User> getuserList(); 
	public User getuserbyId(int id);
	public boolean  speichereuser(User fr); 
	public void loescheuser(User fr);
	
	
}
