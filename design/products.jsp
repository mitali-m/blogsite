<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
	<body>
		<a href="/">Index</a>
		<h1>Add products</h1>
		<br/>
		
		<!-- See the controller and you will find the RequestMethod.POST in the annotation -->
		<form:form method="POST" action="/saveProduct" modelAttribute="formProduct">
			Id&nbsp;&nbsp;<form:input path="id"/>
			Name&nbsp;&nbsp;<form:input path="productName"/>
			Description&nbsp;&nbsp;<form:input path="productDescription"/>
			Price&nbsp;&nbsp;<form:input path="productPrice"/>
			<input type="submit" value="Submit"/>&nbsp;&nbsp;
		</form:form>
		${status}
	</body>
</html>

