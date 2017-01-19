package Daos;

import java.util.ArrayList;
import java.util.List;

import modells.user;

public interface userdao {

	public ArrayList<user> getuserList(); 
	public user getuserbyId(String id);
	public boolean speichereuser(user fr); 
	public void loescheuser(user fr);
	public List<user> getTrainerListe();


}
