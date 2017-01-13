package Daos;

import java.util.ArrayList;

import modells.user;

public interface userdao {

	public ArrayList<user> getuserList(); 
	public user getuserbyId(int id);
	public boolean  speichereuser(user fr); 
	public void loescheuser(user fr);
	
	
}
