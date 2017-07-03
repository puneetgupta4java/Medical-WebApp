<%-- 
    Document   : upload_img
    Created on : Jun 29, 2017, 4:03:48 PM
    Author     : puneet gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile image</title>
 <style type="text/css">
*{
	text-align: center;
}
</style>
    </head>
    <body>
        <h1>Upload your image</h1>
        <form method="post" action="UploadServlet"
        enctype="multipart/form-data">
        Select file to upload: <input type="file" name="file" size="60" /><br />
        <br /> <input type="submit" value="Upload" />
    </form>
    </body>
</html>
