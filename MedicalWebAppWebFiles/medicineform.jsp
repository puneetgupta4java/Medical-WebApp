<%-- 
    Document   : NewDoctor
    Created on : Jun 16, 2017, 10:43:49 PM
    Author     : puneet gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
  <title>Add Doctor</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <style>
body {
    font-family: "Lato", sans-serif;
    background: #1E547F;
    color: #fff;
}
</style>
    </head>
<body>

<div class="container">
    <div class="col-sm-offset-2"><h2>Add Medicine</h2></div><br><br><br>
  <form class="form-horizontal" action="medicineformservlet" name="addnewarticle" method="post">
    <div class="form-group">
      <label class="col-sm-2 control-label">Medicine name</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Medicine name" name="med_name" required="required">
      </div>
    </div>
        <div class="form-group">
      <label class="col-sm-2 control-label"> Description</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder=" Medicione Description" name="Desc" required="required">
      </div>
    </div>
       
        <div class="form-group">
      <label class="col-sm-2 control-label">Side Effects</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Side Effects" name="side_effects" required="required">
      </div>
    </div>
         <div class="form-group">
      <label class="col-sm-2 control-label">Medicine Dosage</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Dosage" name="dosage" required="required">
      </div>
    </div>
     <div class="form-group">
      <label class="col-sm-2 control-label">Avoidance of Medicine</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="When not to use" name="not_use" required="required">
      </div>
    </div>
     <div class="form-group">
      <label class="col-sm-2 control-label">Enter Disclaimer</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Disclaimer" name="dis" required="required">
      </div>
    </div>
     
      
       
       <div class="form-group">
      <div class="col-sm-1 col-sm-offset-2">
        <button type="reset" class="btn btn-default">Reset</button>
      </div>
           <div class="col-sm-2">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
    </form>
    </div>
    
    </body>

</html>
