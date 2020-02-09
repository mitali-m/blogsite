<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="header.jspf" %>

<h1>Welcome!!</h1><br/>		

<!-- See the controller and you will find the RequestMethod.POST in the annotation -->
<!-- /adminlogin is the uri which will be called by the browser and will submit the form data -->
<form name="admin_form" method="post" action="/adminlogin">
	User ID &nbsp;&nbsp;<input type="text" name="uid">
	Password &nbsp;&nbsp;<input type="text" name="pwd">
	<a href="#" id="login_button" onclick="admin_form.submit();">Log in</a>&nbsp;&nbsp; ${success}
</form>

<%@include file="footer.jspf" %>

