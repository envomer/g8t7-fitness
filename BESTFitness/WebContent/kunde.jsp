<%@ page import="modells.user" %>
<%@ page import="modells.Kurs" %>
<%@ page import="Daos.KursManagement" %>
<%@ page import="java.util.ArrayList" %>
<jsp:include page="partials/header.jsp" />
<table width='100%' id="table1" border="2" class="table">
<tr>
<th>Kurs nr</th>
<th>Tag </th>
<th>Uhrzeit </th>
<th>Trainer </th>
<th>Anmeldung </th>
</tr>
    <%
        KursManagement km = new KursManagement("kurs.txt");
        ArrayList<Kurs> kurse = (ArrayList<Kurs>) km.getKursList();

        for (int i = 0; i < kurse.size(); i++) {
            Kurs kur = kurse.get(i);
            String uhrzeit = kur.getKursUhrVon();
            uhrzeit += " - ";
            uhrzeit += kur.getKursUhrBis();
    %>

    <tr>
        <td align="right"> <%= kur.getKursName() %> </td>
        <td align="right"> <%= kur.getKursDatum() %> </td>
        <td align="right"> <%= uhrzeit %> </td>
        <td align="right"> <%= kur.getKursTrainer() %> </td>
        <td align="right">
            <form method="post" action="/kurse" class="kurs-signup">
                <input type="hidden" name="anmelden" value="true">
                <input type="hidden" name="kurs" value="<%=kur.getKursID()%>">
                <input type=submit value="Anmelden">
            </form>
        </td>
    </tr>
    <%
        }
    %>
<tr>
<td align="right">Kurs 1</td>
<td align="right">SONTAG 12/10/2016 </td>
<td align="right">12:00-13:00</td>
<td align="right">Yunus</td>
<td align="right"><input type=submit value="Anmelden" style="width:100%"></td>
</tr>
<tr>
<td align="right">Kurs 2</td>
<td align="right">MONTAG 13/10/2016 </td>
<td align="right">15:00-16:00</td>
<td align="right">Gerhard</td>
<td align="right"><input type=submit value="Anmelden" onclick="myFunctionA()" style="width: 100%" ></td>
</tr>
</table>
</p>

<p align='center'>
<table class="table" width='100%' border="2"  id="table2" style="visibility:hidden;display:none;">
<tr>
<th>Kurs nr</th>
<th>Tag </th>
<th>Uhrzeit </th>
<th>Trainer </th>
<th>Anmeldung </th>
</tr>
<tr>
<td align="right">Kurs 1</td>
<td align="right">SONTAG 12/10/2016 </td>
<td align="right">12:00-13:00</td>
<td align="right">Yunus</td>
<td align="right"><input type=submit value="Anmelden" style="width:100%"></td>
</tr>
<tr>
<td align="right">Kurs 2</td>
<td align="right">MONTAG 13/10/2016 </td>
<td align="right">15:00-16:00</td>
<td align="right">Gerhard</td>
<td align="right"><input type=submit value="Abmelden" onclick="myFunctionB()" style="width: 100%" ></td>
</tr>
</table>
</p>
Suche: <input type="text" placeholder="Kurse Suchen"> <input type=submit value="Suchen" onclick="myFunctionC()" >
<p align='center'>
<table width='100%' border="2"  id="table3" style="visibility:hidden; display:none;">
<tr>
<th>Kurs nr</th>
<th>Tag </th>
<th>Uhrzeit </th>
<th>Trainer </th>

</tr>

<tr>
<td align="right">Kurs 2</td>
<td align="right">MONTAG 13/10/2016 </td>
<td align="right">15:00-16:00</td>
<td align="right">Gerhard</td>
</tr>
</table>
</p>


<script>
    // Native
    // Check if the DOMContentLoaded has already been completed
    if (document.readyState === 'complete' || document.readyState !== 'loading') {
        onReady();
    } else {
        document.addEventListener('DOMContentLoaded', onReady);
    }

    function onReady() {
        var signup = document.getElementsByClassName('kurs-signup');

        for(var i in signup) {
            if( ! signup[i] ) continue;
            signup[i].addEventListener('submit', function(e) {
                e.preventDefault();

                alert("Sie sind nun angemeldet.");
                e.target.style.display = 'none';
            })
        }
    }

function myFunctionA() {
     var x = document.getElementById('table1');
    var xx = document.getElementById('table2');
    var a = document.getElementById('anmelden');
    var aa = document.getElementById('abmelden');
  
         x.style.display = 'none';
         xx.style.display = 'table';
        xx.style.visibility = 'visible';
        aa.style.display = 'none';
        a.style.display = 'table';
        a.style.visibility = 'visible';

}
</script>
<script type="text/javascript">
function myFunctionB() {
    var x = document.getElementById('table1');
   var xx = document.getElementById('table2');
   var a = document.getElementById('anmelden');
   var aa = document.getElementById('abmelden');

        
        
        xx.style.display = 'none';
        x.style.display = 'table';
       x.style.visibility = 'visible';
       a.style.display = 'none';
       aa.style.display = 'table';
       aa.style.visibility = 'visible';
       

}

</script>

<script type="text/javascript">
function myFunctionC() {
    var x = document.getElementById('table3');


        
        
     
        x.style.display = 'table';
       x.style.visibility = 'visible';
       
       

}

</script>
<jsp:include page="partials/footer.jsp" />

