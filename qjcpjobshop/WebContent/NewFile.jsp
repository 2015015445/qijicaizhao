<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.BufferedInputStream" %>  
<%@ page import="java.io.BufferedOutputStream" %>  
<%@ page import="java.io.FileInputStream" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body onunload="opener.reload();opener.focus();">
<%  
    String filePath = (String)session.getAttribute("resumsrc");  
    BufferedInputStream bis = null;  
    BufferedOutputStream bos = null;  
    response.setContentType("application/pdf");  
    try{  
        bis = new BufferedInputStream(new FileInputStream(filePath));  
        bos = new BufferedOutputStream(response.getOutputStream());  
        byte[] buff = new byte[2048];  
        int bytesRead;  
        while(-1 != (bytesRead = bis.read(buff,0,buff.length))){  
            bos.write(buff,0,bytesRead);  
        }   
    }catch(Exception e){  
        e.printStackTrace();  
    }finally{  
        if(bis != null)  
            bis.close();  
        if(bos != null)  
            bos.close();  
    }  
%>     
</body>
</html>