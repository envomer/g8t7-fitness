<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<title>Statistik</title>
</head>
<body>

<h2>Statistiks</h2>

<div class="row">
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
        <h3>Bestbewerteste Kurse</h3>
        
        <ul class="list-group">
        	<li class="list-group-item">Deepwork</li>
        	<li class="list-group-item">Functional Training</li>
        	<li class="list-group-item">RückenYoga</li>
        	<li class="list-group-item">Bodywork</li>
        	<li class="list-group-item">Kurzhanteltraining</li>
        </ul>

      </div>
    </div>
  </div>
  
    <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
        <h3>Meistbesuchte Kurse</h3>
        
        <ul class="list-group">
        	<li class="list-group-item">RückenYoga</li>
        	<li class="list-group-item">Deepwork</li>
        	<li class="list-group-item">Functional Training</li>
        	<li class="list-group-item">Bodywork</li>
        	<li class="list-group-item">Kurzhanteltraining</li>
        </ul>

      </div>
    </div>
  </div>
  
    <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <div class="caption">
        <h3>Meistbewertesten Trainer</h3>
        
        <table class="table">
        	<li class="list-group-item">Peter</li>
        	<li class="list-group-item">Mario</li>
        	<li class="list-group-item">Lisa</li>
        	<li class="list-group-item">Julia</li>
        	<li class="list-group-item">Paul</li>
        </table>

      </div>
    </div>
  </div>
  
</div>

  <div class="well well-sm">
  	<h4>Aktuelle Kurse</h4>
  	
  	<table>
  		<th class="col-md-4">RückenYoga</th>
  		<td class="col-md-4">21.11 bis 21.02.2016</td>
  		<td class="col-md-4">14:00-16:00</td>
  	</table>
  	<div class="progress">
  		<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
    		60%
    	</div>
    </div>
    
    <table>
    	<th class="col-md-4">Kurzhanteltraining</th>
  		<td class="col-md-4">01.12 bis 23.02.2016</td>
  		<td class="col-md-4">12:00-14:00</td>
  	</table>
  		
  	<div class="progress">
  		<div class="progress-bar" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%;">
    		20%
    	</div>
    </div>
  	
  </div>
  
  
<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading"><h4>Kursteilnehmer</h4></div>
  
  <div class="dropdown">
  <p class="col-md-4">Kurzhanteltraining</p>
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
  	Teilnehmer
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
   <!-- Table -->
  <table class="table">
    <tr>
    	<tr><th>Name</th></tr>
    	<tr><td>Maik Schneider</td></tr>
    	<tr><td>Christina H. Silva</td></tr>
    	<tr><td>Dennis M. English</td></tr>
    	<tr><td>Michelle T. King</td></tr>
    	<tr><td>Tanja Lehrer</td></tr>
    </tr>
    
    
  </table>
  </ul>
</div>

<div class="dropdown">
  <p class="col-md-4">Deepwork</p>
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
  	Teilnehmer
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
   <!-- Table -->
  <table class="table">
    <tr>
    	<tr><th>Name</th></tr>
    	<tr><td>Maik Schneider</td></tr>
    	<tr><td>Christina H. Silva</td></tr>
    	<tr><td>Dennis M. English</td></tr>
    	<tr><td>Michelle T. King</td></tr>
    	<tr><td>Tanja Lehrer</td></tr>
    </tr>
    
    
  </table>
  </ul>
</div>

<div class="dropdown">
  <p class="col-md-4">RückenYoga</p>
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
  	Teilnehmer
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
   <!-- Table -->
  <table class="table">
    <tr>
    	<tr><th>Name</th></tr>
    	<tr><td>Maik Schneider</td></tr>
    	<tr><td>Christina H. Silva</td></tr>
    	<tr><td>Dennis M. English</td></tr>
    	<tr><td>Michelle T. King</td></tr>
    	<tr><td>Tanja Lehrer</td></tr>
    </tr>
    
    
  </table>
  </ul>
</div>

 
</div>


<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>