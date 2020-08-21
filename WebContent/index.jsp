<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href ="styles.css" rel = "stylesheet">
<title>FileUploadHandler</title>
</head>
<body>
<center>

<h1>Dateien Uploader</h1>
 <form action="FileUploadHandler" enctype="multipart/form-data" method="post">
 Gebe den Dateinamen ein <input type="text" name="file_name"><br>
 
 Select <input type="file" name="file2" /><br>
 
 Wähle den Speicherort <input type="file" id="fileUpload">
<script type="text/javascript">
function getFilePath(){
     $('input[type=file]').change(function () {
         var filePath=$('#fileUpload').val(); 
     });
}
</script>


 
 <input type="submit" value="upload" />
 
 <%
 String file_name=(String)request.getParameter("filename");
 if(file_name!=null){
 out.println(file_name+" File uploaded successfuly");
 }
 %>

</center>
</body>
</html>