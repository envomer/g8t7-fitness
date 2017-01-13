package modells;

public class classlogin {

public	String benutzer = "";
public	String seiteoeffnen = "";
	String passworda = "trainer";
	String passwordb = "kunde";
	String passwordc = "leiter";
//	-------------------------------------- authentifizierung
	public boolean authentificate(String ben,String pass){
		
		
		
		
		
		if(pass.equals(passworda)){
			seiteoeffnen = "trainer.jsp";
			benutzer = ben;
			return true;
		}
		else  if(pass.equals(passwordb)){
			seiteoeffnen = "kunde.jsp";
			benutzer = ben;
			return true;
		}
		else    if(pass.equals(passwordc)){
			seiteoeffnen = "leiter.jsp";
			benutzer = ben;
	return true;
}
		return false;
	}
}
