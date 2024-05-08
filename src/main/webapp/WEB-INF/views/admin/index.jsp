<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

${message}
	<form:form action="index.htm" modelAttribute="product">
	
		
		<div>
			 <label>name</label>
			 <form:input path="name"/>
		</div>
		
		<div>
			 <label>Img</label>
			 <form:input path="img"/>
		</div>
		<div>
			 <label>Price</label>
			 <form:input path="price"/>
		</div>
		<div>
			 <label>title</label>
			 <form:input path="title"/>
		</div>
		<div>
			 <label>Hightlight</label>
			 <form:input path="hightlight"/>
		</div>
		<div>
			 <label>Newproduct</label>
			 <form:input path="new_product"/>
		</div>
		<div>
			 <label>detail</label>
			 <form:input path="details"/>
		</div>

		
		
		 	<button class="btn btn-default">Insert</button>
	
	</form:form>


</body>
</html>