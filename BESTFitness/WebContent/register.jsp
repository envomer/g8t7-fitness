<jsp:include page="partials/header.jsp" />
 <h3> Benutzer Registrierung:</h3>
 
  <form action="register" method="POST" >

                                <%String benid = (String)request.getAttribute("erfolg"); 
                                if(benid!=null){
                                	out.println("Benutzer mit id: "+benid +" wurde Erfolgreich registriert.");
                                }  %>
 
                         
             <table id="erstellenB"    cellspacing="2" cellpadding="2">
  <tbody>
    <tr>
      <td align="right">Benutzer ID</td>
      <td>
        <input maxlength="50" name="id" size="45"  type="number" />
      </td>
    </tr>
  
    <tr>
      <td align="right">Nachname:</td>
      <td>
        <input maxlength="50" name="nachname" size="45"   type="text" />
      </td>
    </tr>
    <tr>
      <td align="right">Vorname:</td>
      <td>
        <input maxlength="50" name="vorname" size="45"  type="text" />
      </td>
    </tr>
    <tr>
      <td align="right">Typ:</td>
      <td>
      <select name="typ" align="right" style="zoom:1.5">
       <option value="kunde.jsp">Kunde</option>
       <option value="trainer.jsp">Trainer</option>
       <option value="leiter.jsp">Leiter</option>
        <select>
      </td>
    </tr>
    <tr>
    <td align="right">Adresse:</td>
    <td>
      <input maxlength="50" name="addresse" size="45"   type="text" />
    </td>
    </tr>
      <tr>
    <td align="right">Kennwort:</td>
    <td>
      <input maxlength="50" name="pass" size="45"   type="password" />
    </td>
    </tr>
    <tr>
      <td></td>
      <td>
        <input type="submit" value="Register"  name="action"  style="zoom:1.5"/>
         <input type="submit"  value="Zurück"   name="action"  style="zoom:1.5"/> 
        </form>
  
      </td>
    </tr>
  </tbody>
</table>            
             <%String ant = (String)request.getAttribute("geloeschteid"); if(ant!=null)out.println(ant); %>            
  <h5> Id  <input maxlength="50" name="idloesch" size="10"   type="text" />                          
                        <input type="submit"  value="Loeschen"   name="action"  style="zoom:1.5"/>  
                         
                         
<jsp:include page="partials/footer.jsp" />