<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BESTFitness</title>
</head>
<body>
						   <form action="loginservlet" method="POST">
                            <div class="contact-form-loader"></div>
                            <fieldset>

                                <label for="txt_BenutzerID">Benutzer ID
                                <input type="text" class="form-control" name="txt_BenutzerID" /><br></label>
                            
                            	<label for="txt_PWD">Passwort
								<input type="password" class="form-control" name="txt_PWD" /> <br></label>
                           
                           		<div class="btn-wr">
                           			<input type="submit"  value="Login" /> <br> 
                          			
                                </div>
                            </fieldset>
                        </form>
                         <form  action="register" method="POST" ><input type="submit"  value="Registrieren" /> <br> </form>
</body>
</html>