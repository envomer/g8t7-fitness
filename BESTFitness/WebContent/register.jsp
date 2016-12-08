<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="contact-form-loader"></div>
  <form action="registerback" method="POST" >
                            <fieldset>
                                <label for="txt_BenutzerID">Benutzer ID
                                <input type="text" class="form-control" name="txt_benutzerID" required="required"  /></label>

                                <label for="txt_BenutzerID">Nachname
                                <input type="text" class="form-control" name="txt_benutzerNachname" required="required"/></label>

                                <label for="txt_benutzerVorname">Vorname
                                <input type="text" class="form-control" name="txt_benutzerVorname" required="required"/></label>

                                <label for="txt_benutzerGeburtsdatum">Geburtsdatum
                                <input type="text" class="form-control" style="width:40px" name="txt_benutzerGeburtsdatum" value="YYYY" > - 
                                <input type="text" class="form-control" style="width:20px" name="txt_benutzerGeburtsdatum" value="MM" > - 
                                <input type="text" class="form-control" style="width:20px" name="txt_benutzerGeburtsdatum" value="DD" >
                                </label>
			
                                <label for="txt_adresse">Adresse
                                <input type="text" class="form-control" name="txt_adresse" required="required"/></label>
								
								<label for="txt_pwd">Passwort
								<input type="password" class="form-control" name="txt_pwd" /> <br></label>
                                <input type="submit"  value="Register" /> <br> 
                          </fieldset>
                          </form>
</body>
</html>