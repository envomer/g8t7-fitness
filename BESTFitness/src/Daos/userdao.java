package Daos;

import java.util.ArrayList;

import modells.user;

public interface userdao {

	public ArrayList<user> getuserList(); // Arrayin imzasi <Fahrzeug>
	public user getuserbyId(int id);
	public boolean  speichereuser(user fr);  // bura bool olabilirdi ve dogru speichern yapip yapmadigini kontroll edebilirdik
	public void loescheuser(user fr);
	
	
}
