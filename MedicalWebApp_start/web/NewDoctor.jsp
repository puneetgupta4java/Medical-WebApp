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
    <div class="col-sm-offset-2"><h2>New Doctor</h2></div><br><br><br>
  <form class="form-horizontal" action="AddDoctor" name="adddoctor" method="post">
    <div class="form-group">
      <label class="col-sm-2 control-label">Enter Name</label>
      <div class="col-sm-10">
          <input class="form-control" autofocus="" type="text" placeholder="Enter Doctor Name" name="Doctor_name" required="required">
      </div>
    </div>
        <div class="form-group">
      <label class="col-sm-2 control-label">Enter Qualifications</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Doctor Qualifications" name="Doctor_qual" required="required">
      </div>
    </div>
        <div class="form-group">
      <label class="col-sm-2 control-label">Enter Fees(INR)</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Doctor Fees(in rupees)" name="Doctor_fees" required="required">
      </div>
    </div>
        <div class="form-group">
      <label class="col-sm-2 control-label">Enter Address</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Doctor Address" name="Doctor_add" required="required">
      </div>
    </div>
        <div class="form-group">
      <label class="col-sm-2 control-label">Enter Experience</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Doctor Experience" name="Doctor_exp" required="required">
      </div>
    </div>
         <div class="form-group">
      <label class="col-sm-2 control-label">Enter Type</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Doctor type" name="Doctor_type" required="required">
      </div>
    </div>
     <div class="form-group">
      <label class="col-sm-2 control-label">Enter City</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Doctor City" name="Doctor_city" required="required">
      </div>
    </div>
       <div class="form-group">
      <label class="col-sm-2 control-label">Enter Phone number</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Doctor Phone no." name="Doctor_phn" required="required">
      </div>
    </div>
       <div class="form-group">
      <label class="col-sm-2 control-label">Enter Description</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Doctor Description" name="Doctor_descr" required="required">
      </div>
    </div>
      <div class="form-group">
      <label class="col-sm-2 control-label">Enter Short Description</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" placeholder="Enter Doctor short Description" name="Doctor_sh_descr" required="required">
      </div>
    </div>
      <div class="form-group">
      <label class="col-sm-2 control-label">Enter timings</label>
      <div class="col-sm-10">
          <input class="form-control" type="text" placeholder="HH:MM AM/PM - HH:MM AM/PM" name="Doctor_time" required="required">
      </div>
    </div>
       <div class="form-group">
      <label class="col-sm-2 control-label">Enter Email</label>
      <div class="col-sm-10">
          <input class="form-control" type="email" placeholder="Enter Doctor Email" name="Doctor_email" required="required">
      </div>
    </div>
      <div class="form-group">
      <label class="col-sm-2 control-label">Enter Image name</label>
      <div class="col-sm-10">
          <input class="form-control" type="text" placeholder="Enter Doctor image name" name="Doctor_img" required="required">
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
