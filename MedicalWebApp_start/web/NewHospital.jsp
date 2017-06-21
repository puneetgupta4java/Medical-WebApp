<%-- 
    Document   : NewHospital
    Created on : Jun 17, 2017, 10:09:54 AM
    Author     : puneet gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Hospital</title>
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
    <div class="col-sm-offset-2"><h2>New Hospital</h2></div><br><br><br>
  <form class="form-horizontal" action="AddHospital" name="addhospital" method="post">
    <div class="form-group">
      <label class="col-sm-2 control-label">Enter Name</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Hospital Name" name="hospital_name" required="required">
      </div>
    </div>
        
    </div>
        <div class="form-group">
      <label class="col-sm-2 control-label">Enter Address</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Hospital Address" name="hospital_add" required="required">
      </div>
    </div>
        
     <div class="form-group">
      <label class="col-sm-2 control-label">Enter City</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter hospital City" name="hospital_city" required="required">
      </div>
    </div>
       
       <div class="form-group">
      <label class="col-sm-2 control-label">Enter Description</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Hospital Description" name="hospital_descr" required="required">
      </div>
    </div>
      <div class="form-group">
      <label class="col-sm-2 control-label">Enter Doctor id's</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Hospital Doctor id's" name="hospital_doc_id" required="required">
      </div>
    </div>
      <div class="form-group">
      <label class="col-sm-2 control-label">Enter image name</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Hospital image name" name="hospital_img" required="required">
      </div>
    </div>
    
       <div class="form-group">
      <label class="col-sm-2 control-label">Enter Email</label>
      <div class="col-sm-10">
          <input class="form-control" type="email" placeholder="Enter Hospital Email" name="hospital_email" required="required">
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
