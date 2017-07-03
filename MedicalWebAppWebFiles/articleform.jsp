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
   
}
</style>
    </head>
<body>

<div class="container">
    <div class="col-sm-offset-2"><h2>ADD NEW ARTICLE</h2></div><div class="col-md-12 text-right"><a href="index.jsp" class="btn btn-primary text-right">Home</a></div><br><br><br>
  <form class="form-horizontal" action="articleformservlet" name="addnewarticle" method="post">
    <div class="form-group">
      <label class="col-sm-2 control-label">Enter Title</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Title" name="title" required="required">
      </div>
    </div>
       
       
        <div class="form-group">
      <label class="col-sm-2 control-label">Enter Doctor_name</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Doctor_name" name="name" required="required">
      </div>
    </div>
         <div class="form-group">
      <label class="col-sm-2 control-label">Enter Type</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Type" name="type" required="required">
      </div>
    </div>
     <div class="form-group">
      <label class="col-sm-2 control-label">Enter Date</label>
      <div class="col-sm-10">
        <input class="form-control" type="Date" placeholder="yyyy-mm-dd" name="date" required="required">
      </div>
    </div>
     <div class="form-group">
      <label class="col-sm-2 control-label">Enter Short Description</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Description" name="descr" required="required">
      </div>
    </div>
        <div class="form-group">
      <label class="col-sm-2 control-label">Enter Detailed Description</label>
      <div class="col-sm-10">
	<textarea rows="5" class="form-control" name="full_descr" placeholder=" Enter Detailed Description"></textarea>
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
