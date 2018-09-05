<%@ page language="java"   pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta  charset='utf-8'>
<title>Insert title here</title>
</head>
<body>
	<%      Integer hitsCount =(Integer)application.getAttribute("hitCounter"); 
			if( hitsCount ==null || hitsCount == 0 ){
				/* 第一次访问 */        
				out.println("Welcome to my website!");
				hitsCount = 1;     
			}else{
				/* 返回访问值 */        
				out.println("Welcome back to my website!");        
				hitsCount += 1;     
			}     
			application.setAttribute("hitCounter", hitsCount);
	%>
<center>
<p>Total number of visits: <%= hitsCount%></p>
</center>

</body>
</html>